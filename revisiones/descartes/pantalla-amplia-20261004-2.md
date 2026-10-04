# Cribado transversal y deduplicación — 2026-10-04 (segunda pasada)

**Estado:** sin avance material. **Tipo:** síntesis de cribado; no es ficha individual ni caso.

## Resultado

Al ampliar la pantalla de proveedores declarados con órdenes a la misma institución apareció una señal de radiodifusión para Nancy Marisol Diaz Reyes, Municipalidad de Los Sauces. Antes de conservarla como una nueva ficha, la búsqueda de deduplicación por nombre completo, razón social y RUT de proveedor encontró el caso ya publicado `casos/autocontratacion/diaz-reyes-municipalidad-de-los-sauces.md`. Ese caso describe la misma declaración ID 1052265, la misma empresa, las mismas diez órdenes 3705-127-LE22 por CLP 8.000.000 y mantiene pendiente conocer el papel de la funcionaria en el proceso (caso publicado, líneas 1–5, 20–34 y 53–55).[13][14] Se descarta abrir una pista duplicada; se eliminaron los archivos de trabajo locales que se habían creado provisionalmente para la candidata y no se añadió fila al índice.

## Rutas y acciones de esta pasada

1. **Cribado transversal del oro:** consulta de proveedores con órdenes a la misma institución produjo 14 filas; la candidata de Los Sauces se seleccionó por coincidencia de proveedor/organismo, no por monto.
2. **Oro, relación declarada:** consulta por nombre completo, snapshot vigente e identificador societario devolvió una fila: función `OTRO`, entidad declarada, tipo `ACCION`, `is_controlling=false`, diez órdenes durante la ventana y CLP 8.000.000 (`ec-gold-sql`, ejecución 2026-10-04; artefacto con corte `2026-10-02T15:43:07Z`).
3. **Oro, serie de órdenes:** consulta directa en `purchase_order` por identificador societario y código de comprador devolvió 32 códigos históricos en cuatro códigos de licitación. La agregación por código/licitación evitó contar dos veces; la ventana pertinente reprodujo diez órdenes y CLP 8.000.000. Es el mismo universo que ya estaba descrito en el caso publicado.
4. **Fuente primaria de declaración:** se abrió InfoProbidad ID 1052265; confirma nombre completo, institución, fecha 11-04-2023 y función «Otro».[13]
5. **Fuentes primarias de órdenes:** se abrieron fichas Mercado Público 3705-92-SE24, 3705-450-SE21 y 3705-130-SE22. Confirman vendedor/razón social, comprador municipal, montos y referencias a licitación pública; no agregan un nexo individual de decisión o administración.[14][15][16]
6. **Expediente y explicación de contratación:** la ficha oficial de licitación 3705-7-LE22 confirma el título de convenio de suministro de radiodifusión de 2022; la extracción de 3705-127-LE22 no expuso el título ni la resolución de adjudicación.[27] El directorio municipal enumera Unidad de Adquisiciones y una encargada, pero no identifica el puesto de Diaz Reyes ni su participación (consultado 2026-10-04, https://www.munilossauces.cl/secciones/5801).
7. **Búsqueda exacta y contraste:** consultas por nombre completo, nombre societario e identificadores de licitación no localizaron otra fuente primaria sobre su rol. La evidencia indispensable sobre quién evaluó/autorizó/recibió las órdenes sigue siendo la misma pregunta abierta del caso publicado; no se interpreta la búsqueda negativa como prueba de ausencia.
8. **Deduplicación editorial:** consulta textual sobre nombre, razón social e identificador del proveedor en los casos publicados encontró la ficha existente. No se hizo un borrador paralelo ni se atribuyó el alias «ROGELIO» a una persona por coincidencia nominal.

## Decisión y próxima acción

**Sin avance material sobre el caso publicado; no abrir nueva pista ni actualizar su caso.** Las consultas de esta corrida corroboran datos que ya constan en el caso, pero no resuelven su limitación central. Para reabrir esa cuestión haría falta el expediente/anexos completos de la licitación 3705-127-LE22 y documentación oficial que identifique representantes del proveedor y responsables municipales de evaluación, autorización o recepción. No se presentaron solicitudes, no se contactó a terceros y no se eludieron controles. No hubo revisor humano independiente.

## Sources

[13] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1052265
[14] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3705-92-SE24
[15] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3705-450-SE21
[16] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3705-130-SE22
[27] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=3705-7-LE22 — Mercado Público licitación 3705-7-LE22
