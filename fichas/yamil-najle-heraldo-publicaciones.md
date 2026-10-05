# Revisión editorial — Yamil Najle y publicaciones de El Heraldo

**ID:** `yamil-najle-heraldo-publicaciones` · **Estado:** descartada como pista de caso (2026-10-05 UTC). No es un caso publicado.  
**Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; copia informada sin cambios. Consultas solo con `ec-gold-sql` y oro de solo lectura.

## Veredicto

**Se confirma la coincidencia declarativa-comercial, pero no cruza el gate editorial.** La declaración 5113625 identifica a Yamil Abraham Najle Alée como Conservador y Archivero del Poder Judicial a 30-03-2026, y consigna 100% de control de la empresa periodística El Heraldo.[6]

La declaración anterior 5099420 (31-03-2025) ya consignaba el mismo nombre empresarial y 100% de participación/control.[7]

Al corte del oro, cuatro consultas guardadas relacionan el proveedor por RUT societario exacto con cinco órdenes únicas en la ventana 30-03–02-10-2026, entre el 17-07 y el 11-09, por CLP nominales 3.816.452; cuatro llevan marca de adjudicación directa y una es una orden «para informar».[consultas/yamil-najle-heraldo-publicaciones-1.sql:1-13] [consultas/yamil-najle-heraldo-publicaciones-2.sql:1-11] [consultas/yamil-najle-heraldo-publicaciones-3.sql:1-16] [consultas/yamil-najle-heraldo-publicaciones-4.sql:1-13]

Las fichas de Tesorería describen tres compras de publicaciones y anuncios de prensa.[8][9][10]

Las otras fichas corresponden a un anuncio de concurso público de Colbún y a una convocatoria municipal para proveer el cargo de Director Comunal de Salud de Linares.[11][12]

Las fichas de Tesorería son compatibles con la venta ordinaria de espacios de publicación de un medio local, pero no demuestran la justificación administrativa de cada modalidad ni participación personal del declarante.[8][9][10]

Las fichas de concurso muestran anuncios publicados, pero tampoco acreditan intervención del declarante.[11][12]

## Mapa de afirmaciones

- **Identidad e interés societario — medido:** InfoProbidad registra nombre completo, cargo declarado, empresa periodística, 100% de participación/control y giro editorial tanto en 2026 como en 2025.[6][7]
- **Volumen — medido en oro:** la pantalla exploratoria devolvió cinco sociedades controladas con al menos cinco órdenes; la fila de Najle señala 5 órdenes por CLP 3.816.452 y última fecha 11-09-2026.[consultas/yamil-najle-heraldo-publicaciones-1.sql:1-13] [consultas/yamil-najle-heraldo-publicaciones-3.sql:1-16]
- **Deduplicación — medido en oro:** la tabla de órdenes declarativas presenta filas duplicadas por etiquetas temporales; filtrando `is_primary_for_person` queda una fila por código, cinco en total, y todas con `same_institution=false`.[consultas/yamil-najle-heraldo-publicaciones-4.sql:1-13]
- **Contraste de tres órdenes TGR — fuente primaria:** las OCs 1808-4/5/6-TD26 identifican a Tesorería Provincial de Linares y detallan avisos/publicidad en diario, con recepción conforme.[8][9][10]
- **Contraste de dos concursos — fuente primaria:** la OC 4172-403-TD26 describe publicación en blanco y negro de un concurso público de Colbún.[11] La OC 2337-83-SE26 describe publicar el llamado a concurso para Director Comunal de Salud de Linares en un diario local.[12]
- **Intervención personal — no establecida:** los registros revisados identifican proveedor, comprador, objeto y estado, pero no nombran al conservador en solicitud, evaluación, aprobación, administración, recepción o ejecución de las compras de Tesorería.[8][9][10]

Las fichas de Colbún y Linares tampoco lo nombran en esos roles.[11][12]

## Pasada amplia y rutas revisadas (2026-10-05 UTC)

1. **Minería de universo diferente:** consulta de `company_supply` y `company_supply_summary` para declaraciones vigentes, participación controladora y cinco o más órdenes; resultado de cinco candidatos y deduplicación exacta contra índice y casos públicos.[consultas/yamil-najle-heraldo-publicaciones-1.sql:1-13]
2. **Origen del dato:** apertura de declaraciones primarias 5113625 (30-03-2026) y 5099420 (31-03-2025), ambas con el nombre completo y el interés societario descrito.[6][7]
3. **Cotejo relacional:** consulta a `declared_supply_order` por sociedad y ventana; tras filtrar la fila principal de la persona resultan cinco códigos, sin sumar los pares de etiquetas `during`/`after_1y`.[consultas/yamil-najle-heraldo-publicaciones-4.sql:1-13]
4. **Verificación independiente:** consulta a `purchase_order` por RUT societario, seguida de agregación por código; ambas devuelven cinco órdenes, CLP 3.816.452 y cuatro rutas directas.[consultas/yamil-najle-heraldo-publicaciones-2.sql:1-11] [consultas/yamil-najle-heraldo-publicaciones-3.sql:1-16]
5. **Compras originales:** revisión por código de las cinco fichas primarias; las tres de Tesorería refieren a publicaciones, incluida una publicación de remate de derechos de agua.[8][9][10]

