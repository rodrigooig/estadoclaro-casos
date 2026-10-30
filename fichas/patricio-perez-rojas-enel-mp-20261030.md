# patricio-perez-rojas-enel-mp-20261030

## Pregunta decisiva
¿La participación accionaria declarada de Patricio Hernán Pérez Rojas en ENELCHILE se tradujo en compras públicas con un nexo documentado a su función de fiscal adjunto del Ministerio Público?

## Identidad y participación declarada
InfoProbidad muestra la declaración completa de 07-06-2026 de **Patricio Hernán Pérez Rojas**, con cargo de fiscal adjunto del Ministerio Público (fuente 1797522). Registra 4.750 acciones en ENELCHILE, RUT 96.800.570-7, y marca «Tiene Calidad de Controlador: false». La declaración es una foto fechada y autodeclarada; no prueba por sí sola titularidad en fechas distintas.
Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1797522

## Compras públicas
El oro (corte `2026-10-30T15:53:06+00:00`) relaciona el mismo RUT del proveedor Enel Distribución Chile S.A. con 758 órdenes únicas entre 21-03-2017 y 23-10-2026, 79 compradores, 402 órdenes marcadas como trato directo, CLP $49.298.868.413 / 1.524.667,22 UF. La tabla agregada registra cero coincidencias de comprador con la institución del declarante. La participación de 11 declarantes y la ausencia de control individual son límites importantes; la suma de órdenes no es beneficio del declarante.

Muestras abiertas en el registro oficial de Mercado Público:
- OC **449-173-SE17**, 07-04-2017, Municipalidad de La Reina: suministro eléctrico, proveedor Enel Distribución Chile S.A. (RUT 96.800.570-7), CLP $7.199.932 / 271,86 UF; estado «Enviada a proveedor», causal «Si solo existe un proveedor del bien o servicio». https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=449-173-SE17
- OC **2659-296-SE17**, 30-05-2017, Municipalidad de Vitacura: proyecto de soterramiento de redes eléctricas; el mismo RUT de proveedor; CLP $1.750.101.961 / 65.720,99 UF; estado «Enviada a proveedor», causal «Si solo existe un proveedor del bien o servicio». https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2659-296-SE17

## Explicación legítima más fuerte
La explicación ordinaria es que una distribuidora eléctrica vende suministro y ejecuta trabajos de red para diversos compradores públicos. Las dos órdenes revisadas tienen esos objetos. Son de municipalidades, no del Ministerio Público; el cargo del declarante no documenta atribución sobre contratación municipal. La marca de trato directo y el monto de la obra son datos del proceso, pero no acreditan intervención de Pérez Rojas.

## Fuentes y método
- InfoProbidad: declaración primaria, URL arriba, consultada el 30-10-2026.
- Mercado Público: registros primarios de las dos órdenes enlazadas, consultados el 30-10-2026.
- Oro EstadoClaro: `declared_supply` y `purchase_order`; SQL reproducible en `consultas/patricio-perez-rojas-enel-mp-20261030-1.sql`; corte `meta.build_date` = `2026-10-30T15:53:06+00:00`.
- Consultas solo lectura con `ec-gold-sql`. `declared_supply_order` contiene órdenes narrables, no el universo completo; por eso la agregación se cotejó directamente contra `purchase_order` y se usó `COUNT(DISTINCT order_code)`.

## Decisión
**Descartada.** A pesar de la materialidad agregada, no aparece compra al Ministerio Público ni evidencia primaria de intervención, decisión o beneficio personal. El dato describe una participación accionaria declarada no controladora y ventas comerciales de Enel Distribución a compradores públicos ajenos a su institución.

Reabrir solo ante un expediente primario que vincule al fiscal con una decisión, investigación o intervención concreta sobre estas compras/proveedor, o prueba de beneficio funcional distinto de la mera participación declarada.
