# patricio-perez-rojas-enel-mp-20261030

## Pregunta decisiva
¿La participación accionaria declarada de Patricio Hernán Pérez Rojas en ENELCHILE se tradujo en compras públicas con un nexo documentado a su función de fiscal adjunto del Ministerio Público?

## Identidad y participación declarada
InfoProbidad muestra dos primarias de **Patricio Hernán Pérez Rojas** en el Ministerio Público: el 21-03-2017 (fuente 45151, cargo Fiscal Adjunto Jefe) y el 07-06-2026 (fuente 1797522, cargo Fiscal Adjunto). Ambas registran 4.750 acciones de ENELCHILE, RUT 96.800.570-7, con fecha de adquisición 16-05-2004; la declaración de 2017 marca «Tiene Calidad de Controlador: SI» y la de 2026 «false». La divergencia es real en los documentos primarios y no está explicada; no es correcto tratar la participación como inequívocamente controladora ni no controladora. Las declaraciones son fotos fechadas y autodeclaradas.
Fuentes primarias: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=45151 · https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1797522

## Compras públicas
El oro (corte `2026-10-30T15:53:06+00:00`) relaciona el mismo RUT del proveedor Enel Distribución Chile S.A. con 758 órdenes únicas entre 21-03-2017 y 23-10-2026, 79 compradores, 402 órdenes marcadas como trato directo, CLP $49.298.868.413 / 1.524.667,22 UF. La tabla agregada registra cero coincidencias de comprador con la institución del declarante. La declaración de 2017 ubica una de las primarias del período el mismo día en que fue presentada; la de 2026 acredita de nuevo las mismas 4.750 acciones, pero cambia el campo de control. El total de órdenes no es beneficio del declarante.

Muestras abiertas en el registro oficial de Mercado Público:
- OC **449-173-SE17**, 07-04-2017, Municipalidad de La Reina: suministro eléctrico, proveedor Enel Distribución Chile S.A. (RUT 96.800.570-7), CLP $7.199.932 / 271,86 UF; estado «Enviada a proveedor», causal «Si solo existe un proveedor del bien o servicio». https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=449-173-SE17
- OC **2659-296-SE17**, 30-05-2017, Municipalidad de Vitacura: proyecto de soterramiento de redes eléctricas; el mismo RUT de proveedor; CLP $1.750.101.961 / 65.720,99 UF; estado «Enviada a proveedor», causal «Si solo existe un proveedor del bien o servicio». https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2659-296-SE17

## Explicación legítima más fuerte
La explicación ordinaria es que una distribuidora eléctrica vende suministro y ejecuta trabajos de red para diversos compradores públicos. Las dos órdenes revisadas tienen esos objetos. Son de municipalidades, no del Ministerio Público; el cargo del declarante no documenta atribución sobre contratación municipal. La marca de trato directo y el monto de la obra son datos del proceso, pero no acreditan intervención de Pérez Rojas.

## Fuentes y método
- InfoProbidad: declaraciones primarias 45151 (21-03-2017) y 1797522 (07-06-2026), URLs arriba; ambas registran cantidad 4.750 y adquisición 16-05-2004; el campo «controlador» discrepa (SI vs false).
- Mercado Público: registros primarios de las dos órdenes enlazadas, consultados el 30-10-2026.
- Oro EstadoClaro: `company`, `declared_supply` y `purchase_order`; SQL reproducible en `consultas/patricio-perez-rojas-enel-mp-20261030-1.sql`; corte `meta.build_date` = `2026-10-30T15:53:06+00:00`.
- Consultas solo lectura con `ec-gold-sql`. `declared_supply_order` contiene órdenes narrables, no el universo completo; por eso la agregación se cotejó directamente contra `purchase_order` y se usó `COUNT(DISTINCT order_code)`. En la ficha base del oro, dos filas enlazan las mismas 4.750 acciones con las fuentes y reproducen el cambio de indicador.

## Decisión
**Descartada.** La diferencia del campo «controlador» entre las primarias de 2017 y 2026 amerita advertir el límite, pero no basta para afirmar control efectivo ni una irregularidad; se mantiene la misma cantidad declarada. A pesar de la materialidad agregada, no aparece compra al Ministerio Público ni evidencia primaria de intervención, decisión o beneficio personal. Reabrir si una fuente oficial explica la divergencia o acredita control efectivo relevante en el período y, además, se documenta nexo funcional con una compra/decisión; también ante expediente primario que vincule al fiscal con intervención sobre estas compras o proveedor.
