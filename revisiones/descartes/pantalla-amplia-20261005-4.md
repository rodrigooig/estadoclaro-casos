# Pantalla amplia de patrimonio, actividades y relaciones comerciales — 2026-10-05

**ID:** `pantalla-amplia-20261005-4`  
**Decisión:** sin avance material; no se abre ficha individual ni borrador de caso.  
**Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`. Ejecución con `ec-gold-sql` únicamente.

## Resultado principal y mapa de afirmaciones

La pasada detectó a Zandra Esther Parisi Fernández como posible pista para contrastar. InfoProbidad muestra que su declaración de candidatura, presentada el 20-08-2025, consignó una participación del 48%, sin calidad de controladora, en Prestaciones Médicas Ltda.; también registró 1% no controlador en Educación Zama Ltda.[1]

La primera declaración por asunción, presentada el 01-04-2026, consigna que asumió como diputada el 11-03-2026 y lista dos participaciones empresariales: Inversiones Parisi SpA y Paz Inversiones SpA. No lista Prestaciones Médicas ni Educación Zama.[2] Esta diferencia entre declaraciones no permite inferir cuándo o por qué cambió la cartera, ni si hubo transferencia, cambio de razón social o una omisión.

**Medido en el artefacto:** una consulta por nombre completo/proveedor produjo seis OCs de Prestaciones Médicas enlazadas a la ventana de esa declaración, entre 11-09-2025 y 31-03-2026, por CLP nominales 125.856.000, con el Centro de Referencia de Salud de Maipú como comprador. Una consulta independiente por código contra `purchase_order` cotejó registros canónicos; el proveedor no aparece como comprador propio en el campo de coincidencia de institución. El conteo no incluye filas espejo y los montos no representan ingreso personal.

La OC 2115-747-SE25, del 11-09-2025, identifica como proveedor a Prestaciones Médicas Z & M Limitada, con el mismo RUT societario publicado para Prestaciones Médicas Ltda.; vincula la compra a la licitación 2115-36-LR24 y registra recepción conforme por CLP 26.863.000.[7]

La ficha de 2115-36-LR24 describe servicios de consultas y procedimientos oftalmológicos no GES en una licitación pública abierta.[3]

La ficha de 2115-24-LR25 repite el objeto oftalmológico, registra convocatoria abierta y adjudicación de 19-01-2026.[4]

La explicación legítima más plausible para las órdenes es la prestación de servicios médicos oftalmológicos contratados mediante licitaciones abiertas; los documentos examinados no identifican quién prestó individualmente los servicios ni acreditan intervención de Parisi en la compra.

Una ruta de refutación examinó dos OCs de Educación Zama en 2026: la 1033392-2-TD26 de Providencia y la 449-84-TD26 de La Reina.

Las dos fichas primarias describen matrícula/mensualidades de una sala cuna o jardín infantil, no servicios médicos.[5][6]

La declaración de candidatura consignó 1% no controlador en Educación Zama; la declaración por asunción ya no la lista.[1][2]

El rubro y los objetos son compatibles con una prestación ordinaria de cuidado infantil; las fichas no establecen vínculo de estas compras con el cargo parlamentario o intervención personal.

## Rutas examinadas en esta pasada

1. **Actividades remuneradas actuales:** intersección `panel.is_current`, `activity.is_paid` y `activity.last_twelve_months`; resultado: 0 filas.
2. **Sociedades controladas actuales:** cruce independiente de `panel`, `declarant` y `company`, restringido a declaraciones actuales y `is_controlling=true`; pantalla extensa, no usada para atribuir compra o intervención.
3. **Pasivos altos:** `panel.is_current`, `liability.value_clp >= 1.000.000.000`, excluyendo `has_outlier`; 23 filas, con titulares principales ya presentes en el índice de pistas.
4. **Proveedores no ampliamente compartidos:** `panel.is_current`, `declared_supply.n_orders_during >= 5`, no `is_widely_held` y `n_same_institution=0`; se revisaron resultados y se deduplicaron por nombre completo contra casos publicados e índice de investigaciones. No se abrió ninguna pista nueva por el resultado de esa pantalla.
5. **Fuentes primarias por persona y código:** se cotejaron las declaraciones originales de InfoProbidad de 2025 y 2026.[1][2]

Se revisó completa la ficha de la OC 2115-747-SE25 y las dos licitaciones enlazadas.[3][4][7]

Se abrieron las dos fichas directas de Educación Zama.[5][6]
6. **Contraste y deduplicación:** búsqueda por nombre completo en las fichas del ledger y los casos públicos no encontró coincidencia que obligara a deduplicar esta pista; la coincidencia de nombre no se trató como prueba de intervención. Las búsquedas web auxiliares de empresa/RUT no aportaron una fuente primaria societaria adicional y no se usaron para establecer titularidad.

## Gate editorial y próxima acción

La identidad y la participación del 48% están corroboradas en la declaración original de candidatura.[1]

La compra médica es reproducible por registro societario y código de OC.[7]

Sin embargo, la fuente primaria más reciente no registra esa sociedad y no permite establecer continuidad del interés societario luego del 11-03-2026.[2]

Las licitaciones examinadas ofrecen una explicación comercial ordinaria y no nombran a Parisi en las compras.[3][4]

Los documentos no acreditan un papel suyo en autorización, evaluación, administración, ejecución o recepción.[7]

El patrón no satisface el gate editorial; no se abre una ficha individual ni se prepara caso.

**Reabrir solo** ante un documento primario que establezca interés societario vigente después del 11-03-2026, o un acto oficial que nombre a Parisi en una decisión/función concreta de compra. No repetir búsquedas generales ni atribuir una actividad desde una coincidencia societaria.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1504408 — InfoProbidad: declaración de candidatura, 20-08-2025
    > "20-08-2025 Presentación A Requerimiento De Órgano Fiscalizador"
    > "Cantidad / Porcentaje 48"
    > "Tiene Calidad de Controlador false"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1769223 — InfoProbidad: primera declaración por asunción, 01-04-2026
    > "01-04-2026 Primera Declaración (Por Asunción De Cargo)"
    > "Comunidades, sociedades, empresas DERECHO (2)"
    > "Nombre o Razón Social INVERSIONES PARISI SPA"
    > "Nombre o Razón Social PAZ INVERSIONES SPA"
[3] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?qs=hZllTiY5iVq0OoifNPYDxw== — Mercado Público: licitación 2115-36-LR24
    > "Tipo de convocatoria: ABIERTO"
    > "Tipo de licitación: Pública-Licitación Pública igual o superior a 5.000 UTM (LR)"
[4] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?qs=M090XqBSGHHAhMhw+svviQ== — Mercado Público: licitación 2115-24-LR25
    > "Fecha de Adjudicación: 19-01-2026 16:07:35"
    > "Tipo de convocatoria: ABIERTO"
[5] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1033392-2-TD26 — Mercado Público: OC 1033392-2-TD26
    > "Proveedor Sala Cuna y Jardín Príncipe de Gales"
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=449-84-TD26 — Mercado Público: OC 449-84-TD26
    > "Proveedor Sala Cuna y Jardín Príncipe de Gales"
[7] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2115-747-SE25 — Mercado Público: OC 2115-747-SE25
    > "Proveniente de Licitación 2115-36-LR24"
    > "TOTAL OC $ 26.863.000"
