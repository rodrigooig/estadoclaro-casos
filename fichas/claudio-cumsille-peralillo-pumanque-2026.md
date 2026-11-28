# Claudio Cumsille Chomalí — proveedor de combustible contratado por Pumanque

**Estado:** descartada  
**Fecha:** 2026-11-28  
**Corte del oro:** `meta.build_date = 2026-11-27T21:06:24+00:00`  
**Pregunta decisiva:** ¿Existe una relación funcional documentada entre la función de Claudio Cumsille como alcalde de Peralillo y las compras al proveedor que declaró, o un beneficio ligado a decisiones de Peralillo?

## Hechos comprobados

- InfoProbidad, declaración 1538264, fechada 25-09-2025, identifica a CLAUDIO CUMSILLE CHOMALI como alcalde de la Municipalidad de Peralillo, con asunción 06-12-2024. La declaración registra 100% de participación en SOCIEDAD DE COMBUSTIBLES CLAUDIO CUMSILLE CHOMALI E.I.R.L. (RUT 76.178.611-3), adquirida 14-10-2011, valor corriente en plaza/libro declarado de CLP $450.000.000; la fuente marca «Tiene Calidad de Controlador: false» pese al 100%, así que aquí no se infiere control legal.
- La declaración InfoProbidad 1950807, rectificación de 18-11-2026, muestra para una sociedad con nombre similar otro RUT: SOCIEDAD DE COMBUSTIBLES CLAUDIO CUMSILLE CHOMALI EIRL, RUT 78.280.138-4, 100%, adquirida 23-10-2025, valor CLP $80.000. No se atribuye esta entidad al proveedor RUT 76.178.611-3 ni se supone que sea la misma sociedad. La identidad exacta del proveedor se sostiene por la coincidencia del RUT antiguo declarado en 1538264 con el RUT de Mercado Público.
- Mercado Público publica la licitación 3699-4-B226, «Suministro combustible año 2026 y 2027», de la Municipalidad de Pumanque, como licitación privada adjudicada; fechas del proceso: publicación 30-01-2026 y adjudicación 12-03-2026. Ficha: https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=3699-4-B226
- Orden oficial 3699-88-SE26 (29-05-2026) atribuye al proveedor SOCIEDAD DE COMBUSTIBLES CLAUDIO CUMSILLE CHOMALI, RUT 76.178.611-3, gasolina para la Municipalidad de Pumanque, total CLP $8.580.443 con IVA, estado «Aceptada», procedente de la licitación privada 3699-4-B226: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3699-88-SE26
- El oro, tabla `purchase_order`, registra 11 órdenes no canceladas de ese RUT en 2025–2026: 3 en 2025 por CLP $1.300.748 (32,94 UF) y 8 en 2026 por CLP $50.378.084 (1.235,75 UF). Todos los compradores son la Municipalidad de Pumanque. No se encuentra ninguna orden de ese RUT cuyo comprador sea Municipalidad de Peralillo (consulta sobre todo el universo de `purchase_order`). La cifra UF es la de las filas del oro, que usa la UF de la fecha de envío.

## Explicación legítima más fuerte y contraste

La compra es suministro de gasolina a una municipalidad distinta de aquella que dirige Cumsille. La orden 3699-88-SE26 proviene de una licitación privada, no de una adjudicación directa. La licitación adjudicada fue convocada por Pumanque y la ficha de ChileCompra la tipifica B2 (licitación privada); una fuente secundaria que reproduce los datos informa un oferente. Las órdenes del período descritas en el oro y la fuente primaria disponible son combustibles para vehículos municipales. Es consistente con un proveedor local contratado por el municipio comprador; no hay evidencia primaria de participación de Cumsille en las decisiones de Pumanque, de relación jerárquica o de compra por Peralillo.

## Fuentes primarias revisadas

- InfoProbidad, DIP 1538264, actualización del 25-09-2025: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1538264
- InfoProbidad, DIP 1950807, rectificación del 18-11-2026: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1950807
- ChileCompra/Mercado Público, ficha de licitación 3699-4-B226: https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=3699-4-B226
- Mercado Público, OCs 3699-88-SE26 y 3699-228-SE26: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3699-88-SE26 ; http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3699-228-SE26
- Consulta reproducible del oro: `consultas/claudio-cumsille-peralillo-pumanque-2026-1.sql`.

## Límites y decisión

No se encontró un nexo funcional entre el cargo en Peralillo y compras de Pumanque, comprador distinto; tampoco órdenes al proveedor por Peralillo. La transacción de varios meses y la participación declarada verifican una relación societaria/proveedor, no intervención personal ni beneficio derivado de atribuciones municipales. La diferencia de RUT entre las declaraciones 1538264 y 1950807 requiere cautela adicional y no se interpreta aquí como continuidad o transferencia.

**Decisión: descartada.** No alcanza la pregunta editorial de interés público ligada a la función, pese a la materialidad de las compras al proveedor. Reabrir solo si aparece evidencia primaria de compra por Peralillo, participación de Cumsille en el proceso de Pumanque, coordinación/decisión intermunicipal pertinente o documentación oficial que pruebe la continuidad societaria bajo el RUT distinto y un nexo funcional concreto.
