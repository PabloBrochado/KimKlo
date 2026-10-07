# Employees & Relax Space

Página de KimKlo con las **fichas de empleados** de Kim, Klóe y Mimí («We Work for Food (or Tricks)») y el **Relax Space** con juegos, cada uno con su ficha.

## Contenido

- `index.html`: la página completa en un solo archivo, sin dependencias.
- `fichas-empleados.pdf`: las 3 fichas de empleado listas para imprimir.
- `fotos/`: pon aquí `kim.jpg`, `kloe.jpg` y `mimi.jpg`. Mientras no estén, se muestra un emoji.

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

1. Sube la carpeta `employees/` (con `fotos/`) al servidor, por ejemplo a `kimklo.com/employees/`.
2. En **Apariencia → Menús**, añade un enlace personalizado con el texto **Employees & Relax Space** y la URL `https://kimklo.com/employees/`.
