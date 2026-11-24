# Ficha — Felipe Cañoles y compras directas de Lawal Capacitaciones

- **ID:** `felipe-canoles-lawal-trato-directo-2017-2019`
- **Categoría:** compras/relaciones con el Estado; intereses societarios.
- **Estado:** descartada.
- **Fecha de cierre:** 2026-11-24.
- **Corte del oro:** `meta.build_date = 2026-11-22T04:10:18+00:00`.
- **Origen:** nueva pista de la pantalla `trato_directo` del pre-run del 2026-11-24; seleccionada por cinco OCs y cuatro compradores durante el cargo declarado, con fuente primaria accesible.

## Pregunta decisiva

¿Las ventas directas de LAWAL CAPACITACIONES E.I.R.L. a organismos públicos durante el ejercicio de Felipe Ignacio Cañoles Cañoles como concejal de La Unión aportan una pregunta de interés público material, más allá de una coincidencia comercial, y acreditan algún vínculo con su función o intervención?

## Hechos comprobados

- InfoProbidad identifica a **FELIPE IGNACIO CAÑOLES CAÑOLES**, cargo de concejal en la Municipalidad de La Unión y asunción declarada el 06-12-2016. Su declaración del 02-04-2018 consigna LAWAL CAPACITACIONE E.I.R.L., RUT 76.439.524-7, 100 acciones/cantidad, adquisición 01-09-2015 y valor libro CLP $2.000.000. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=136402
- La rectificación de 06-03-2020 de InfoProbidad vuelve a declarar participación de 100 en LAWAL CAPACITACIONE S.P.A., RUT 76.439.524-7, controlador «SI», valor libro CLP $2.000.000. La diferencia E.I.R.L./S.P.A. entre registros queda descrita, no resuelta; el RUT coincide. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=455796
- El oro, por RUT societario y ventana `during`, vincula cinco órdenes de trato directo a esa sociedad entre 04-12-2017 y 18-10-2019, de cuatro compradores, por CLP $1.800.000 en conjunto (64,94 UF en el artefacto). La consulta devuelve cero órdenes `same_institution = true`; comprador nunca es la Municipalidad de La Unión. Hay que evitar confundir esta suma del gold con un total auditado/pagado: una ficha primaria está «Enviada a proveedor» y otra «En proceso».
- Las cinco fichas primarias de Mercado Público identifican al proveedor como LAWAL CAPACITACIONES E.I.R.L., RUT 76.439.524-7:
  - 04-12-2017, OC 2546-1087-SE17: Municipalidad de Padre Las Casas, CLP $290.000; causal «Si solo existe un proveedor del bien o servicio»; inscripción a capacitación de un concejal.
  - 19-10-2018, OC 5657-451-SE18: CONAF, CLP $220.000; causal de evaluación desproporcionada y monto inferior a 100 UTM; capacitación de obreras PEE Ranco; estado «Enviada a proveedor».
  - 25-06-2019, OC 3890-497-SE19: Municipalidad de Freire, CLP $400.000; causal de proveedor único; capacitación de concejal.
  - 16-10-2019, OC 3479-1543-SE19: Municipalidad de Calbuco, CLP $390.000; causal de proveedor único; inscripción a un curso sobre rol del concejo municipal y deporte para dos concejales; estado «En proceso».
  - 18-10-2019, OC 909103-408-SE19: CONAF, CLP $500.000; causal de evaluación desproporcionada y monto inferior a 100 UTM; servicio de inducción en herramientas y primeros auxilios para personal PEE; estado «Aceptada».
- Fuentes primarias OC: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2546-1087-SE17 ; https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=5657-451-SE18 ; https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3890-497-SE19 ; https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3479-1543-SE19 ; https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=909103-408-SE19
- En el oro, la consulta de campañas para el person_id correspondiente devuelve cero filas. No se atribuyen gastos, ingresos ni vínculos electorales. No se halló una línea Servel aplicable a este hecho de contratación.

## Explicación legítima más fuerte y límites

Las OCs describen capacitaciones e inscripciones de bajo monto contratadas por cuatro organismos distintos de la Municipalidad de La Unión. Las causales publicadas son proveedor único o costo de evaluación desproporcionado por montos inferiores a 100 UTM; no son por sí mismas prueba de irregularidad. Aunque algunos cursos se dirigen a concejales y su tema guarda relación temática con el cargo de Cañoles, las fichas no muestran que él haya impartido el servicio, propuesto/seleccionado al proveedor o intervenido en las compras. Tampoco demuestran pago efectivo de las dos OCs que aún figuran en estados previos a la recepción conforme.

## Decisión

**Descartada.** Está acreditada la participación societaria autodeclarada y el vínculo de identidad proveedor por RUT, además de cinco órdenes directas durante el período de concejal. Pero el importe total es bajo (CLP $1.800.000; 64,94 UF), ninguna compra corresponde al municipio donde ejercía, y no hay evidencia primaria de intervención personal o de un beneficio individual. El nexo temático —la compañía vendió capacitación a otros concejales— hace la pista comprobable, pero no supera por sí solo el umbral de materialidad e interés público editorial. No se afirma infracción, conflicto de interés ni pago al declarante.

**Qué la reabriría:** una resolución/expediente primario que pruebe participación de Cañoles en la contratación o selección de proveedor; prueba de que él prestó personalmente los servicios o recibió ingresos vinculados; una compra de su propio municipio; o nuevas órdenes primarias de escala suficiente que eleven materialmente el patrón.

## Consulta

[`consultas/felipe-canoles-lawal-trato-directo-2017-2019-1.sql`](../consultas/felipe-canoles-lawal-trato-directo-2017-2019-1.sql). Solo `ec-gold-sql`; corte `2026-11-22T04:10:18+00:00`.
