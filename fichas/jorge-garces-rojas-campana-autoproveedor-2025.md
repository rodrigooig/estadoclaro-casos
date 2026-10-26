# Jorge Garces Rojas: campaña informó pagos y gastos rechazados a sociedad declarada

**ID:** `jorge-garces-rojas-campana-autoproveedor-2025`  
**Estado:** borrador listo (PR a editor)  
**Pista:** nueva por consulta propia al oro; triage en `tmp/runs/20261026T091356Z/triage.md`.

## Pregunta decisiva

¿Hay evidencia primaria accesible de que la campaña parlamentaria de Jorge Garces Rojas registró pagos o gastos a una sociedad que él había declarado controlar, y qué se puede afirmar sin confundir esos registros con una determinación de irregularidad?

## Hechos

1. **Identidad e interés declarado.** InfoProbidad presenta la declaración 1505491, de JORGE LUIS OMAR GARCES ROJAS, fechada 20-08-2025 para su candidatura a diputado 2025. En la sección de sociedades, declara INVERSIONES CP & J-A SPA, RUT 76.214.007-1, cantidad «90» en el campo «Cantidad / Porcentaje» y calidad de controlador. «90» no se expresa como porcentaje en el campo transcrito. La declaración acredita lo declarado en esa fecha, no la titularidad legal en las fechas posteriores. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1505491
2. **Registro Servel de pago y rechazo.** En el reporte definitivo de ingresos y gastos electorales 2025, Servel registra en el Formulario Auxiliar 103 un pago de $5.413.334 de la candidatura de Jorge Garces Rojas a INVERSIONES CP & J-A SPA, proveedor RUT 76.214.007-1. La fila no consigna fecha de transacción.
3. En la pestaña «FORMULARIO 87 Y 88», el mismo reporte registra seis gastos de la candidatura a ese RUT, con documentos distintos 267–272 y rótulo «Gasto rechazado»: dos por $833.000 (01-10-2025), dos por $1.666.000 (03-11-2025) y dos por $721.934 (13-11-2025). La suma de esas seis líneas es CLP $6.441.868 / 162,48 UF (equivalencia de la tabla del oro); descripciones: «Arriendo camionetas del 16 de septiembre al 13 de noviembre del 2025», algunas con prefijo «RP //».
4. La campaña figura con estado general de auditoría «rechaza» y resultado «no_electo». No se usa la condición general como explicación específica de los seis documentos.
5. **Mercado Público.** El cruce por RUT exacto en el oro encuentra seis órdenes por CLP $57.596.000 / 1.588,58 UF entre 2023-03-30 y 2024-01-31, todas para arriendo de camionetas y dos compradoras: Corporación Municipal de Cultura de Talca y Corporación Municipal de Deporte de Talca. Seis registros figuran como licitación pública o prórroga, no como trato directo. Son anteriores a la candidatura declarada, cuya fecha de asunción es 11-03-2026. Estos contratos acreditan actividad comercial ordinaria, no intervención de Garces. Fuentes primarias accesibles, con OCs representativas bajo `1230851-13-SE23`, `1230851-1-SE24` y `1230845-9-SE24`.


Fuente Servel (archivo definitivo, septiembre de 2026): https://www-doc.servel.cl/2026/09/Reporte%20Ingresos%20y%20Gastos%20Electorales%202025%20-%20Definitivas%20Presidenciales%20y%20Parlamentarias.xlsx. Filas reabiertas en hoja y transcodificadas con `xlsx2csv -a`; se conservaron extractos de evidencia en `tmp/runs/20261026T091356Z/jorge-garces-inversiones-cp-ja-campana-2025/servel-evidence.txt`.

## Explicación legítima más fuerte y límites

Los arriendos pueden ser servicios reales de campaña y el rechazo puede obedecer a un requisito de respaldo o contabilidad. Servel no explica el fundamento particular. La misma sociedad ya vendía arriendos de camionetas a dos corporaciones municipales de Talca en órdenes emitidas por licitaciones y prórrogas en 2023–2024, antes de la candidatura declarada: esa relación es evidencia de una actividad comercial ordinaria, no de intervención individual. La declaración prueba lo que Garces informó el 20-08-2025, no la titularidad societaria en cada fecha posterior. Tampoco sabemos si la línea de Formulario 103 y los seis documentos rechazados se solapan; no se infiere beneficio personal ni irregularidad.

## Decisión

**Borrador listo para el editor.** Las primarias verifican un pago de campaña al RUT de la sociedad cuyo control Garces declaró y seis gastos distintos a ese mismo proveedor que Servel rotuló rechazados, total CLP $6.441.868/162,48 UF; es una pregunta concreta de rendición y auditoría de campaña. La compañía también tiene contratos previos de arriendo de camionetas adjudicados por licitación y prórroga, antes de la candidatura declarada, lo que refuerza la explicación comercial ordinaria. El borrador mantiene separadas esas operaciones, no sugiere una causa del rechazo y no atribuye irregularidad.

La afirmación más débil es la posible conexión entre las seis líneas rechazadas y el pago del Formulario 103: son registros diferentes y el reporte no dice si se solapan. El borrador no depende de afirmar que sean la misma operación; presenta ambos como registros distintos relacionados por candidatura y RUT.

## Reabrir / seguimiento

Pedir a quien continúe que ubique la resolución o fundamento individual de Servel para los documentos 267–272, compruebe la relación de los arriendos con la sociedad y establezca si hay solapamiento con Formulario 103. Revisar además la vigencia societaria en las fechas de cada gasto. No cambiar el estado sin fuente primaria adicional.

## Consultas reproducibles

`consultas/jorge-garces-rojas-campana-autoproveedor-2025-{1..5}.sql` contiene, respectivamente, las seis filas de Servel, el join de declaración, el resumen de campaña, las seis órdenes de Mercado Público y el agregado de esas órdenes. Corte del oro: `2026-10-23T14:20:50+00:00`.

## Archivos

- Borrador: `borradores/jorge-garces-rojas-campana-autoproveedor-2025.md`
- Consulta: `consultas/jorge-garces-rojas-campana-autoproveedor-2025-1.sql`

## Decisión editorial (2026-10-26): publicado

Verifiqué InfoProbidad: la declaración del 20-08-2025 atribuye a JORGE LUIS OMAR GARCES ROJAS la calidad de controlador de INVERSIONES CP & J-A SPA, RUT 76.214.007-1; el campo informa “90”, no lo describo como porcentaje.
El reporte definitivo de Servel registra $5.413.334 pagados a ese RUT en Formulario 103 y seis documentos distintos (267–272), por $6.441.868, rotulados “Gasto rechazado”; no precisa el fundamento ni establece solapamiento.
Revisé órdenes oficiales de Mercado Público 1230851-13-SE23 y 1230845-9-SE24: confirman al proveedor por RUT y arriendos de camionetas anteriores a la candidatura declarada.
El texto separa los registros y explicita límites; pasa verdad, relevancia, justicia, forma y novedad. Publicar en autocontratación, sin afirmar porcentaje, titularidad actual ni irregularidad.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/215
