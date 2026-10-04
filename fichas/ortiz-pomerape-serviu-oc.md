# Patricia Andrea Ortiz von Nordenflycht — Pomerape y una orden de SERVIU

- **ID:** `ortiz-pomerape-serviu-oc`
- **Categoría:** compras/relaciones con el Estado; patrimonio y actividades.
- **Estado:** evidencia insuficiente; no preparar caso.
- **Fecha de revisión:** 2026-10-04.
- **Corte del oro:** `2026-10-02T15:43:07+00:00`; copia sincronizada sin cambios según el pre-run.
- **Identidad:** el nombre completo coincide entre la serie del oro y la ficha primaria de InfoProbidad; no se atribuyen registros por homonimia.[6][13]

## Mapa de afirmaciones y resultado

InfoProbidad registra que Patricia Andrea Ortiz von Nordenflycht declaró 42.727 acciones de Sociedad Industrial y Comercial Pomerape S.A., RUT societario 96.505.020-5, adquiridas el 14-02-1997; en el formulario figura como controladora.[6][13] La declaración de 31-03-2026 la identifica como relatora del Poder Judicial.[6]

La consulta independiente [`ortiz-pomerape-serviu-oc-2.sql`](../consultas/ortiz-pomerape-serviu-oc-2.sql) devuelve 13 snapshots de la persona y repite la asociación declarada; la repetición no representa 13 participaciones u órdenes distintas. La consulta exacta [`ortiz-pomerape-serviu-oc-1.sql`](../consultas/ortiz-pomerape-serviu-oc-1.sql) devuelve tres filas derivadas del mismo código OC —una `during` y dos `after_1y`—, pero solo una fila primaria: 761984-24-SE20, enviada el 07-10-2020, estado Aceptada, por CLP 712.415.891, incluida en una licitación pública. No se suman las filas repetidas ni se atribuye el monto a la persona.[7]

La ficha primaria de la orden identifica como comprador al Servicio Regional de Vivienda y Urbanización de Arica, describe obras para construir espacios públicos Miramar Sur II y enlaza la licitación 761984-16-LR20.[7] La orden registra construcción de obra civil por CLP 598.668.816 netos y CLP 712.415.891 con IVA.[7] La ficha pública de InfoProbidad y la serie muestran que la titular tenía vínculo judicial en los años cercanos; no se encontró evidencia de que su función judicial la involucrara en decisiones de SERVIU, selección del proveedor, evaluación, supervisión o recepción de esta obra.[6][13]

La explicación legítima más plausible para la adjudicación observada es una contratación de obra pública cursada como licitación pública para un proyecto de espacio público; una nota local de 2020 presenta la obra como financiada por FNDR y orientada a habilitar áreas verdes y recreativas.[7][11] Esto no demuestra por sí solo la regularidad de cada actuación del procedimiento ni el papel individual de la titular.

## Rutas independientes revisadas (2026-10-04)

1. **Minería del oro y deduplicación:** pantalla de sociedades controladoras con órdenes de compra (`panel`/`declared_supply`) destacó el nombre y Pomerape. Se comprobó ausencia de coincidencia por nombre completo, sociedad o RUT societario en el índice/fichas revisados y en los casos publicados.[consultas/ortiz-pomerape-serviu-oc-2.sql]
2. **Identidad, participación y fechas de declaración:** cotejo de la declaración primaria InfoProbidad ID 5113748 y del historial de declaración ID 5045777; contrastan nombre, organismo, cargo, adquisición declarada y razón social/RUT de la empresa.[6][13]
3. **Consulta focalizada y deduplicación de órdenes:** una consulta de resumen por persona/empresa y otra independiente sobre `declared_supply_order` muestran 13 snapshots y tres filas del código de OC, pero una sola fila primaria. No se interpreta `during` como intervención personal.[consultas/ortiz-pomerape-serviu-oc-1.sql] [consultas/ortiz-pomerape-serviu-oc-2.sql]
4. **Fuente primaria de contratación:** la ficha oficial Mercado Público de la OC enlaza el código de licitación, fecha, proveedor, RUT societario, comprador, estado y monto. La ficha oficial de licitación fue consultada, pero la extracción textual disponible dejó en blanco sus datos sustantivos; no se elude ninguna barrera de acceso.[7][8]
5. **Alternativa legítima y contraste secundario:** una nota local de octubre de 2020 vincula el proyecto Miramar Sur II con FNDR, obra pública y mejoramiento de espacio público; el registro público de transferencias muestra a la empresa entre organizaciones con transferencias recibidas en Arica en 2006–2014.[4][11] Son contexto institucional, no prueba sobre la participación de la titular en la adjudicación de 2020.
6. **Búsqueda exacta complementaria:** búsquedas por nombre completo, RUT societario y código de licitación no localizaron un documento que vincule a la titular con la compra; este resultado negativo se limita a las consultas y fecha anotadas, no prueba inexistencia.

## Evaluación, límites y decisión

- **Hecho medido:** una OC primaria bajo el mismo RUT societario que la participación declarada; una vez deduplicada, la orden se cursó por licitación pública y a SERVIU, no al Poder Judicial.[7]
- **Dato autodeclarado:** la participación y condición de controladora provienen de InfoProbidad; no se contrastaron con un registro societario histórico primario independiente.[13]
- **Relevancia pública:** existe una coincidencia entre participación societaria declarada y un proveedor de obra pública; falta vínculo funcional individual con el comprador o el proceso.
- **Hipótesis alternativa:** contratación competitiva de una obra para espacio público, con financiamiento FNDR reportado por fuente local; plausible y parcialmente consistente con la clasificación de la OC, no prueba de corrección integral del proceso.[7][11]
- **Gate:** identidad y registro de fuente primaria sí; hecho de compra reproducible sí; relevancia funcional concreta no; el cruce se controló por RUT/código y se deduplicó; alternativa buscada. No alcanza para borrador de caso.
- **Límites:** la ficha pública de licitación consultada no entregó su contenido de bases/adjudicación en extracción; tampoco se verificó un rol de la persona en la compra. No se afirma ausencia de intervención como hecho probado.

**Decisión:** mantener **evidencia insuficiente**. Reabrir solo si aparece un documento primario que conecte a la titular con una decisión, evaluación o ejecución concreta, o nueva evidencia del proceso que altere la lectura de la adjudicación. Sin esa fuente no seguir buscando las mismas huellas ni atribuir irregularidad.

## Sources

[4] https://registros19862.gob.cl/buscar/0/5/2/39/1/300
    > "119 recibidas 2006–2014"
[6] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5113748
    > "Nombre o Razón Social |SOCIEDAD INDUSTRIAL Y COMERCIAL POMERAPE S.A."
[7] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=761984-24-SE20
    > "TOTAL OC | $ 712.415.891"
    > "Fecha de Envío | 07-10-2020"
[8] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=761984-16-LR20
    > "1. Características de la licitación"
[11] https://www.aricaldia.cl/inician-obras-de-nuevo-espacio-publico-miramar-sur-ii
    > "financiados a través del Fondo Nacional de Desarrollo Regional, FNDR"
[13] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5045777
    > "SOCIEDAD INDUSTRIAL Y COMERCIAL POMERAPE S.A."
