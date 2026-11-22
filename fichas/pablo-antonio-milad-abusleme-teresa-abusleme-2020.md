# Pablo Antonio Milad Abusleme — órdenes de emergencia a Teresa Abusleme y Cía. (2020)

## Pregunta decisiva
¿Las dos órdenes de compra por emergencia de la Municipalidad de Curicó a TERESA ABUSLEME Y COMPAÑÍA LIMITADA, en septiembre de 2020, acreditan un nexo funcional o intervención de Pablo Antonio Milad Abusleme que amerite un caso, considerando que declaró controlar esa sociedad y fue Intendente del Maule hasta junio de 2020?

## Hechos comprobados

- **Identidad y declaración primaria.** InfoProbidad, declaración 524560, identifica a PABLO ANTONIO MILAD ABUSLEME, cargo Intendente, Servicio de Gobierno Interior, región del Maule; declaración de rectificación fechada 31-03-2020, asunción 11-03-2018. Allí declara derecho del 10% en TERESA ABUSLEME Y CIA LTDA, RUT 77.042.170-5, giro de distribución de aves, cerdos, cecinas, huevos y lácteos; valor corriente declarado CLP $313.191.572 y marca «Tiene Calidad de Controlador: SI». La declaración es una foto fechada, no prueba por sí sola que el porcentaje/control siguiera igual en septiembre. InfoProbidad también presenta la declaración periódica 488448, 30-03-2020, con la misma empresa, RUT, 10% y control.
- **Órdenes primarias.** Mercado Público registra dos órdenes al mismo RUT de TERESA ABUSLEME Y COMPANIA LIMITADA, ambas de la Municipalidad de Curicó y con estado «Enviada a proveedor»: 2436-1313-SE20, enviada 08-09-2020, total CLP $23.498.882 en la página (el oro registra CLP $23.498.883), y 2436-1333-SE20, enviada 10-09-2020, total CLP $4.144.185. Ambas señalan la causal «Emergencia, urgencia o imprevisto» y describen compra de trutros de pollo para cocinas solidarias de juntas vecinales durante la emergencia por COVID-19. La primera cita SP 291565 de 13-07-2020 y Decreto Exento 3147 de 07-09-2020; la segunda cita SP 280798 de 06-08-2020. El estado no acredita pago ni recepción conforme.
- **Magnitud.** Las páginas primarias suman CLP $27.643.067. El oro, deduplicado por orden, registra dos órdenes y 963,60 UF sumadas con el valor de UF de cada fecha; su agregado CLP difiere en CLP $1 por el registro de la primera OC. Se informa aproximadamente CLP $27,64 millones / 963,60 UF, no como pago percibido.
- **Cese del cargo.** El Ministerio del Interior informó el 01-06-2020 que el Presidente aceptó la renuncia de Milad y que continuaría en el cargo hasta el 03-06-2020. Las solicitudes citadas por las OCs (13-07 y 06-08) y las órdenes (08 y 10-09) son posteriores al cese.
- **Entidad.** El RUT 77.042.170-5 identifica la misma razón social en InfoProbidad y en las páginas de Mercado Público. El giro declarado de distribución de alimentos es congruente con el objeto de las compras; no es una atribución inferida por parecido de nombres.
- **Cruce del oro.** `declared_supply_order` vincula las dos OCs al RUT de la sociedad y a las declaraciones de Milad; `same_institution = false` y comprador Curicó, no Servicio de Gobierno Interior. No se encontró una orden al servicio donde ejercía. Consulta reproducible: `consultas/pablo-antonio-milad-abusleme-teresa-abusleme-2020-1.sql`.

## Explicación legítima más fuerte y prueba adversarial

La explicación legítima más fuerte está en las propias órdenes: Curicó adquirió alimentos para cocinas solidarias por una emergencia concreta de COVID-19; las solicitudes y facturas consignadas preceden a la emisión de cada OC y el giro declarado de la empresa incluía distribución de aves y otros alimentos. Además, Milad ya había dejado la Intendencia más de tres meses antes de las solicitudes y órdenes visibles. Revisé lo que podía confirmar o refutar el núcleo: identidad/RUT, participación autodeclarada, comprador, fechas, estado y causal en las primarias, y fecha oficial de renuncia.

## Límites y decisión

La coincidencia temporal relevante es entre la participación que Milad declaró en marzo de 2020 y compras posteriores de una municipalidad de la misma región; no es una contratación a la Intendencia donde ejerció. La evidencia primaria sitúa las solicitudes después de su salida. No se ha probado que participara en el diseño, autorización, adjudicación, entrega o pago de las compras, que hubiera influido desde su antiguo cargo, que las órdenes estuvieran divididas irregularmente o que existiera una relación entre su actuación como Intendente y las necesidades de Curicó. Las páginas muestran un propósito asistencial explícito y bienes que corresponden al giro declarado. Por falta de nexo funcional contemporáneo o anomalía concreta del procedimiento, no pasa el umbral editorial; se descarta, sin insinuar irregularidad.

**Qué reabriría:** expediente o acto municipal primario que pruebe intervención personal de Milad, coordinación específica desde la Intendencia sobre estas compras/proveedores, solicitud o compromiso de compra iniciado durante su mandato, o evidencia primaria de irregularidad concreta en las órdenes, sus cotizaciones, recepción o pago. También reabriría una corrección si documentos oficiales cambian las fechas, el RUT o el estado.

## Fuentes

1. InfoProbidad, declaración 524560 (31-03-2020): https://www.infoprobidad.cl/Declaracion/Declaracion?ID=524560
2. InfoProbidad, declaración 488448 (30-03-2020): https://www.infoprobidad.cl/Declaracion/Declaracion?ID=488448
3. Mercado Público, OC 2436-1313-SE20: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2436-1313-SE20
4. Mercado Público, OC 2436-1333-SE20: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2436-1333-SE20
5. Ministerio del Interior, anuncio de renuncia de Pablo Milad, 01-06-2020: https://interior.gob.cl/noticias/2020/06/01/intendente-del-maule-pablo-milad-presenta-renuncia-a-su-cargo
6. Ley Chile/BCN, Ley 19.886, artículo 35 quáter (texto vigente posterior, no aplicado retroactivamente a las compras de 2020): https://bcn.cl/leychile/navegar?idNorma=213004&idVersion=2023-12-11
7. Cálculo reproducible: `consultas/pablo-antonio-milad-abusleme-teresa-abusleme-2020-1.sql`; oro `meta.build_date` = `2026-11-22T04:10:18+00:00`.
