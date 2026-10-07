# Corrección propuesta: acreedor literal de la declaración de Ricardo Rivano

## Pregunta
¿El párrafo patrimonial del caso vigente atribuye correctamente el acreedor que aparece en la declaración primaria, y cómo presenta EstadoClaro el mismo campo?

## Hechos verificados
La declaración vigente, 1651879, identifica el acreedor del crédito hipotecario como «BANCO EDWARDS».[1]

Las tres declaraciones anteriores reabiertas identifican igualmente al acreedor como «BANCO EDWARDS».[2][3][4]

Las consultas guardadas al oro de EstadoClaro, al corte `2026-10-06T15:56:08Z`, muestran `creditor='BANCO EDWARDS'` y `normalized_creditor='BANCO DE CHILE'` en las cuatro filas. Cada declaración tiene una fila de pasivo hipotecario en CLP, y el detalle coincide con el total del panel. Se ejecutaron `consultas/ricardo-rivano-pasivo-hipotecario-evidence.sql` y `consultas/ricardo-rivano-pasivo-hipotecario-independent.sql`.

## Cambio exacto
Reemplazar la frase vigente «un “crédito hipotecario” con el Banco de Chile por 4.029.165 UF (160.528.863.763 pesos)» por: «un “crédito hipotecario” cuyo acreedor la declaración identifica como BANCO EDWARDS (el artefacto de Estado Claro lo normaliza como BANCO DE CHILE), por 160.528.863.763 pesos».[1] Se omite la cifra UF del texto corregido porque esta revisión no revalidó esa conversión.

## Alcance y límites
El texto corregido distingue el acreedor literalmente publicado del valor normalizado por el artefacto.[1] La revisión no establece si la normalización representa una equivalencia institucional válida y no valida el saldo, origen ni vigencia de la obligación.[1] La pregunta es una corrección de atribución documental en un caso existente, no un caso nuevo ni una acusación.

## Matriz de afirmaciones
- **c1 — Campo fuente vigente:** InfoProbidad identifica BANCO EDWARDS como acreedor en la declaración 1651879.[1]
- **c2 — Campo fuente anterior:** las declaraciones 1458933, 1358306 y 1358323 también muestran BANCO EDWARDS.[2][3][4]
- **c3 — Diferencia de representación:** EstadoClaro conserva el texto en `creditor` y muestra BANCO DE CHILE en `normalized_creditor`; comprobado en las dos consultas guardadas al oro.
- **c4 — Límite:** el cotejo no demuestra equivalencia legal o comercial ni saldo bancario real.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1651879 — InfoProbidad declaración 1651879
    > "Nombre o Razón Social del acreedor BANCO EDWARDS"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1458933 — InfoProbidad declaración 1458933
    > "Nombre o Razón Social del acreedor BANCO EDWARDS"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1358306 — InfoProbidad declaración 1358306
    > "Nombre o Razón Social del acreedor BANCO EDWARDS"
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1358323 — InfoProbidad declaración 1358323
    > "Nombre o Razón Social del acreedor BANCO EDWARDS"
