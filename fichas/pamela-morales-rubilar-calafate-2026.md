# Ficha: Pamela Alejandra Morales Rubilar — participación declarada y ventas de pan a organismos estatales

**ID:** `pamela-morales-rubilar-calafate-2026`  
**Decisión:** descartada.  
**Origen:** consulta propia al oro; no se seleccionó desde una pantalla de autocontratación.

## Pregunta decisiva

¿La participación del 50% que Pamela Alejandra Morales Rubilar declaró en una sociedad cuyo RUT vende productos de panadería al Estado abre una pregunta verificable de interés público ligada a su función judicial?

## Hechos comprobados

- InfoProbidad, declaraciones 5112757 (primera declaración por asunción) y 5112762 (actualización periódica), ambas del 28-03-2026, identifican a Pamela Alejandra Morales Rubilar, cargo declarado «Secretario» en el Poder Judicial, y consignan asunción el 26-02-2026. En ambas declaró un derecho del 50% en Alarcon Morales Asociados Limitada, RUT 77.139.269-5, valor CLP $5.000.000, adquisición 04-03-2020, y que no tenía calidad de controladora. Giro informado: venta al por menor de panadería y pastelería.
- Mercado Público identifica al mismo RUT como proveedor con razón social ALARCON MORALES ASOCIADOS LIMITADA y nombre de proveedor/sucursal CALAFATE LIMITADA. La orden 1057387-673-TD26, enviada el 20-11-2026 al Hospital de Collipulli, aparece «Recepción Conforme», CLP $648.895 IVA incluido, y describe pan fresco; el registro dice que se generó por trato directo tras una licitación previa sin ofertas o con ofertas inadmisibles.
- La orden 1968-2741-SE26, del 28-10-2026, corresponde a Gendarmería de La Araucanía, CLP $2.523.126 IVA incluido, por adquisición de pan fresco, proveniente de la licitación pública 1968-3-LE24.
- El oro contabiliza para la ventana de declaración 31 órdenes, CLP $57.717.914 (1.456,04 UF), entre 02-10-2024 y 20-11-2026, en dos organismos; 13 aparecen como trato directo y una como Compra Ágil. La ficha agregada marca cero órdenes de la propia institución y cero exclusiones. La misma vista del oro reporta 57 órdenes empresariales por CLP $105.319.460 desde 18-03-2024, por lo que las ventas estatales no se reducen a la ventana personal declarada.
- La consulta de detalle duplica algunas órdenes por declaración y por períodos de atribución; los agregados anteriores se toman de `declared_supply` y no de sumar esas filas repetidas. No se afirma que los montos sean utilidades, pagos personales ni beneficio de la autoridad.

## Explicación legítima más fuerte

El nombre del proveedor «Calafate Limitada» difiere del nombre societario declarado, pero Mercado Público muestra el RUT idéntico 77.139.269-5 y la razón social legal declarada. Sus órdenes observables son de pan fresco a un hospital y a Gendarmería, una actividad comercial ordinaria y coherente con el giro declarado. El cargo declarado es del Poder Judicial; los compradores identificados no son ese organismo. Las compras se originan en procedimientos públicos o en una compra directa fundada en una licitación previa sin ofertas/inadmisibles. No se encontró nexo funcional entre la función judicial declarada y esas adquisiciones, ni evidencia de intervención personal.

## Decisión y motivo

**Descartada.** Aunque la participación societaria y el volumen de ventas estatales son verificables, falla la pregunta editorial de interés público ligada a la función: no hay compra a la institución de ejercicio ni evidencia primaria que vincule la autoridad con decisiones de compra de Hospital de Collipulli o Gendarmería. La discrepancia entre el nombre de proveedor y la razón social queda resuelta por el RUT mostrado en la ficha de Mercado Público; no constituye por sí sola una anomalía.

Reabrir únicamente si aparece un documento primario que pruebe que Morales intervino, asesoró o tuvo competencia funcional sobre esas compras, o una orden al Poder Judicial con intervención individual acreditada.

## Fuentes y reproducción

- InfoProbidad 5112757: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5112757
- InfoProbidad 5112762: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5112762
- Mercado Público, OC 1057387-673-TD26: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1057387-673-TD26
- Mercado Público, OC 1968-2741-SE26: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1968-2741-SE26
- SQL reproducible: `consultas/pamela-morales-rubilar-calafate-2026-1.sql` (declaraciones 5112757/5112762 y órdenes ligadas por ID de persona + RUT exacto).
- Oro `meta.build_date`: `2026-11-22T04:10:18+00:00`.