Las otras dos fichas son avisos de concurso local.[11][12]
6. **Anexos y expediente:** las fichas TGR muestran «Ver Anexos»; se buscaron los identificadores enlazados 1808-1/2/3-FTD26 y los códigos exactos, sin obtener copia indexada utilizable. La extracción de las tres páginas asociadas expiró por timeout; no se eludieron controles ni se infiere legalidad a partir de la etiqueta de ruta.
7. **Explicación alternativa:** los objetos de Tesorería son anuncios o publicaciones que se publican en prensa; eso explica comercialmente esa relación, aunque no verifica la justificación de cada compra directa.[8][9][10]

Las otras dos compras también son avisos públicos difundidos en un diario local.[11][12]
8. **Vínculo funcional:** la orden municipal más reciente publica un llamado a concurso para un cargo de salud, pero no identifica al declarante como participante de la selección.[12] No se halló documento en las búsquedas exactas por empresa, comprador y código que lo vincule a una decisión o ejecución personal; la declaración fecha el cargo, no su vigencia posterior ni su papel en estas compras.[6]
9. **Deduplicación editorial:** la búsqueda exacta por nombre en el índice de investigaciones, sus fichas y los casos revisados no encontró una entrada con esta huella. El resultado negativo se limita a esos repositorios y búsquedas, no prueba que no haya otras fuentes.

## Alternativa, límites y decisión

La explicación legítima más plausible para las tres compras de Tesorería es la contratación de anuncios/publicaciones a un diario local; las fichas describen ese servicio.[8][9][10]

Las otras dos fichas describen llamados públicos difundidos en prensa local.[11][12]

La relación societaria declarada está identificada con el cargo de Conservador y Archivero del Poder Judicial.[6]

Las órdenes identifican como compradores a Tesorería Provincial de Linares y municipalidades; sus objetos visibles son publicaciones, y no hay documento de intervención personal en las fichas revisadas.[8][9][10]

Las dos órdenes de concurso también describen publicaciones y no nombran al declarante en una decisión o ejecución.[11][12]

La pista **no satisface** los umbrales de relevancia funcional e intervención personal; tampoco se considera que la clasificación de cuatro órdenes como directas pruebe una irregularidad. Se descarta como caso, sin afirmar ausencia de otras compras o intervención fuera de los registros y fechas revisados.

**Reabrir solo** si aparece un expediente oficial que nombre al titular en una decisión/administración de compra, evidencia primaria de vínculo funcional concreto o un anexo accesible que cambie materialmente la lectura de estos avisos. No hubo revisor independiente en esta corrida.

## Sources

[6] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5113625
    > "Fecha: 30-03-2026; Cargo o función: Conservador Y Archivero; Organismo: Poder Judicial"
    > "YAMIL NAJLE ALEE EMPRESA PERIODISTICA EL HERALDO E.I.R.L; Cantidad / Porcentaje: 100"
    > "EDICIÓN DE PERIÓDICOS, REVISTAS Y PUBLICACIONES PERIÓDICAS; Tiene Calidad de Controlador: true"
[7] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5099420
    > "31-03-2025; razón social YAMIL NAJLE ALEE EMPRESA PERIODISTICA EL HERALDO E.I.R.L; Cantidad / Porcentaje: 100"
[8] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1808-6-TD26
    > "Fecha de Envío: 31-07-2026; Unidad de Compra: Tesorería Provincial de Linares; Proveedor: elheraldo"
    > "Esp. Proveedor: PUBLICIDAD PERIODICO 04 Y 05 DE AGOSTO 2026; TOTAL OC $ 514.000"
[9] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1808-5-TD26
    > "Fecha de Envío: 29-07-2026; Unidad de Compra: Tesorería Provincial de Linares; Proveedor: elheraldo"
    > "Esp. Comprador: 2 PUBLICACIONES DIARIO EL HERALDO DE LINARES 30 Y 31-07-2026; TOTAL OC $ 810.000"
[10] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1808-4-TD26
    > "Fecha de Envío: 17-07-2026; Unidad de Compra: Tesorería Provincial de Linares; Proveedor: elheraldo"
    > "Esp. Comprador: PUBLICACION REMATE DE DERECHOS DE AGUA EN DIARIO EL HERALDO DE LINARES LOS DIAS 21 Y 22 DE JULIO DE 2026; TOTAL OC $ 1.012.452"
[11] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4172-403-TD26
    > "Publicación "concurso publico" en B/N para el día 11 de agosto 2026"
[12] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2337-83-SE26
    > "La necesidad de publicar el llamado a "Concurso Público para proveer el Cargo de Director Comunal de Salud de la Municipalidad de Linares" en un diario de circulación local"
