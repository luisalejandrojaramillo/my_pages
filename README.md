# Static Pages

[![Ver el sitio](https://img.shields.io/badge/Ver_el_sitio-luisalejandrojaramillo.github.io-0F8A5B?style=for-the-badge&logo=githubpages&logoColor=white)](https://luisalejandrojaramillo.github.io/my_pages/)
[![Sin build](https://img.shields.io/badge/Sin_build-HTML_en_un_solo_archivo-E34F26?style=for-the-badge&logo=html5&logoColor=white)](#cómo-funciona-esto)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Luis_Alejandro_Jaramillo-0A66C2?style=for-the-badge)](https://linkedin.com/in/luis-alejandro-jaramillo-rincon)

Colección de aplicaciones web estáticas publicadas con GitHub Pages. Cada una vive en su propia carpeta y funciona en un único archivo HTML autocontenido, sin frameworks, sin build y sin dependencias externas.

## Los proyectos

| | Proyecto | Qué hace | Carpeta | |
| --- | --- | --- | --- | --- |
| 🖋 | **[Tinta](#-tinta)** | Llena formularios en PDF, firma y pon tu huella sin subir el archivo a ningún lado | `archivos/tinta/` | [![Abrir](https://img.shields.io/badge/Abrir-2348CE?style=flat-square&logo=googlechrome&logoColor=white)](https://luisalejandrojaramillo.github.io/my_pages/archivos/tinta/) |
| 🛒 | **[Lista de mercado](#-lista-de-mercado)** | Lista de compras por categorías, con progreso y modo noche | `market/` | [![Abrir](https://img.shields.io/badge/Abrir-0F8A5B?style=flat-square&logo=googlechrome&logoColor=white)](https://luisalejandrojaramillo.github.io/my_pages/market/market_list.html) |
| 🍳 | **[Recetas](#-recetas)** | Recetas de la casa con paso a paso, temporizadores y avance guardado | `recetas/` | [![Abrir](https://img.shields.io/badge/Abrir-5A9B2E?style=flat-square&logo=googlechrome&logoColor=white)](https://luisalejandrojaramillo.github.io/my_pages/recetas/) |

### Categorías

Las aplicaciones que comparten tema viven bajo una carpeta que las agrupa. Las que llegaron
antes de que existieran las categorías se quedaron en la raíz para no romper sus enlaces.

| Categoría | Carpeta | Qué va adentro |
| --- | --- | --- |
| Utilidades para archivos | `archivos/` | Herramientas que abren, editan o convierten archivos del usuario. Hoy: Tinta |
| Sin categoría | raíz | `market/` y `recetas/`, publicadas antes de agrupar por tema |

## Publicadas

### 🛒 Lista de mercado

[![Abrir la lista de mercado](https://img.shields.io/badge/Abrir-Lista_de_mercado-0F8A5B?style=for-the-badge&logo=googlekeep&logoColor=white)](https://luisalejandrojaramillo.github.io/my_pages/market/market_list.html)

`market/market_list.html`

Aplicación de lista de compras pensada principalmente para uso móvil.

- Arranca en una pantalla para armar la lista: pegar una, crear categorías o cargar el ejemplo
- Productos organizados por categorías, con progreso global y por categoría
- Marcar comprados, agregar y eliminar productos
- Crear, editar, reordenar y borrar categorías
- Importar y exportar listas en texto plano
- Botón que copia el formato listo para pedirle la lista a un LLM
- Copiar o compartir lo pendiente
- Empezar una lista nueva desde cero, o deshacer cualquier acción destructiva
- Estado persistido en `localStorage`
- Modo noche manual o automático
- Lista de ejemplo escrita como HTML estático, que se ve tal cual sin JavaScript
- Diseño responsive en teléfono y escritorio

### 🖋 Tinta

[![Abrir Tinta](https://img.shields.io/badge/Abrir-Tinta-2348CE?style=for-the-badge&logo=adobeacrobatreader&logoColor=white)](https://luisalejandrojaramillo.github.io/my_pages/archivos/tinta/)

`archivos/tinta/index.html`

Editor de PDFs para diligenciar formularios. El archivo nunca sale del equipo: no hay servidor, todo el procesamiento ocurre dentro de la pestaña y funciona sin internet.

- Cargar el PDF arrastrándolo o desde el selector, con varias páginas y navegación continua
- Escribir sobre la página con tamaño, color, negrita, tres fuentes y edición en línea
- Enganche automático al renglón: el texto se pega solo a las rayas y a los puntos suspensivos del formulario
- Firma dibujada a mano alzada, con grosor variable según la velocidad, recortada al trazo y con fondo transparente; o subida como foto de una firma en papel
- Huella digital desde la foto o el escaneo, con quitador de fondo por umbral para que no tape el formulario
- Sellos, logos y fotos en PNG, JPG o WebP
- Mover, redimensionar manteniendo proporción, girar para cuadrar escaneos torcidos y eliminar
- «Mis datos»: nombre, documento, ciudad y demás guardados para no reescribirlos en cada campo
- Detecta formularios con campos rellenables reales y los llena como campos nativos, aplanándolos al descargar
- Deshacer y rehacer de verdad, con pila de comandos: el tecleo se agrupa por ráfaga y un arrastre entero es una sola acción
- Zoom, ajuste al ancho, tamaño real y pellizco en móvil
- Coordenadas exactas con `/Rotate` en 0, 90, 180 y 270 y con `CropBox` desplazado
- Modo noche manual o automático; el papel siempre se ve blanco
- Mensajes de error que dicen qué pasó y cómo resolverlo, incluidos PDFs dañados y protegidos con contraseña
- Diseño responsive, foco visible por teclado y `prefers-reduced-motion` respetado

### 🍳 Recetas

[![Abrir el índice de recetas](https://img.shields.io/badge/Abrir-Recetas-5A9B2E?style=for-the-badge&logo=bookstack&logoColor=white)](https://luisalejandrojaramillo.github.io/my_pages/recetas/)

`recetas/index.html`

Índice de recetas de la casa. Cada receta vive en su propio archivo dentro de la misma carpeta.

- Paso a paso que se va marcando mientras cocinas, con el paso actual resaltado y en letra más grande
- Marcar un paso da por hechos los anteriores; desmarcarlo suelta los siguientes
- Los pasos hechos se pliegan para dejar a la vista lo que falta
- Cantidades repetidas dentro de cada paso, para no devolverse a la lista
- Temporizadores por paso, con aviso sonoro y vibración al vencerse
- Ingredientes como lista de chequeo, con marcar y desmarcar todos de un tirón
- Secciones plegables; los ingredientes se guardan solos al quedar completos
- Progreso global en la cabecera y avance visible desde el índice
- Reiniciar el avance, con opción de deshacer
- Mantener la pantalla encendida mientras cocinas, donde el navegador lo permita
- Copiar o compartir la receta en texto plano
- Avance persistido en `localStorage`, uno por receta
- Contenido escrito como HTML estático, visible incluso sin JavaScript
- Modo noche compartido entre el índice y las recetas

Recetas publicadas:

| Receta | Archivo | Abrir |
| --- | --- | --- |
| 🌿 Chimichurri | `recetas/chimichurri.html` | [![Abrir el chimichurri](https://img.shields.io/badge/Abrir-5A9B2E?style=flat-square&logo=googlechrome&logoColor=white)](https://luisalejandrojaramillo.github.io/my_pages/recetas/chimichurri.html) |

## Cómo funciona esto

Los archivos se sirven directamente desde la rama `main` en la raíz del repo. No hay proceso de build, así que basta con hacer commit del HTML para que quede publicado en un par de minutos.

Convenciones que sigo acá:

- Una carpeta por aplicación
- El archivo principal se llama `index.html` para que la URL quede limpia
- Cada página queda en `https://luisalejandrojaramillo.github.io/my_pages/<carpeta>/`
- Rutas de assets siempre relativas, porque la raíz del sitio es `/<repo>/` y no `/`
- Todo en un solo archivo mientras el proyecto lo permita

### El caso de Tinta

Tinta necesita [pdf.js](https://mozilla.github.io/pdf.js/) para dibujar las páginas y
[pdf-lib](https://pdf-lib.js.org/) para escribir sobre el PDF original sin rasterizarlo. Para que
el archivo publicado siga sin dependencias externas, esas dos librerías van pegadas dentro del
HTML. Por eso la carpeta tiene tres archivos en vez de uno:

| Archivo | ¿Se publica? | Qué es |
| --- | --- | --- |
| `archivos/tinta/index.html` | **sí, es la app** | 2 MB, autocontenido, funciona sin internet |
| `archivos/tinta/source.html` | no, es la fuente | lo que se edita, con las librerías por `<script src>` |
| `archivos/tinta/inline.sh` | no, es la herramienta | baja las librerías y genera `index.html` a partir de `source.html` |

Los tres van al repo. Para que el sitio funcione basta con `index.html`, pero sin `source.html`
ni `inline.sh` el proyecto quedaría imposible de mantener: habría que editar a mano un archivo de
2 MB con dos librerías minificadas adentro.

Para tocar Tinta se edita `source.html` y se corre:

```
cd archivos/tinta && ./inline.sh
```

Sigue sin haber build para publicar: `index.html` está commiteado, así que basta con hacer push.
El script solo se corre cuando se cambia el código o se sube de versión una librería.

## Agregar una página nueva

1. Elegir dónde va: si encaja en una categoría existente, dentro de esa carpeta; si no, en la raíz
2. Crear la carpeta con el `index.html` adentro
3. Hacer commit a `main`
4. Sumarla a la tabla **Los proyectos** de este README y darle su sección con la URL pública

Una categoría nueva se crea cuando haya una segunda aplicación que la comparta. Con una sola
aplicación adentro, la carpeta de categoría solo alarga la URL.

## Agregar una receta nueva

1. Copiar `recetas/chimichurri.html` y cambiarle ingredientes, pasos y el `--accent-base`
2. Cambiarle la clave de guardado (`KEY`) para que no pise el avance de otra receta
3. Poner temporizador donde haga falta: un `<button class="timer" data-min="12" data-label="12 min">` dentro del `.step-tools` del paso
4. Agregar la tarjeta en `recetas/index.html` con su `data-key` y su `data-steps`
5. Sumarla a la tabla de recetas de este README

El avance guardado se descarta solo cuando cambia el número de ingredientes o de pasos, así que
editar una receta publicada no deja a nadie con un progreso que ya no cuadra.

## Ver el sitio en local

```
python3 -m http.server 8765
```

Y abrir `http://localhost:8765/recetas/`. Sirve con `file://` también, pero desde `http://`
funcionan igual que en producción el portapapeles y el `localStorage` compartido entre páginas.

## Autor

**Luis Alejandro Jaramillo**

[![GitHub](https://img.shields.io/badge/GitHub-luisalejandrojaramillo-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/luisalejandrojaramillo)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Luis_Alejandro_Jaramillo-0A66C2?style=for-the-badge)](https://linkedin.com/in/luis-alejandro-jaramillo-rincon)

El copyright al pie de cada página enlaza a este mismo perfil de LinkedIn.
