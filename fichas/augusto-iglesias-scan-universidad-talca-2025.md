# Augusto Iglesias Palau — SCAN y una orden de la Universidad de Talca

## Pregunta decisiva
¿La participación declarada por Augusto Iglesias Palau en SCAN y una venta de esa sociedad al Estado durante su período como comisionado de la CMF contienen un nexo funcional o un beneficio material que amerite seguimiento editorial?

## Hechos comprobados
- InfoProbidad 1464929, actualización presentada el 01-04-2025, identifica a Augusto Iglesias Palau como comisionado de la Comisión para el Mercado Financiero (asume el 08-10-2020). En la sección de sociedades que aparecen vinculadas a la declaración registra una acción en SCAN, RUT 96.727.470-4, cantidad consignada «4.2», giro «ESTUDIOS DE MERCADO», adquisición 15-12-2008, sin gravámenes y «Tiene Calidad de Controlador: false». La cantidad se transcribe como aparece; no se infiere porcentaje ni control personal. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1464929
- La consulta del oro sitúa esa fila bajo IGLESIAS Y ASOCIADOS SPA (37,5 en el campo `quantity`) y cruza el RUT 96.727.470 con una orden dentro de la ventana de la declaración. La consulta reproducible está en `consultas/augusto-iglesias-scan-universidad-talca-2025-1.sql`; corte del oro `2026-11-26T01:01:56+00:00`. El vínculo estructural del oro no establece por sí solo el valor económico atribuible a Iglesias.
- La orden primaria 1469-3297-SE25 identifica proveedor EVALUACION ESTRATEGICA DE MARKETING SCAN S A, RUT 96.727.470-4; comprador Universidad de Talca; fecha de envío 27-10-2025; estado «Aceptada»; procedencia de licitación pública 1469-224-L125; total CLP $6.900.000 (174,34 UF en el registro del oro). El objeto se describe como «SERVICIO DE ESTUDIO DE POSICIONAMIENTO DE MARCA PARA LA UNIVERSIDAD DE TALCA», por valor neto CLP $5.798.319 más IVA. Fuente primaria: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1469-3297-SE25
- La CMF anunció el 08-04-2025 que Iglesias era comisionado desde octubre de 2020 y asumía la vicepresidencia. Fuente institucional: https://www.cmfchile.cl/portal/principal/623/w4-article-93176.html
- La consulta oro `campaign` por el identificador de persona devuelve 0 filas Servel asociadas a Iglesias. No se halló vínculo electoral en esa tabla; no se afirma que se hayan agotado todas las fuentes de Servel fuera del oro.

## Explicación legítima y límites
La declaración califica la participación de SCAN como no controladora y su giro declarado como estudios de mercado. Mercado Público identifica el mismo RUT en un contrato para posicionamiento de marca de una universidad, originado en licitación pública; es compatible con una prestación comercial ordinaria de investigación/marketing. El comprador es la Universidad de Talca, no la CMF. La primaria revisada no acredita que Iglesias haya intervenido en la orden ni que la prestación tuviera relación con una decisión regulatoria de la CMF. Tampoco permite concluir que SCAN sea una clasificadora de riesgo: el contrato identifica otra razón social y un servicio de marketing.

## Decisión
**Descartada.** La coincidencia societaria y la orden son comprobables, pero la evidencia primaria apunta a un estudio de posicionamiento de marca para una universidad mediante licitación pública; no se acredita nexo entre la función regulatoria en CMF y la compra, ni intervención individual. La cantidad «4.2» se reporta como dato declarado sin convertirla en porcentaje. Sin esos eslabones, el caso no supera el umbral editorial de nexo función–beneficio.

Reabrir solo si aparece una fuente primaria que vincule una decisión concreta de la CMF con SCAN/EVALUACION ESTRATEGICA DE MARKETING SCAN S A, o un expediente de la licitación/ejecución que documente intervención de Iglesias o una prestación directamente relacionada con sus competencias regulatorias.

## Fuentes
- InfoProbidad 1464929 (declaración, 01-04-2025): https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1464929
- InfoProbidad 1276280 (rectificación voluntaria, 25-09-2024): https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1276280
- Mercado Público, orden 1469-3297-SE25: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1469-3297-SE25
- CMF, anuncio de vicepresidencia (08-04-2025): https://www.cmfchile.cl/portal/principal/623/w4-article-93176.html
- SQL reproducible del oro: `consultas/augusto-iglesias-scan-universidad-talca-2025-1.sql`
