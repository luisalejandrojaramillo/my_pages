#!/usr/bin/env bash
# ---------------------------------------------------------------------------
# Tinta · genera el index.html publicable a partir de source.html
#
# source.html carga pdf.js y pdf-lib desde ./_libs/ para poder editarlo cómodo.
# Este script descarga esas librerías y las mete dentro del HTML, para que el
# archivo publicado no dependa de nada externo y funcione sin internet.
#
#   ./inline.sh
#
# Sale un index.html de ~2 MB. Eso es lo que se sube al repo; _libs/ no.
# ---------------------------------------------------------------------------
set -euo pipefail
cd "$(dirname "$0")"

PDFJS_VER="3.11.174"
PDFLIB_VER="1.17.1"

mkdir -p _libs
fetch () {  # url destino
  [ -s "$2" ] && { echo "  · $2 ya está"; return; }
  echo "  ↓ $2"
  curl -sSfL -o "$2" "$1"
}

echo "Librerías:"
fetch "https://cdnjs.cloudflare.com/ajax/libs/pdf.js/${PDFJS_VER}/pdf.min.js"        _libs/pdf.min.js
fetch "https://cdnjs.cloudflare.com/ajax/libs/pdf.js/${PDFJS_VER}/pdf.worker.min.js" _libs/pdf.worker.min.js
fetch "https://unpkg.com/pdf-lib@${PDFLIB_VER}/dist/pdf-lib.min.js"                  _libs/pdf-lib.min.js

# Ninguna de las tres contiene "</script" ni "<!--", así que entran tal cual
# dentro de un <script>. Si algún día cambian de versión, esto lo verifica.
for f in _libs/pdf.min.js _libs/pdf.worker.min.js _libs/pdf-lib.min.js; do
  if grep -qi '</script\|<!--' "$f"; then
    echo "ABORTA: $f contiene una secuencia que rompe el <script> que lo envuelve." >&2
    exit 1
  fi
done

echo "Inlineando…"
python3 - <<'PY'
import io, re, pathlib

src  = pathlib.Path('source.html').read_text(encoding='utf-8')
libs = {
    './_libs/pdf.min.js':        pathlib.Path('_libs/pdf.min.js').read_text(encoding='utf-8'),
    './_libs/pdf-lib.min.js':    pathlib.Path('_libs/pdf-lib.min.js').read_text(encoding='utf-8'),
    './_libs/pdf.worker.min.js': pathlib.Path('_libs/pdf.worker.min.js').read_text(encoding='utf-8'),
}

def sub(pattern, repl):
    global src
    src, n = re.subn(pattern, lambda m: repl, src, count=1)
    if n != 1:
        raise SystemExit('No encontré en source.html: ' + pattern)

sub(r'<script src="\./_libs/pdf\.min\.js"></script>',
    '<script>\n' + libs['./_libs/pdf.min.js'] + '\n</script>')
sub(r'<script src="\./_libs/pdf-lib\.min\.js"></script>',
    '<script>\n' + libs['./_libs/pdf-lib.min.js'] + '\n</script>')
sub(r'<script id="pdfWorkerSrc" type="text/plain" src="\./_libs/pdf\.worker\.min\.js"></script>',
    '<script id="pdfWorkerSrc" type="text/plain">\n' + libs['./_libs/pdf.worker.min.js'] + '\n</script>')

pathlib.Path('index.html').write_text(src, encoding='utf-8')
print('  index.html · %.1f MB' % (len(src.encode('utf-8')) / 1048576))
PY

echo "Listo. Se publica index.html; _libs/ y source.html se quedan en el repo como fuente."
