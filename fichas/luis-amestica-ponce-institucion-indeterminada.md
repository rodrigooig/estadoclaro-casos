# Luis Amestica Ponce — Amestica Limitada y compras de bajo monto a tres organismos

## Pregunta
¿Las órdenes emitidas a Amestica Limitada durante el cargo directivo declarado por Luis Amestica Ponce en Coihueco documentan una conexión funcional con su institución, intervención individual o una pregunta material de interés público?

## Hechos comprobados

- InfoProbidad, declaración completa presentada el 11-07-2024, identifica a **LUIS AMESTICA PONCE** como Directivo de la Municipalidad de Coihueco, con fecha de asunción declarada 29-07-2024. La misma declaración registra actividad laboral remunerada de administrador de empresas para AMESTICA LTDA, RUT **76.508.960-3**, y un **derecho del 50%** en AMESTICA LIMITADA, con fecha de adquisición 10-04-2006, valor corriente/libro $50.000.000 y controlador = NO. Fuente primaria: https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=d9c4d08c28dae061c0ba32e87e27ff57
- El oro (corte `2026-10-23T14:20:50+00:00`) relaciona por RUT a esa sociedad con tres órdenes durante la ventana: 03-01-2025, 31-01-2025 y 12-02-2025. Monto sumado en el oro: CLP 1.499.400, equivalente a 39,06 UF según los valores por orden. Las tres figuran con estado Recepción Conforme y son de compradores distintos; ninguna es Coihueco. SQL reproducible: `consultas/luis-amestica-ponce-institucion-indeterminada-1.sql`.
- La OC **1020-25-TD25**, enviada el 31-01-2025, identifica al proveedor como AMESTICA, RUT **76.508.960-3**, y al comprador como MOP Subsecretaría. Estado: Recepción Conforme. La página indica causal de emergencia, urgencia o imprevisto; el ítem es una cañería para filtraciones y reparación de agua potable en dependencias de Playa Gálvez. Total CLP 886.550 (23,10 UF en el oro). Fuente primaria: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1020-25-TD25
- La OC **5178-26-AG25**, de 03-01-2025, identifica el mismo RUT y a Universidad de Chile como comprador; mantención de cámaras de alcantarillado, compra ágil, con cuatro cotizaciones listadas; total CLP 315.350 (8,21 UF). Fuente primaria: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=5178-26-AG25
- La OC **685-14-AG25**, de 12-02-2025, identifica el mismo RUT y a la SEREMI de Bienes Nacionales RM; detección de fuga de agua, compra ágil; total CLP 297.500 (7,75 UF). Fuente primaria: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=685-14-AG25
- La identidad sociedad/proveedor se confirma por el RUT/DV compartido, no solo por similitud de nombre. El oro deja `same_institution` como NULL para la orden del MOP, que significa «no se pudo determinar»; no se cuenta como coincidencia. En las otras órdenes, los compradores son Universidad de Chile y Bienes Nacionales, no Coihueco.

## Explicación legítima más fuerte y límites

Las páginas primarias describen trabajos de gasfitería, alcantarillado y reparación de cañería de agua potable, comprados por tres organismos diferentes. La orden universitaria registra cuatro cotizantes. La orden del MOP invoca emergencia/urgencia, pero el detalle abierto no permite evaluar por sí solo el expediente justificativo completo. No hay evidencia revisada de que Amestica decidiera, influyera o interviniera en las compras, ni de que su cargo en Coihueco tuviera competencia sobre los organismos compradores. No se revisaron los anexos completos del MOP ni antecedentes personales de intervención.

## Decisión

**Descartada.** La participación y actividad laboral declaradas, y las tres compras a proveedores con el mismo RUT, quedan corroboradas. Sin embargo, ninguna compra fue al propio municipio; el total de la ventana es acotado (CLP 1.499.400; 39,06 UF), los compradores son tres organismos distintos y las fuentes reabiertas no acreditan nexo funcional ni intervención individual. El carácter de trato directo de una única compra, por sí solo, no demuestra irregularidad ni basta para un caso.

Reabrir si un expediente u otra fuente primaria acredita una conexión funcional concreta entre su cargo municipal y alguna compra, intervención individual del declarante, o una contratación de Coihueco atribuible a esta sociedad que las órdenes revisadas no recojan.

## Fuentes y método

1. InfoProbidad, declaración completa de Luis Amestica Ponce, 11-07-2024: https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=d9c4d08c28dae061c0ba32e87e27ff57
2. Mercado Público, órdenes 1020-25-TD25, 5178-26-AG25 y 685-14-AG25 (enlaces en los hechos).
3. Oro `gold.duckdb`, solo lectura mediante `ec-gold-sql`, corte 2026-10-23T14:20:50+00:00. SQL en `consultas/luis-amestica-ponce-institucion-indeterminada-1.sql`.
4. La pista fue la lista pre-run `institucion_indeterminada`; los otros candidatos se registran en `tmp/runs/20261024T015900Z/triage.md`.
