# Alejandro Agustín Muñoz Ávalos y Constructora Santa Josefina — pista descartada

- **ID:** `alejandro-munoz-avalos-santa-josefina-slep`
- **Categoría:** compras/relaciones con el Estado
- **Estado:** descartada como caso con la evidencia pública comprobada; no afirmar irregularidad
- **Fecha de trabajo:** 2026-11-17
- **Corte del oro:** `meta.build_date = 2026-11-16T20:17:26+00:00`; consultas de solo lectura con `ec-gold-sql`.
- **Identidad:** nombre completo y cargo constan en InfoProbidad; proveedor coincide por RUT societario 77.711.116-7. No se atribuyen registros por homonimia.

## Pregunta decisiva

¿La venta de Constructora Santa Josefina SpA al SLEP Maule Costa durante la función de Muñoz Ávalos como SEREMI de Agricultura aporta evidencia de un beneficio ligado a su función, de contratación con organismo bajo su competencia o de intervención individual que justifique un caso?

## Hechos comprobados

- InfoProbidad ID 1786616 identifica a Alejandro Agustín Muñoz Ávalos, organismo Subsecretaría de Agricultura, y registra una participación en sociedad. El snapshot del oro del 22-04-2026 lo ubica como SEREMI de Agricultura y registra 100%/control declarado en Constructora Santa Josefina SpA (RUT 77.711.116-7), giro declarado «CONSTRUCCION OBRAS PUBLICAS», valor declarado CLP 70.000.000. La declaración es una foto fechada, no prueba por sí sola la tenencia en fechas anteriores.[1]
- La página oficial de Minagri identifica a Alejandro Muñoz Ávalos como SEREMI de Agricultura de la Región del Maule. InfoProbidad consigna asunción al cargo el 30-03-2022 en la ficha completa; la noticia regional de abril de 2026 indica su presentación como nuevo SEREMI. Estos registros de fechas difieren: no uso el 2022 de la ficha como nombramiento confirmado para el período reciente; la fuente institucional y la noticia acreditan que ejercía en 2026.[1][3][4]
- La ficha primaria de Mercado Público para la OC **1233619-785-SE26**, enviada el 23-06-2026, identifica al proveedor como Santa Josefina SpA, RUT 77.711.116-7, al comprador como Servicio Local de Educación Pública Maule Costa y el estado «Recepción Conforme». Es una orden por CLP 37.385.479 (916,28 UF al corte/fecha fuente del oro), descrita como anexo para aumento de obra y plazo extraordinario de conservación del Liceo Polivalente Enrique Mac Iver. Proviene de la licitación pública **1233619-50-LP25**, no de trato directo.[2]
- La ficha primaria de esa licitación la titula «Proyecto de Conservación Liceo Enrique Mac Iver» y nombra al SLEP Maule Costa como responsable. El procedimiento y su adjudicación preceden al ingreso del SEREMI en abril de 2026; la OC de junio es un anexo/aumento asociado al contrato licitado en 2025.[2][5]
- El oro lista 23 órdenes del proveedor entre 28-07-2023 y 23-06-2026, de varios compradores. En su tabla agregada son CLP 1.988.873.582 totales, no ventas atribuibles a Muñoz: esa suma del proveedor abarca distintos períodos y compradores. La orden de junio de 2026 es la única fila posterior al snapshot declarativo de abril para esta pista. Consultas reproducibles en [2] y el SQL adjunto.
- El comprador no es la Subsecretaría de Agricultura ni un organismo identificado en las fuentes consultadas como subordinado a la SEREMI de Agricultura. La licitación describe conservación de infraestructura escolar, materia de educación pública, no una compra agrícola.

## Explicación legítima más fuerte y límites

Se trata de una empresa constructora que ganó una licitación pública del SLEP Maule Costa en 2025, antes de que Muñoz Ávalos fuera presentado como SEREMI en abril de 2026. La orden de junio de 2026 corresponde a un aumento/anexo de ese contrato, sigue vinculada al proceso público y no es trato directo. La fuente primaria no señala intervención del SEREMI, parentesco, coordinación ni atribución de competencia sobre el SLEP. La proximidad geográfica regional y la sociedad controlada declarada son hechos, no prueba de influencia.

Revisé las primarias de la declaración, OC y licitación; fuentes institucionales de Minagri y el anuncio regional del nombramiento; y las órdenes del proveedor en el oro. No revisé expedientes internos de aprobación del aumento, minutas de abstención o decisiones personales no publicadas. No afirmo que no haya existido intervención: no apareció evidencia que la vincule con la compra en las fuentes consultadas.

## Decisión

**Descartada.** La identidad, la participación declarada y la OC están corroboradas, y el monto es apreciable; sin embargo, no pasa el criterio editorial de nexo funcional concreto: comprador ajeno a la institución del declarante, licitación previa a su llegada al cargo reciente y anexo de contrato, no trato directo. La evidencia no acredita intervención individual ni conexión del proceso escolar con competencias de Agricultura. No abrir borrador con la información disponible.

Reabrir solo ante un acto oficial que identifique una intervención de Muñoz Ávalos en la licitación/anexo, una competencia formal de la SEREMI sobre el SLEP o una resolución/expediente que vincule su decisión con beneficio societario. No reabrir por nuevas búsquedas generales ni por la coincidencia territorial sola.

## Consultas reproducibles

- [`consultas/alejandro-munoz-avalos-santa-josefina-slep-1.sql`](../consultas/alejandro-munoz-avalos-santa-josefina-slep-1.sql): snapshots societarios, todas las OCs gold del proveedor, OC señalada y agregado de proveedor.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1786616 — InfoProbidad; identidad y declaración consultadas. La fecha/cargo y valores societarios se corroboran también contra el snapshot en el oro.

[2] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1233619-785-SE26 — Mercado Público, OC 1233619-785-SE26.

[3] https://minagri.gob.cl/region-del-maule — Ministerio de Agricultura, SEREMI Región del Maule.

[4] https://www.diarioelheraldo.cl/noticia/alejandro-munoz-comenzo-a-delinear-trabajo-al-frente-de-seremi-de-agricultura-del-maule — noticia regional de presentación del nuevo SEREMI, abril de 2026.

[5] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=1233619-50-LP25 — Mercado Público, ficha de licitación 1233619-50-LP25.
