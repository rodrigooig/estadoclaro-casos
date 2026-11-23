# Patricio Guillermo Corominas Mellado — sociedad proveedora del Estado

- **ID:** `patricio-corominas-comunicaciones-sur-2026`
- **Categoría:** compras/relaciones con el Estado; patrimonio e intereses.
- **Estado:** descartada.
- **Revisión:** 2026-11-23 UTC.
- **Corte del oro:** `meta.build_date=2026-11-22T04:10:18+00:00` (copia local sin cambios; solo `ec-gold-sql`).

## Pregunta decisiva
¿La serie de compras por trato directo o mecanismo afín de una sociedad de Corominas, mientras su declaración acreditaba la participación, muestra una pregunta material vinculada a sus funciones notariales, o es contratación ordinaria de medios sin nexo funcional demostrable?

## Hechos y fuentes

1. **Identidad y cargo:** la ficha pública del propio titular de la Segunda Notaría de Lo Barnechea identifica a Patricio Guillermo Corominas Mellado como notario desde el 13-12-2022 y enlaza su declaración InfoProbidad 5109780. InfoProbidad consigna notario del Poder Judicial, asunción el 13-02-2023 y actualización periódica del 09-03-2026.[1][2]
2. **Participación declarada:** la declaración InfoProbidad 5109780 declara un DERECHO del 90% en Sociedad de comunicaciones del sur limitada, RUT 76.137.670-5, adquisición 27-05-2022, valor declarado CLP 2.000.000 y calidad de controlador marcada `false`.[1] El extracto del Diario Oficial de 30-05-2022 acredita la cesión a Corominas del 90% de derechos y acciones por CLP 1.800.000; el extracto fija capital social CLP 2.000.000.[3]
3. **Órdenes:** consulta reproducible sobre el oro, deduplicada por código de orden, devuelve 14 OC únicas durante la ventana declarativa, 18-03-2024 a 30-10-2026, con señal de trato directo/Compra Ágil y participación art. 4: CLP 19.131.196 nominales (491,40 UF según oro) y siete compradores. El período coincide con la declaración vigente del cargo; no se halló comprador coincidente con Poder Judicial (`same_institution=false` en estas filas).[4]
4. **Primarias de compras revisadas:** OC 2306-142-AG25 (Municipalidad de Osorno; CLP 3.570.000; estado “Aceptada”) detalla “Publicidad en radio”, difusión por 10 meses del programa educativo DAEM “Mentes Abiertas”; se generó por invitación a Compra Ágil y muestra causal “Adquisición igual o inferior a 30 UTM (Debe presentar 3 cotizaciones)”. Proveedor, nombre legal y RUT coinciden con la sociedad.[5] La OC 2048-2800-TD26 (Hospital de Ancud; CLP 1.761.200; estado “Recepción Conforme”) muestra causal “Costo de evaluación desproporcionado, y por monto de contratación inferior a 100 UTM”, proveedor y RUT societario coincidentes.[6] La segunda ficha no expuso el detalle del ítem en el extracto recuperado.

## Explicación legítima más fuerte
La muestra primaria de Osorno documenta una prestación de publicidad radial para un programa escolar; varias de las causales en la semilla son compras de monto bajo o servicios universitarios. La participación societaria se declaró y el extracto oficial acredita la titularidad; una compra de publicidad por otro organismo no demuestra favoritismo ni intervención del notario. Las compras revisadas son ajenas al Poder Judicial y a la notaría donde ejerce.

## Decisión y límites
**Descartada.** La coincidencia societaria y el patrón de 14 órdenes por 491,40 UF están sustentados, pero no encontré un nexo funcional con el cargo de notario, compra por su propia institución, intervención individual, ni evidencia primaria de irregularidad en los procedimientos. El ejemplo de Osorno es consistente con el servicio de comunicación/radio y el del Hospital justifica su causal por monto/costo de evaluación; no se extiende esa explicación a cada orden ni se afirma que cada procedimiento sea regular. Sin conexión con sus funciones o un documento de contratación que materialice una anomalía, el agregado de compras de distintos organismos no pasa el umbral editorial de relevancia funcional.

**Reabrir si:** una ficha, resolución o expediente de cualquiera de las compras acredita intervención o vínculo de decisión de Corominas; aparece compra por la institución donde ejerce o por su notaría; o documentación primaria concreta cuestiona el objeto, causal o recepción de las órdenes.

## Fuentes

[1] InfoProbidad, declaración N.º 5109780, actualización periódica 09-03-2026: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5109780
[2] Segunda Notaría de Lo Barnechea, perfil del titular: https://notariacorominas.cl/nosotros
[3] Diario Oficial, 30-05-2022, CVE 2136206: https://www.diariooficial.interior.gob.cl/publicaciones/2022/05/30/43265/05/2136206.pdf
[4] Consulta reproducible `consultas/patricio-corominas-comunicaciones-sur-2026-1.sql` (gold, solo lectura).
[5] Mercado Público, OC 2306-142-AG25: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2306-142-AG25
[6] Mercado Público, OC 2048-2800-TD26: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2048-2800-TD26
