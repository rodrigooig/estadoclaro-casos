# CAMILA DEL CARMEN CÁRDENAS OYARZÚN — METALPRO SPA y compras de Vialidad Aysén

## Pregunta decisiva
¿Las compras materiales de una empresa controlada, según declaración, por una conservadora del Poder Judicial documentan un nexo con sus funciones o una pregunta concreta de auditoría que exceda una relación comercial ordinaria?

## Hechos comprobados

- InfoProbidad, declaración del 24-04-2023, identifica a CAMILA DEL CARMEN CÁRDENAS OYARZÚN como conservadora del Poder Judicial, con asunción informada el 20-02-2023. En esa declaración informó 30% y calidad de controladora de METALPRO SPA (RUT 76.223.043-7), adquirida —según su propia declaración— el 29-07-2020; el giro registrado es fabricación de productos elaborados de metal.[1]
- En el oro de corte `2026-11-24T20:08:20+00:00`, la sociedad aparece como proveedor en 14 órdenes de compra entre el 23-06-2023 y el 19-06-2024, con estado «Aceptada», a MINISTERIO DE OBRAS PÚBLICAS, Dirección de Vialidad (Aysén): CLP $81.614.620 (2.237,57 UF sumadas en la fecha de cada orden). El RUT coincide exacto; `name_similarity=1.0` es corroboración secundaria. Ninguna orden coincide con la institución declarada (`n_same_institution=0`). La consulta reproducible con fechas, código, comprador, estado, ruta, monto y categoría está en `consultas/camila-cardenas-oyarzun-metalpro-mop-2023-2.sql`.
- Desglose de esas 14 órdenes únicas del oro: nueve provenientes de licitación pública, CLP $36.378.777; tres prórrogas de contrato, CLP $37.121.233; dos bajo causal de emergencia/urgencia/imprevisto, CLP $8.114.610. Todas tienen estado Aceptada.[2–5]
- Primarias reabiertas: la OC 1005-35-SE23, aceptada el 23-06-2023, fue emitida desde la licitación pública 1005-10-LE23 para servicios de tornería y soldadura, por CLP $3.919.265, al RUT exacto de METALPRO.[2][6] La OC 1003-190-SE23, aceptada el 27-09-2023 como prórroga, pagó CLP $26.340.626 por roldanas para la balsa Baker.[3] La OC 1004-207-SE23, aceptada el 18-10-2023 por emergencia/urgencia, fue para reparar péndolas cortadas del puente General Carrera (obra vendida), CLP $4.313.750.[4] La OC 1003-305-SE23, aceptada el 14-12-2023 por emergencia/urgencia, fue para tratamiento térmico de roldanas de balsa Baker, CLP $3.800.860.[5]

### Órdenes únicas incluidas en el total

Todas constan como aceptadas en `declared_supply_order` y fueron cotejadas en las páginas de Mercado Público por código y RUT del proveedor:

- 1005-35-SE23 — 23-06-2023, licitación pública.
- 1003-139-SE23 — 13-07-2023, prórroga.
- 1005-84-SE23 — 26-07-2023, licitación pública.
- 1003-160-SE23 — 04-08-2023, prórroga.
- 1005-109-SE23 — 23-08-2023, licitación pública.
- 1003-190-SE23 — 27-09-2023, prórroga.
- 1004-207-SE23 — 18-10-2023, emergencia/urgencia.
- 1005-147-SE23 — 03-11-2023, licitación pública.
- 1003-305-SE23 — 14-12-2023, emergencia/urgencia.
- 1005-193-SE23 — 21-12-2023, licitación pública.
- 1005-16-SE24 — 26-02-2024, licitación pública.
- 1005-61-SE24 — 23-04-2024, licitación pública.
- 1005-71-SE24 — 22-05-2024, licitación pública.
- 1005-94-SE24 — 19-06-2024, licitación pública.

## Explicación legítima más fuerte
La actividad declarada de METALPRO —fabricación de productos metálicos— coincide con tornería, soldadura, reparación de equipos viales y componentes metálicos. La mayoría de las órdenes proviene de la licitación pública abierta 1005-10-LE23 de Vialidad Aysén; las tres restantes del tramo son prórrogas de contrato y dos órdenes describen reparaciones urgentes específicas. La ficha 1005-10-LE23 dice que Vialidad necesitaba confeccionar, reparar y recuperar partes y piezas de sus maquinarias.[6] Esto es consistente con una relación comercial ordinaria; no acredita intervención de la conservadora.

## Nexo funcional y límites
La autoridad declaró ejercer como conservadora del Poder Judicial; el comprador en las primarias es la Dirección General de Obras Públicas / Dirección de Vialidad, no el Poder Judicial. Los servicios son trabajo industrial para infraestructura vial, no servicios registrales o judiciales. No encontré acto, expediente, decisión o beneficio personal que conecte el cargo de Cárdenas con estas compras. La ausencia de puente institucional en el oro no prueba que nunca existiera contacto o intervención; acota solamente el cruce consultado.

## Decisión: descartada
El monto agregado y la repetición justificaron reabrir las primarias: por RUT, las 14 órdenes son reales y materiales. Sin embargo, la explicación comercial está respaldada por la actividad declarada y los objetos de compra; las principales transacciones proceden de licitación abierta o de prórrogas identificadas, y el comprador es ajeno a su función judicial. No se acreditó nexo funcional, intervención individual ni discrepancia de proveedor/estado/monto que sostenga un caso para auditoría. No enviar PR al editor.

**Reabrir solo si** aparece un documento primario que vincule a Cárdenas con evaluación, autorización, recepción o pago de estas compras, una causa o decisión judicial que involucre al proveedor, o una contratación de METALPRO con su organismo de ejercicio acompañada de intervención concreta.

## Consultas
- `consultas/camila-cardenas-oyarzun-metalpro-mop-2023-1.sql` — participación declarada y resumen del cruce.
- `consultas/camila-cardenas-oyarzun-metalpro-mop-2023-2.sql` — órdenes únicas, fechas, estados y rutas.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5078480 — InfoProbidad: declaración de Camila del Carmen Cárdenas Oyarzún, 24-04-2023
[2] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1005-35-SE23 — Mercado Público: orden 1005-35-SE23
[3] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1003-190-SE23 — Mercado Público: orden 1003-190-SE23
[4] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1004-207-SE23 — Mercado Público: orden 1004-207-SE23
[5] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1003-305-SE23 — Mercado Público: orden 1003-305-SE23
[6] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=1005-10-LE23 — Mercado Público: licitación pública 1005-10-LE23
