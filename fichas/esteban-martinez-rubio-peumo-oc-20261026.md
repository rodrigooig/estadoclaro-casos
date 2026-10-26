# Esteban Gregorio Martínez Rubio — participación declarada y compras de radiodifusión de Peumo

## Identificación de la pista

- **ID:** `esteban-martinez-rubio-peumo-oc-20261026`
- **Estado:** descartada.
- **Pista:** consulta propia del oro sobre participaciones declaradas con órdenes en el mismo organismo; candidato sin fila previa al buscar `MARTÍNEZ RUBIO` en `INDICE.md`.
- **Persona:** Esteban Gregorio Martínez Rubio. No se atribuye por nombre solamente: InfoProbidad consigna su nombre completo y la sociedad `ESTEBAN GREGORIO MARTINEZ RUBIO MEDIOS EIRL`, RUT 76.176.473-K; Mercado Público muestra para ambas órdenes el proveedor con ese mismo RUT societario.
- **Corte del oro:** `meta.build_date = 2026-10-23T14:20:50+00:00`. Consultas solo con `ec-gold-sql`.

## Pregunta decisiva

¿Hay evidencia primaria accesible de que Martínez Rubio ejerciera una función decisoria en Peumo cuando la municipalidad adquirió a la EIRL de su declaración dos servicios radiales en 2021, o de que participara personalmente en su autorización, evaluación, recepción o pago?

## Hechos comprobados

1. InfoProbidad 579650 es una declaración fechada 11-01-2021. Registra cargo/función «Alcalde», Municipalidad de Peumo; fecha de asunción informada: 09-05-2021. En sociedades registra acciones en `ESTEBAN GREGORIO MARTINEZ RUBIO MEDIOS EIRL`, RUT 76.176.473-K, cantidad/valor CLP $5.000.000, adquisición 20-10-2011, giro declarado de publicidad y eventos, y `Tiene Calidad de Controlador: false`. CLP $5.000.000 equivalen a 172,01 UF al valor UF del 11-01-2021 ($29.067,51). La ficha describe lo declarado; no es una verificación de propiedad vigente distinta de esa foto.
2. Mercado Público identifica el proveedor en ambas OCs por el RUT societario 76.176.473-K (la razón mostrada es «esteban gregorio»):
   - OC 554734-46-AG21, enviada 10-02-2021, aceptada; servicio de difusión radial de trabajo/actividades municipales por febrero. Neto CLP $500.000 + IVA CLP $95.000 = total CLP $595.000, 20,41 UF.
   - OC 554734-79-AG21, enviada 02-03-2021, aceptada; servicio de difusión radial municipal por marzo. Neto CLP $500.000 + IVA CLP $95.000 = total CLP $595.000, 20,31 UF.
   Ambas fichas dicen compra mayor a 3 y menor a 30 UTM, con tres cotizaciones. Total nominal de las dos OCs, incluido IVA: CLP $1.190.000 (40,72 UF según las fechas de envío). El texto primario no identifica a Martínez Rubio como comprador, evaluador, autorizador, responsable contractual ni receptor.
3. La declaración posterior InfoProbidad 1264172 (06-01-2025) vuelve a consignar la misma sociedad/RUT y valor CLP $5.000.000, pero cargo «Concejal» y fecha de asunción 11-01-2021. La primera declaración, en cambio, dice que asumía como alcalde el 09-05-2021. Estas dos fechas/cargos no bastan para reconstruir por sí solos su cargo efectivo en las fechas de las OCs.
4. Servel informa que las elecciones municipales de 2021 se celebraron el 15 y 16 de mayo. Las compras de febrero y marzo son anteriores a esa elección. Este dato contextual no demuestra quién ejercía el cargo en Peumo ni qué facultades tenía Martínez Rubio en las fechas de las OCs.
5. En el oro, la pareja persona–proveedor tiene dos OCs que el modelo marca como dentro del intervalo (`timing='during'`) y mismo organismo; las cinco OCs adicionales «durante»/«después» en esa vista más amplia no se atribuyen como venta a Peumo sin cotejo. Las OCs primarias abiertas son las dos arriba. La búsqueda de tablas `campaign` y `campaign_expense` para su `person_id` no devuelve filas al corte; esto no prueba que no haya postulado ni que no existan registros fuera de la cobertura modelada.

## Explicación legítima más fuerte y límites

La explicación respaldada por los documentos disponibles es una compra mensual de difusión radial municipal, a través de órdenes aceptadas inferiores a 30 UTM, cada una con nota de tres cotizaciones. Es un objeto que coincide con el giro que la propia declaración atribuye a la sociedad. El bajo valor y la repetición mensual no acreditan fraccionamiento ni irregularidad; los antecedentes revisados no permiten evaluar las cotizaciones ni quién eligió al proveedor.

La cronología funcional es un punto débil central: las órdenes preceden la fecha de asunción como alcalde declarada por InfoProbidad en 579650, mientras que 1264172 asigna a su cargo de concejal fecha de asunción 11-01-2021. No encontré fuente primaria distinta que resolviera esta discrepancia ni documento del expediente que identificara intervención de la persona. No infiero una incompatibilidad ni una intervención por el hecho de la coincidencia entre sociedad y comprador.

## Decisión y qué la reabriría

**Descartada.** Aunque la declaración y el proveedor coinciden por RUT, la evidencia primaria consultada no establece un nexo funcional decisorio de Martínez Rubio con estas compras ni intervención personal. Los montos son bajos y cada ficha describe un servicio radial mensual adquirido mediante la causal de menos de 30 UTM con tres cotizaciones. Falta la evidencia de cargo/competencia en la fecha de compra y de una pregunta material concreta que justificara un caso para auditoría.

Reabrir solo con (a) acto oficial que acredite cargo y atribuciones de Martínez Rubio en Peumo el 10-02-2021 y 02-03-2021 y (b) expediente, acta, decreto, cotizaciones o registro de recepción que lo vincule a la decisión o administración, o nuevos antecedentes primarios de un patrón municipal material mientras ejercía.

## Consultas reproducibles

- [`consultas/esteban-martinez-rubio-peumo-oc-20261026-1.sql`](../consultas/esteban-martinez-rubio-peumo-oc-20261026-1.sql): participación declarada y agregados de suministro.
- [`consultas/esteban-martinez-rubio-peumo-oc-20261026-2.sql`](../consultas/esteban-martinez-rubio-peumo-oc-20261026-2.sql): dos OCs únicas del mismo proveedor/institución.
- [`tmp/runs/20261026T183647Z/triage.md`](../tmp/runs/20261026T183647Z/triage.md): candidatos descartados de vistazo.

## Fuentes primarias

- InfoProbidad, declaración 579650: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=579650
- InfoProbidad, declaración 1264172: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1264172
- Mercado Público, OC 554734-46-AG21: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=554734-46-AG21
- Mercado Público, OC 554734-79-AG21: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=554734-79-AG21
- Servel, proceso electoral municipal 2021 (fechas 15–16 mayo): https://www.servel.cl/biblioteca-de-documentos/procesos-electorales/convencionales-constituyentes-municipales-y-gobernadores-regionales-2021/

Resumen de cierre: [`tmp/runs/20261026T183647Z/esteban-martinez-rubio-peumo-oc-20261026/resumen.md`](../tmp/runs/20261026T183647Z/esteban-martinez-rubio-peumo-oc-20261026/resumen.md).
