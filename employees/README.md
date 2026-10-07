# Employees & Relax Space

Página de KimKlo con las **fichas de empleados** de Kim, Klóe y Mimí (la gatita negra que nació durante la construcción de la casa y hoy es la mayor del barrio) («We Work for Food (or Tricks)») y el **Relax Space** con juegos, cada uno con su ficha.

## Contenido

- `index.html`: la página completa en un solo archivo, sin dependencias.
- `fichas-empleados.pdf`: las 3 fichas de empleado listas para imprimir.
- `fotos/`: pon aquí `kim.jpg`, `kloe.jpg` y `mimi.jpg`. Mientras no estén, se muestra un emoji.

Mimo («El Hualu»), el antiguo jefe del barrio antes de que llegaran Kim y Klóe, aparece solo como parte de la historia en la cabecera.

## Partes semanales y empleado de la semana

Arriba de la página salen el **Empleado de la semana** y los **partes de la oficina** (incidencias, asistencia, calidad…).

Cada semana, añade un bloque nuevo **al principio** de la lista `WEEKS` en `index.html` con:
- `week`: las fechas.
- `winner`: `kim`, `kloe` o `mimi`.
- `why` y `prize`: el motivo y el premio.
- `reports`: los partes de esa semana.

Las semanas anteriores pasan solas al historial.

## Juegos

| Juego | Responsable | Cómo se juega |
|---|---|---|
| 🐟 Feed the Staff | Mimí | Tocar peces durante 30 s; la aspiradora resta puntos |
| 🧶 Memoria de la Siesta | Kim | Encontrar las 6 parejas con el menor número de intentos |
| 🥛 ¿Quién tiró el vaso? | Klóe | Tocar a Klóe antes de que tire el vaso; cada vez más rápido |

Los récords y los «premios pagados» se guardan solo en el navegador de cada visitante.

## Editar

- Textos de las fichas: lista `STAFF` en `index.html`.
- Fichas de los juegos: lista `GAMES`.
- Para imprimir las fichas: abre la página y usa Imprimir (solo salen las fichas de empleado).

## Ponerla en kimklo.com (WordPress)

Usa `wordpress-bloque.html`: es la misma página, preparada para pegarla dentro de WordPress. Sus estilos van encerrados para que no choquen con el tema, y no lleva menú propio porque usa el de tu web.

1. **Sube las fotos:** en **Medios → Añadir nuevo**, sube `kloe.jpg`, `mimi.jpg` y `relax-cama.jpg` (y `kim.jpg` cuando la tengas). Abre una de ellas y copia su URL, por ejemplo `https://kimklo.com/wp-content/uploads/2026/10/mimi.jpg`.
2. **Indica la carpeta de las fotos:** en `wordpress-bloque.html`, cambia la línea `const FOTOS = '/wp-content/uploads/kimklo/';` por la carpeta de esa URL, sin el nombre del archivo. Por ejemplo: `const FOTOS = '/wp-content/uploads/2026/10/';`.
3. **Crea la página:** en **Páginas → Añadir nueva**:
   - Título: `Employees & Relax Space`.
   - Enlace permanente: `employees`.
   - Añade un bloque **HTML personalizado**, pega el archivo entero y publica.
4. **Menú:** en **Apariencia → Menús** (o **Apariencia → Editor → Navegación** si el tema es de bloques), añade la página al menú principal, al lado de «Store». Si quieres submenú, añade dentro estos enlaces personalizados:
   - `Partes` → `/employees/#partes`
   - `Employees` → `/employees/#empleados`
   - `Relax Space (juegos)` → `/employees/#relax`
5. **Idiomas (WPML):** la página está en español. Para inglés y portugués, duplica la página desde WPML y traduce los textos del bloque.

Los juegos van **dentro de esta misma página**, en la sección Relax Space, así que no hace falta otra página ni otro menú.

## Botón «+» en la cabecera de kimklo.com

`menu-mas.html` es un botón **+** para la cabecera, colocado antes de «Sigue la historia». Al pulsarlo abre un menú con:
- **Juegos para peques** → `/play/`
- **Rompecabezas** → `/play/puzzle.html`
- **Staff & Relax Space** → `/employees/`

Los textos salen solos en inglés, español o portugués según el idioma de la página. Se cierra al pulsar fuera o con Escape. En móvil también se ve (el botón «Sigue la historia» se oculta en pantallas pequeñas, pero el «+» no).

**Cómo ponerlo (Elementor):**
1. Edita la página de inicio con Elementor (en cada idioma, si la cabecera no es compartida).
2. En la cabecera, dentro del contenedor de la derecha, arrastra un widget **HTML** entre los idiomas (EN ES PT) y el botón «Sigue la historia».
3. Pega el contenido de `menu-mas.html` y actualiza.
