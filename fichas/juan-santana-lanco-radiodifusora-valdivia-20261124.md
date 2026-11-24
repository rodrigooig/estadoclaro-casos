# Juan Eugenio Santana Paredes — Radiodifusora Lanco Pilmaiquén / compras públicas

- **Estado:** descartada.
- **Origen de la pista:** semilla nueva del pre-run «trato_directo» (SOCIEDAD RADIODIFUSORA LANCO PILMAIQUEN SPA → dos OCs de la Municipalidad de Valdivia; 9 OCs en 197 filas de proveedores declarados). Revisé `SANTANA PAREDES` en `INDICE.md`; no había investigación previa del mismo Juan Santana.
- **Identidad:** InfoProbidad identifica a Juan Eugenio Santana Paredes como concejal de la Municipalidad de Lanco. La sociedad coincide por RUT 77.899.827-0, no solo por nombre.
- **Corte del oro:** `meta.build_date = 2026-11-22T04:10:18+00:00`. Consultas solo mediante `ec-gold-sql`.

## Pregunta decisiva

¿Las compras ágiles de servicios radiales de organismos distintos de Lanco a una sociedad en la que el concejal declaró acciones muestran un nexo funcional concreto, beneficio material o intervención atribuible que justifique investigación adicional?

## Hechos comprobados

1. InfoProbidad, declaración de 05-12-2024 (ID 1281455), registra a **Juan Eugenio Santana Paredes** como concejal de la Municipalidad de Lanco, con asunción declarada el 06-12-2024. En sociedades declara acciones en **SOCIEDAD RADIODIFUSORA LANCO PILMAIQUEN SPA**, RUT **77.899.827-0**, cantidad/porcentaje 33,3, valor corriente declarado CLP $333.333 y `Tiene Calidad de Controlador: false`. La declaración del 24-03-2026 (ID 1681674) mantiene la relación en el oro. Cada declaración es una foto fechada, no una prueba independiente de propiedad fuera de ella.
2. Mercado Público identifica por el mismo RUT societario cinco OCs recibidas entre 09-05-2025 y 03-08-2026, todas con estado «Recepción Conforme»: dos de la Municipalidad de Valdivia, dos de la Comisión Nacional de Riego y una del Servicio Nacional de Protección Especializada a la Niñez y Adolescencia. En las cinco, `same_institution = false`: el comprador no es la Municipalidad de Lanco donde Santana declara ejercer.
3. El conjunto suma nominalmente **CLP $2.960.292 (75,33 UF)**, en pesos y UF de las fechas de envío; consulta deduplicada por `order_code`. Las dos OCs de Valdivia suman CLP $2.625.092 (66,94 UF); las otras tres, CLP $335.200 (8,39 UF).
4. OC **2281-2285-AG25**, enviada 09-05-2025, por CLP $2.000.342 (51,12 UF), está emitida por la Municipalidad de Valdivia a la sociedad (RUT 77.899.827-0) para transmitir 1.020 frases de 30 segundos sobre actividades deportivas municipales entre mayo y diciembre. La ficha primaria la identifica como compra ágil «Adquisición igual o inferior a 30 UTM (Debe presentar 3 cotizaciones)». La segunda OC de Valdivia, **2281-7591-AG25**, enviada 08-10-2025, suma CLP $624.750 (15,82 UF) por avisos radiales de actividades deportivas de un proyecto GORE/municipal. Ninguna fuente consultada identifica a Santana como solicitante, evaluador, autorizador, receptor ni responsable de pago.
5. Las OCs de la Comisión Nacional de Riego fueron avisos/extractos radiales de CLP $80.000 y $95.200; la OC de 2026 del Servicio Nacional de Protección Especializada fue un mensaje radial regional de CLP $160.000. Son compras de servicios que corresponden al giro «RADIOEMISORA» declarado para la sociedad; esto no verifica el alcance efectivo de la señal ni quién prestó el servicio.

## Explicación legítima más fuerte y límites

Las órdenes que pude abrir describen publicidad y avisos radiales para actividades deportivas, avisos institucionales y un seminario; el proveedor está declarado como radioemisora y todas las compras son de organismos diferentes al municipio donde Santana es concejal. La orden de mayor monto es una compra ágil con causal publicada de monto inferior a 30 UTM y tres cotizaciones. Esta ruta y la descripción comercial son una explicación ordinaria plausible, pero no prueban por sí solas cómo se compararon ofertas ni quién decidió.

La participación declarada es minoritaria (33,3%) y no controladora. No encontré órdenes de esta sociedad al municipio de Lanco, atribución del concejal sobre adquisiciones de Valdivia/CNR/Servicio de Protección Especializada, ni prueba primaria de intervención individual o beneficio personal. No infiero impropiedad a partir de que el comprador y la emisora estén en la misma región ni del carácter de compra ágil.

## Decisión

**Descartada.** El cruce y la identidad societaria se sostienen en fuentes primarias, pero falla la relevancia funcional: son cinco compras pequeñas a otros organismos, ajenos a la institución del cargo, para prestaciones acordes al giro; no hay evidencia de intervención ni beneficio individual. El hecho no sostiene una pregunta concreta de auditoría sobre la actuación del concejal.

Reabrir solo si aparece una contratación de la sociedad con la Municipalidad de Lanco mientras Santana ejerce, un expediente que documente su participación en una compra de estos organismos, o un patrón materialmente distinto acompañado de evidencia funcional.

## Consultas reproducibles y fuentes primarias

- [`consultas/juan-santana-lanco-radiodifusora-valdivia-20261124-1.sql`](../consultas/juan-santana-lanco-radiodifusora-valdivia-20261124-1.sql): órdenes, comprador, estado, causal/ruta y ventanas.
- [`consultas/juan-santana-lanco-radiodifusora-valdivia-20261124-2.sql`](../consultas/juan-santana-lanco-radiodifusora-valdivia-20261124-2.sql): identidad, declaraciones y participación societaria.
- InfoProbidad, declaración 05-12-2024, ID 1281455: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1281455
- InfoProbidad, declaración 24-03-2026, ID 1681674: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1681674
- Mercado Público, OC 2281-2285-AG25: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2281-2285-AG25
- Mercado Público, OC 2281-7591-AG25: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2281-7591-AG25
- Mercado Público, OCs restantes: [1078171-18-AG25](https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1078171-18-AG25), [1078171-22-AG25](https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1078171-22-AG25) y [1534202-3-AG26](https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1534202-3-AG26).
- Triage de candidatos: [`tmp/runs/20261124T184245Z/triage.md`](../tmp/runs/20261124T184245Z/triage.md).
