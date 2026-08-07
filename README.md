# Static Pages

Colección de aplicaciones web estáticas publicadas con GitHub Pages. Cada una vive en su propia carpeta y funciona en un único archivo HTML autocontenido, sin frameworks, sin build y sin dependencias externas.

El sitio queda en **https://luisalejandrojaramillo.github.io/my_pages/**

## Publicadas

### Lista de mercado
`market/market_list.html`

https://luisalejandrojaramillo.github.io/my_pages/market/market_list.html

Aplicación de lista de compras pensada principalmente para uso móvil.

- Productos organizados por categorías, con progreso global y por categoría
- Marcar comprados, agregar y eliminar productos
- Crear, editar, reordenar y borrar categorías
- Importar y exportar listas en texto plano
- Copiar o compartir lo pendiente
- Deshacer cualquier acción destructiva
- Estado persistido en `localStorage`
- Modo noche manual o automático
- Lista inicial escrita como HTML estático, visible incluso sin JavaScript
- Diseño responsive en teléfono y escritorio

### Recetas
`recetas/index.html`

https://luisalejandrojaramillo.github.io/my_pages/recetas/

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

| Receta | Archivo | URL |
| --- | --- | --- |
| Chimichurri | `recetas/chimichurri.html` | https://luisalejandrojaramillo.github.io/my_pages/recetas/chimichurri.html |

## Cómo funciona esto

Los archivos se sirven directamente desde la rama `main` en la raíz del repo. No hay proceso de build, así que basta con hacer commit del HTML para que quede publicado en un par de minutos.

Convenciones que sigo acá:

- Una carpeta por aplicación
- El archivo principal se llama `index.html` para que la URL quede limpia
- Cada página queda en `https://luisalejandrojaramillo.github.io/my_pages/<carpeta>/`
- Rutas de assets siempre relativas, porque la raíz del sitio es `/<repo>/` y no `/`
- Todo en un solo archivo mientras el proyecto lo permita

## Agregar una página nueva

1. Crear la carpeta con el `index.html` adentro
2. Hacer commit a `main`
3. Enlazarla desde el índice de la raíz y desde este README, con su URL pública

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

Luis Alejandro Jaramillo

[GitHub](https://github.com/luisalejandrojaramillo) · [LinkedIn](https://linkedin.com/in/luis-alejandro-jaramillo-rincon)
