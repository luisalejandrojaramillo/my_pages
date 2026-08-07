# Static Pages

Colección de aplicaciones web estáticas publicadas con GitHub Pages. Cada una vive en su propia carpeta y funciona en un único archivo HTML autocontenido, sin frameworks, sin build y sin dependencias externas.

## Publicadas

### Lista de mercado
`market/market_list.html`

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

## Cómo funciona esto

Los archivos se sirven directamente desde la rama `main` en la raíz del repo. No hay proceso de build, así que basta con hacer commit del HTML para que quede publicado en un par de minutos.

Convenciones que sigo acá:

- Una carpeta por aplicación
- El archivo principal se llama `index.html` para que la URL quede limpia
- Rutas de assets siempre relativas, porque la raíz del sitio es `/<repo>/` y no `/`
- Todo en un solo archivo mientras el proyecto lo permita

## Agregar una página nueva

1. Crear la carpeta con el `index.html` adentro
2. Hacer commit a `main`
3. Enlazarla desde el índice de la raíz y desde este README

## Autor

Luis Alejandro Jaramillo

[GitHub](https://github.com/luisalejandrojaramillo) · [LinkedIn](https://linkedin.com/in/luis-alejandro-jaramillo-rincon)
