# Julio Mario Angulo Matamala — compras de servicios registrales por SERVIU XI Región

- **ID:** `julio-angulo-serviu-servicios-cbr-2020`
- **Categoría:** compras/relaciones con el Estado; patrimonio e intereses.
- **Estado:** descartada.
- **Fecha de trabajo:** 2026-10-24.
- **Corte del oro:** `meta.build_date = 2026-10-23T14:20:50+00:00`; solo lectura mediante `ec-gold-sql`.
- **Identidad:** nombre completo JULIO MARIO ANGULO MATAMALA y RUT proveedor 5.589.445-0 coinciden entre las cuatro páginas primarias de Mercado Público y la declaración InfoProbidad 5043507. El declarante de esa ficha consigna cargo de Conservador y Archivero del Poder Judicial.

## Pregunta y resultado

¿Las compras repetidas de servicios registrales de SERVIU XI Región a Julio Mario Angulo Matamala, quien declaró ejercer como Conservador y Archivero, constituyen un hecho suficientemente material y singular para remitir a revisión editorial? Las cuatro órdenes documentan adquisiciones ligadas a servicios notariales/registrales del proveedor individual, pero son órdenes de bajo monto, bajo causal de menos de 3 UTM y todas figuran «Enviada a proveedor» (no aceptación ni pago comprobado). No apareció evidencia de intervención en la decisión, sobreprecio, trato preferente ni irregularidad. Se descarta por materialidad y por explicación ordinaria consistente con servicios registrales cobrados por acto; no se equipara el registro del oro con prueba de pago.

## Hechos comprobados

1. La declaración primaria de InfoProbidad ID 5043507, fechada 03-04-2020, registra al titular como Conservador y Archivero del Poder Judicial, con fecha de asunción declarada 25-01-2005, domicilio de trabajo en Coyhaique y actividades profesional y económica dentro de los últimos 12 meses. Es lo declarado, no una verificación externa del nombramiento vigente a cada fecha de compra.[1]
2. Mercado Público identifica en cuatro OC al proveedor JULIO MARIO ANGULO MATAMALA, RUT 5.589.445-0, comprador SERVIU XI Región (RUT 61.823.000-7), y causal «Adquisición inferior a 3 UTM (Debe presentar 3 cotizaciones)». Sus fechas/montos publicados son: 25-05-2020, $24.999; 16-06-2020, $108.000; 15-07-2020, $22.999; 28-07-2020, $24.999. El total aritmético es CLP $180.997, equivalente a 6,30 UF según el oro; todas las páginas consultadas muestran estado «Enviada a proveedor».[2–5]
3. Las descripciones de las órdenes son propias de la función registral: inscripción de prohibición; 18 copias de títulos de dominio; copia de título de dominio con vigencia y certificado de hipotecas/gravámenes; y anotación/alzamiento de prohibiciones.[2–5]
4. El comprador es SERVIU XI Región, no la institución que la declaración identifica para el cargo (Poder Judicial). La ficha de compras no identifica a Angulo como funcionario de SERVIU ni acredita que haya intervenido en la contratación. No se encontró evidencia primaria en las páginas revisadas sobre recepción conforme, factura pagada, cotizaciones o autorización del gasto; por ello no se afirma pago efectivo.
5. Revisión de artefacto: el cruce `declared_supply_order` relaciona el RUT 5.589.445 con filas del campo `company` que InfoProbidad presenta como depósitos a plazo de Banco Santander, BBVA y BCI, no como una sociedad proveedora de Angulo. La lectura primaria evita interpretar ese enlace técnico como participación societaria o como prueba del canal comercial. La relación probada aquí procede del RUT de proveedor que el propio Mercado Público atribuye a la persona natural.

## Explicación legítima más fuerte y límites

Las órdenes compran copias, certificados e inscripciones registrales identificados por sus propias especificaciones, a precios/tarifas individualizados y por montos pequeños. La causal publicada exige tres cotizaciones, pero la presencia de la causal no prueba que se presentaran ni que la compra se completara. La reiteración en un período de dos meses puede ser la sucesión de gestiones registrales distintas; no hay expediente de compra revisado que permita afirmar fraccionamiento o trato preferente. La actividad documental del registro y su relación profesional con conservadores hace más plausible una transacción ordinaria, sin cerrar las preguntas administrativas pendientes.

El monto agregado es bajo (CLP $180.997 / 6,30 UF), las cuatro órdenes aparecen como enviadas y el comprador no es el Poder Judicial. No hay base para afirmar conflicto, pago, infracción, ni intervención personal. La temporalidad funcional en 2020 está respaldada por la declaración del 03-04-2020, pero no se obtuvo nombramiento externo ni actos de decisión del comprador.

## Consultas reproducibles al oro

- [`consultas/julio-angulo-serviu-servicios-cbr-2020-1.sql`](../consultas/julio-angulo-serviu-servicios-cbr-2020-1.sql): cuatro órdenes identificadas por código; resultado: 4 órdenes únicas, CLP $180.997, 6,30 UF.
- [`consultas/julio-angulo-serviu-servicios-cbr-2020-2.sql`](../consultas/julio-angulo-serviu-servicios-cbr-2020-2.sql): filas `company` del oro con el RUT 5.589.445; las coincidencias asociadas a bancos son depósitos a plazo.

## Rutas primarias consultadas

[1] InfoProbidad, declaración de Julio Mario Angulo Matamala, ID 5043507, 03-04-2020: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5043507
[2] Mercado Público, OC 657-163-AG20: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=657-163-AG20
[3] Mercado Público, OC 657-193-AG20: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=657-193-AG20
[4] Mercado Público, OC 657-223-AG20: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=657-223-AG20
[5] Mercado Público, OC 657-238-AG20: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=657-238-AG20

## Decisión y reapertura

**Descartada.** La pregunta es comprobable y la conexión funcional de las especificaciones existe, pero falla la materialidad editorial: cuatro órdenes de baja cuantía (en total 6,30 UF) con servicios registrales rutinarios, ninguna con estado de aceptación/pago en las fuentes cotejadas, y sin prueba de intervención, sobreprecio o trato preferente. El comprador es SERVIU, no Poder Judicial. Una lectura más acusatoria dependería de convertir un trámite registral ordinario y un cruce imperfecto del oro en imputación no sustentada.

Reabrir solo si aparece expediente primario que pruebe pago/recepción y condiciones anómalas, reiteración evitable o intervención del proveedor en la selección; si un proceso nuevo descubre montos acumulados materiales o compras al Poder Judicial; o si se acredita que el identificador RUT y los artefactos declarados se relacionan de otro modo que lo observado. No repetir la búsqueda de los mismos cuatro códigos sin evidencia nueva.
