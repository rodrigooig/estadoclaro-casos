# Diego Antonio San Martín López — compras municipales a sociedad declarada (2018–2019)

## Pregunta decisiva
¿Es publicable que el concejal Diego Antonio San Martín López declaró control de una sociedad de radiodifusión mientras la Municipalidad de Taltal emitió dos órdenes directas a un proveedor con el mismo RUT, y qué límites impiden convertir ese cruce en imputación de intervención o infracción?

## Identidad y cargo
- InfoProbidad identifica al declarante como DIEGO ANTONIO SAN MARTÍN LÓPEZ y registra su declaración de asunción ante la Municipalidad de Taltal, con fecha de asunción 06-12-2016 y cargo etiquetado “Otro”.[1]
- La nómina oficial de precedencia de autoridades de la Gobernación Provincial de Antofagasta, fechada 21-01-2019, incluye a Diego San Martín López bajo “CONCEJALA DE TALTAL” (rótulo de género inconsistente con el nombre y pronombre “Sr.”); se conserva la discrepancia de la fuente sin corregirla.[5]

## Hechos comprobados
- En declaración primaria del 29-03-2018, San Martín informó 25 acciones de GENYPTERUS TALTAL GROUP, RUT 76.349.892-1, giro “RADIO DIFUSION”, valor de $6.000.000 y calidad de controlador “SI”.[1] El oro reproduce el mismo registro; la consulta guardada es `consultas/diego-antonio-san-martin-taltal-radio-2018-2.sql`.
- Mercado Público registra la OC aceptada 3916-241-SE18, enviada 12-03-2018 por la Municipalidad de Taltal a GENYPTERUS TALTAL GROUP COMUNICACIONES SPA, RUT 76.349.892-1, por $4.400.000, para difusión radial y publicidad entre febrero y diciembre de 2018. La ficha consigna compra directa bajo la causal “Costo de evaluación desproporcionado, y por monto de contratación inferior a 100 UTM”.[2]
- La OC aceptada 3916-190-SE19, enviada 21-02-2019 por la misma municipalidad al mismo proveedor y RUT, fue por $4.800.000 para un contrato anual de servicios de prensa y difusión en Radio Taltal FM; también consigna la causal de costo de evaluación desproporcionado y monto inferior a 100 UTM.[3]
- Medición reproducible del oro (corte `meta.build_date=2026-11-20T17:45:38+00:00`): dos OCs únicas, ambas same-institution y direct-award, suman CLP $9.200.000 nominales, equivalentes en el oro a 337,39 UF; período 12-03-2018 a 21-02-2019. La deduplicación es por `order_code`; consulta `consultas/diego-antonio-san-martin-taltal-radio-2018-3.sql`.
- El proveedor se atribuye por RUT exacto común, no por semejanza de nombres. La declaración dice “GENYPTERUS TALTAL GROUP”; el portal de compras añade “COMUNICACIONES SPA”. No se confunden ambos nombres como prueba independiente: la llave es el RUT 76.349.892-1.

## Explicación legítima más fuerte y límites
Las dos órdenes describen servicios de publicidad y difusión radial para la comuna, y la ficha registra una causal de compra directa basada en costo de evaluación y monto inferior a 100 UTM. Eso es una explicación administrativa explícita, no evidencia de irregularidad. La declaración acredita control en 2018; no prueba por sí sola la titularidad efectiva en cada día del contrato de 2019. Las órdenes están aceptadas, pero no se verificaron facturas, pago, cumplimiento del servicio, expediente de compra, participación de San Martín en decisiones municipales ni eventuales abstenciones. El oro y las órdenes no establecen intervención individual, beneficio personal ilícito ni infracción.

## Decisión
`borrador listo` para revisión editorial: la identidad, el cargo, la declaración de control y las dos compras al mismo organismo tienen respaldo primario accesible; es un patrón repetido y material en el contexto de un concejal y una sociedad de radiodifusión. La pieza se limita a esa coincidencia documentada y deja explícitas la causal publicada y las lagunas sobre titularidad en 2019, pago e intervención. El editor debe cotejar fuentes y decidir publicación; no es una conclusión de responsabilidad.

## Consultas reproducibles
- Selección exploratoria: `consultas/diego-antonio-san-martin-taltal-radio-2018-1.sql`.
- Declaración y activos: `consultas/diego-antonio-san-martin-taltal-radio-2018-2.sql`.
- Órdenes únicas por código: `consultas/diego-antonio-san-martin-taltal-radio-2018-3.sql`.

## Reevaluación del investigador (2026-11-22)

La fuente oficial de Ley del Lobby de la Municipalidad de Taltal registra a Diego Antonio San Martín López como concejal entre 2016-12-06 y 2021-06-28. Una publicación del Diario Oficial reproducida con el extracto societario (CVE 1212718, modificación del 10-05-2017) identifica por nombre completo la venta por San Martín de la totalidad de su participación del 25% (250 acciones) de GENYPTERUS TALTAL GROUP COMUNICACIONES SpA, RUT 76.349.892-1, a Maiko Humberto Arancibia Rojas; el contrato se fecha 04-05-2017. La modificación societaria siguiente recuperada, publicada 06-08-2018 (CVE 1442855), describe a Maiko con 75% y Juan Manuel Mediano con 25%, sin San Martín. InfoProbidad 204739, presentada 29-03-2018, en cambio conserva la declaración de 25 acciones y «controlador SI». Por tanto, el dato declarado no demuestra que mantuviera participación en las fechas de las compras; la fuente societaria hallada apunta a que había vendido antes de ambas. No se encontró evidencia primaria de una readquisición posterior ni de intervención individual en las compras.

El registro oficial de Ley del Lobby acredita el cargo de concejal durante las fechas de ambas órdenes. Sin embargo, esto no subsana la ausencia de vínculo societario contemporáneo: el hecho central del borrador («sociedad que su concejal declaró controlar mientras contrataba») queda contradicho por el extracto societario contemporáneo disponible. La explicación legítima más fuerte es que los servicios de difusión radial corresponden al giro de la compañía y las órdenes consignan expresamente la causal de costo de evaluación desproporcionado y monto inferior a 100 UTM; no se verificó intervención personal.

**Decisión: `descartada`.** No enviar el borrador al editor: falla el nexo temporal sociedad-autoridad requerido para afirmar una coincidencia de intereses durante las compras, y la propia fuente societaria disponible contradice el control declarado. Reabrir solo si aparece documento societario oficial que demuestre readquisición/participación de San Martín al 12-03-2018 o 21-02-2019, o un expediente primario que acredite su intervención funcional en alguna compra. Se mantiene el registro de la discrepancia declarativa como tal; no se infiere falsedad ni infracción.

Fuentes nuevas: https://www.leylobby.gob.cl/instituciones/MU314/cargos-pasivos?todos=1 ; https://ibero.center/empresas/76349892-1/genypterus-taltal-group-comunicaciones-spa (reproduce extractos del Diario Oficial CVE 1212718 y CVE 1442855).

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/344
