# Revisión editorial — pantalla amplia 2026-10-04

**ID:** `pantalla-amplia-20261004` · **Estado:** sin avance · **Tipo:** síntesis de cribado, no caso ni persona.

## Motivo

Continuar la búsqueda amplia luego de que la pasada anterior sobre Sergio Vial no produjera evidencia aclaratoria. Se revisaron rutas distintas —compras y relaciones con el Estado; actividades/cargos; pasivos; outliers— sobre `gold.duckdb` en solo lectura, con corte `2026-10-02T15:43:07+00:00`. La copia local fue informada sin cambios.

## Hallazgos y límites

- En compras al mismo organismo, una consulta reproducible devolvió seis filas. Tres personas tienen caso publicado (Esteban Gregorio Martínez Rubio, Pablo César Opazo Encina, Jorge Eduardo Vaccaro Collao); Pablo Allard Serrano ya tiene ficha abierta y Pedro Enrique García Muñoz una ficha descartada. No se abre duplicado.
- La consulta de actividad pagada en los últimos 12 meses y declaraciones actuales devolvió cero filas. Es solo la intersección de los campos y filtros descritos; no prueba que no existan actividades declaradas bajo otras condiciones.
- La consulta de pasivos > CLP 1.000 millones y otra de outliers devolvieron listas dominadas por pistas ya presentes en el índice. InfoProbidad declara un crédito hipotecario de CLP 160.528.863.763 en marzo de 2026.[1] La declaración de 2025 informa CLP 127.000.000 y dos rectificaciones registran CLP 164.688.000 y CLP 164.331.560.[2][3][4] La declaración de 2024 informa CLP 164.688.000.[5] El caso público de Rivano ya contiene este pasivo. La consulta guardada independiente confirma el número en el artefacto y el detalle original, pero no el saldo bancario.
- Se revisaron las páginas primarias InfoProbidad de marzo de 2026 y las declaraciones/rectificaciones de 2024–2025, además de la página pública CMF del informe personal de deuda. La CMF requiere Clave Única del titular para acceder al informe; no se intentó consultar información privada.[6] Las búsquedas exactas de nombre, cantidad, acreedor y sociedad no aportaron una aclaración independiente.
- **Inferencia (no hecho probado):** el error de transcripción/formulario es la explicación más plausible para la cifra aislada; un saldo real no reflejado en snapshots anteriores no puede excluirse. Ninguna alternativa queda demostrada a partir de estas declaraciones.[1][2][3] El caso público se mantiene sin cambios y esta corrida no corrige ni amplía sus afirmaciones.

## Decisión

**Sin avance material.** No se prepara borrador ni se abre nueva pista individual: los resultados de compra están deduplicados, la consulta de actividades resultó vacía en el filtro preciso y las señales patrimoniales principales tienen tratamiento previo o carecen de discrepancia corroborada. No se convierte un `has_outlier` en hallazgo ni un valor declarado en deuda bancaria auditada.

**Condición para reabrir:** fuente primaria pública nueva, rectificación del declarante/portal, o nueva declaración que permita contrastar el monto; para otras señales, un acto/expediente que establezca un vínculo individual con compras o decisiones.

**Revisión adversarial:** no hubo segundo revisor independiente en esta corrida.

## Consultas guardadas

- [`pantalla-wide-same-institution-20261004.sql`](../../consultas/pantalla-wide-same-institution-20261004.sql)
- [`pantalla-wide-paid-activities-20261004.sql`](../../consultas/pantalla-wide-paid-activities-20261004.sql)
- [`pantalla-wide-liabilities-20261004.sql`](../../consultas/pantalla-wide-liabilities-20261004.sql)
- [`pantalla-wide-outliers-20261004.sql`](../../consultas/pantalla-wide-outliers-20261004.sql)
- [`ricardo-rivano-passive-series-20261004.sql`](../../consultas/ricardo-rivano-passive-series-20261004.sql)
- [`ricardo-rivano-outlier-count-20261004.sql`](../../consultas/ricardo-rivano-outlier-count-20261004.sql)

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1651879 — InfoProbidad 1651879
    > "Monto global en pesos $ 160.528.863.763"
    > "Monto adeudado en pesos | $ 160.528.863.763"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1458933 — InfoProbidad, 31-03-2025
    > "Monto global en pesos $ 127.000.000"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1358306 — InfoProbidad, rectificación 13-03-2025
    > "Monto global en pesos $ 164.688.000"
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1358323 — InfoProbidad, rectificación 13-03-2025 (segunda)
    > "Monto global en pesos $ 164.331.560"
[5] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1181296 — InfoProbidad, 28-03-2024
    > "Monto global en pesos $ 164.688.000"
[6] https://www.cmfchile.cl/portal/principal/623/w4-article-95399.html — CMF, Informe de Deudas de Personas Naturales
    > "Para obtener el informe en línea, el solicitante debe contar con la clave única que entrega el Registro Civil"
