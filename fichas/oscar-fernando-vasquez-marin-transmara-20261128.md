# Oscar Fernando Vásquez Marín — participación declarada en Transportes Maquinarias y Áridos SpA

**Estado:** descartada  
**Fecha de cierre:** 2026-11-28  
**Corte del oro:** `2026-11-27T21:06:24+00:00`

## Pregunta decisiva
¿La participación declarada del juez Oscar Fernando Vásquez Marín en Transportes Maquinarias y Áridos SpA, proveedora del Estado, muestra una compra del Poder Judicial, intervención funcional o beneficio personal material que justifique un caso para auditoría?

## Hechos comprobados

- InfoProbidad identifica a **Oscar Fernando Vásquez Marín** como juez del Poder Judicial en Talca. La declaración ID **5123993**, presentada el 23-09-2026, informa asunción el 22-03-2017. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5123993
- Esa declaración registra el valor **7** en el campo «Cantidad / Porcentaje» de los derechos en **Transportes Maquinarias y Áridos SpA**, RUT **78.654.420-3**, adquiridos el 29-11-2018, valor declarado CLP **$1.200.000**; el propio formulario marca «Tiene Calidad de Controlador: false». El campo no especifica la unidad, así que no se afirma que sea 7%. El RUT del proveedor publicado por Mercado Público es 78.654.420-3, por lo que la coincidencia de sociedad descansa en el identificador y no en similitud nominal.
- La consulta reproducible `consultas/oscar-fernando-vasquez-marin-transmara-20261128-1.sql`, sobre el oro de ese corte, obtiene **121 órdenes únicas** dentro de las ventanas que las declaraciones acreditan, entre 12-04-2019 y 13-11-2026: CLP **$438.929.029** (12.242,72 UF sumadas por fecha). Son montos de órdenes de la sociedad, no pagos ni ingresos personales atribuidos al declarante.
- En ese conjunto, `same_institution = false` en 120 órdenes; en una orden (`2047-150-SE23`) es NULL, es decir, **no se pudo determinar**. La ficha primaria de esa orden nombra como comprador a la Delegación Presidencial Provincial de Linares y describe rehabilitación de un camino vecinal en Retiro; no identifica al Poder Judicial ni a Vásquez como interviniente. Fuente: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2047-150-SE23
- Como contraste primario, la OC **1291-21-SE25** (09-06-2025) identifica al proveedor por el mismo RUT y una compra de 3.700 m³ de material granular por la Dirección de Vialidad del MOP, vía licitación pública, total CLP **$51.074.800** (1.302,52 UF). Fuente: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1291-21-SE25
- La OC **3013-736-SE26** (10-09-2026) es una compra de materiales pétreos de la Municipalidad de Retiro, recepción conforme, CLP **$4.617.200** (112,91 UF), proveniente de licitación pública. Fuente: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3013-736-SE26
- La OC **4085-756-AG26** (13-11-2026) registra CLP **$6.797.280** (164,49 UF) de la Municipalidad de Longaví para 672 m³ de base estabilizada destinada a caminos rurales; al corte consultado su estado era «Enviada a proveedor», no recepción conforme. Fuente: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4085-756-AG26

## Explicación legítima más fuerte
La declaración registra una participación minoritaria no controladora y un valor declarado de CLP $1.200.000. Las órdenes primarias examinadas describen áridos, material granular y rehabilitación de caminos, comprados por Vialidad y municipalidades mediante licitaciones públicas; la última orden citada ni siquiera constaba recibida. Es coherente con la actividad comercial de la sociedad y no acredita una ventaja personal del juez.

## Límites de la comprobación
Se reabrieron la declaración de InfoProbidad y cuatro fichas primarias de órdenes (incluida la única con `same_institution` NULL). El agregado de 121 órdenes procede del oro; no se abrieron las fichas primarias de las 121. La ausencia de una orden identificada como del Poder Judicial en esas filas no prueba que no haya existido ninguna compra fuera del universo enlazado. Tampoco se encontró evidencia primaria de que Vásquez haya intervenido en licitaciones, compras o decisiones de compradores distintos de su organismo.

## Decisión
**Descartada.** La titularidad declarada y el volumen agregado de ventas públicas son hechos verificables, pero la participación es no controladora, no se documenta una compra al Poder Judicial ni intervención funcional del juez y las órdenes abiertas corresponden a abastecimiento ordinario de áridos/obras viales. No pasa el umbral de interés público ligado a función/beneficio requerido para un caso editorial; no se infiere conflicto, infracción o beneficio personal.

**Reabrir si:** una primaria prueba una compra del Poder Judicial a la sociedad, la participación del juez en una causa o decisión que afecte a la empresa/algún comprador, una intervención suya en la contratación, o un beneficio personal verificable vinculado a esas órdenes. La fila NULL no se tratará como «no hubo» ni como una compra judicial: por sí sola no resuelve el nexo.

## Fuentes y reproducibilidad

1. InfoProbidad, declaración completa ID 5123993, 23-09-2026: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5123993
2. Mercado Público, OC 1291-21-SE25: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1291-21-SE25
3. Mercado Público, OC 3013-736-SE26: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3013-736-SE26
4. Mercado Público, OC 4085-756-AG26: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4085-756-AG26
5. Mercado Público, OC 2047-150-SE23: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2047-150-SE23
6. Oro EstadoClaro: `meta.build_date` = `2026-11-27T21:06:24+00:00`; consulta reproducible: `consultas/oscar-fernando-vasquez-marin-transmara-20261128-1.sql`.
