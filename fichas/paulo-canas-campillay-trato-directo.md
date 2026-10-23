# Paulo César Cañas Campillay — Repuestos Cañas Ltda. y compras directas

## Pregunta
¿La participación declarada de Paulo César Cañas Campillay en Repuestos Cañas Ltda. y las compras directas reiteradas de la Municipalidad de La Cisterna durante su servicio público sustentan una pregunta documentada de interés público sobre vínculo funcional o intervención?

## Hechos comprobados

- InfoProbidad, declaración completa presentada el 06-03-2018 (ID 144183), identifica al declarante como **PAULO CESAR CAÑAS CAMPILLAY**, SEREMI de Minería, con asunción informada el 01-02-2017. Declara un **derecho** en Repuestos Cañas Ltda., RUT **76.104.220-3**, 50 %, valor corriente/libro $40.000.000, adquisición 03-06-2004; marca “Tiene Calidad de Controlador: NO”. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=144183
- InfoProbidad, declaración del 14-04-2020 (ID 540890), registra el cargo Consejero Regional del Gobierno Regional Metropolitano de Santiago, asumido 04-12-2019; vuelve a declarar Repuestos Cañas Ltda., RUT 76.104.220-3, 49 %, valor $40.000.000, no controlador. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=540890
- En el oro (corte `2026-10-23T14:20:50+00:00`), la pareja declarada/proveedor aparece con 43 órdenes únicas calificadas `during`, 43 de trato directo por la causal “Costo de evaluación desproporcionado, y por monto de contratación inferior a 100 UTM”, emitidas por un único comprador, la Municipalidad de La Cisterna, entre 2018-03-27 y 2020-12-15; total CLP 13.086.182 (474,81 UF al corte de cada orden). Las 43 figuran aceptadas en el artefacto. SQL reproducible en `consultas/paulo-canas-campillay-trato-directo-1.sql`.
- Se reabrieron órdenes primarias de Mercado Público. La OC 2765-518-SE18 (27-03-2018) identifica proveedor y RUT coincidentes, comprador Municipalidad de La Cisterna, estado Aceptada, causal de costo de evaluación/monto menor a 100 UTM y objeto de repuestos/mantención de vehículos municipales: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2765-518-SE18. La OC 2765-2180-SE18 (29-11-2018) es reparación/mantención de un vehículo municipal, por CLP 1.547.000: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2765-2180-SE18. La OC 2765-804-SE20 (04-05-2020) también identifica el proveedor y causal, por CLP 120.369: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2765-804-SE20.
- El vínculo de identidad societaria no es por nombre solamente: el RUT y DV 76.104.220-3 coinciden entre declaración y fichas primarias de Mercado Público.
- El cruce declara `same_institution = false` en las órdenes (no es NULL). El comprador es la Municipalidad de La Cisterna; las declaraciones sitúan los cargos en la Subsecretaría de Minería y en el Gobierno Regional Metropolitano de Santiago.

## Explicación legítima más fuerte
Las OC documentan adquisiciones municipales ordinarias de repuestos, reparación y mantención de vehículos, tramitadas con causal de monto/ineficiencia de evaluación (inferior a 100 UTM). La autoridad no ejercía en la Municipalidad de La Cisterna. La participación declarada no era de control. Las fuentes examinadas no identifican gestión, decisión, influencia ni intervención personal de Cañas en esas compras.

## Evaluación y decisión
**Descartada.** La recurrencia y la participación societaria son hechos reales, pero no acreditan una relación del proveedor con el órgano donde ejercía ni un nexo funcional de sus cargos con las decisiones de compra de otra municipalidad; tampoco aparece intervención individual. El monto acumulado medido en la ventana relevante es limitado frente al umbral editorial de materialidad, y las compras son repuestos/servicios corrientes. No pasa el requisito de interés público/ne​​xo suficiente para un borrador de caso.

Reabrir solo si aparece documentación primaria que acredite una conexión funcional concreta con La Cisterna, participación de Cañas en la decisión o proceso, un vínculo institucional no visible en los datos consultados, o una inconsistencia sustantiva en las fichas/órdenes primarias. No inferir infracción a partir de la causal de trato directo.

## Fuentes y límites

1. InfoProbidad, declaración 144183 (06-03-2018), fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=144183
2. InfoProbidad, declaración 540890 (14-04-2020), fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=540890
3. Mercado Público, OC 2765-518-SE18, 2765-2180-SE18 y 2765-804-SE20 (fuentes primarias, enlaces arriba).
4. Oro `gold.duckdb`, solo lectura mediante `ec-gold-sql`, corte 2026-10-23T14:20:50+00:00; SQL reproducible archivada.

No se revisaron expedientes/anexos de las 43 órdenes completas ni antecedentes de intervención; la decisión no afirma que no existan, solo que no se halló nexo suficiente en las fuentes primarias reabiertas y la evidencia disponible.