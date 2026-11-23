# Gustavo Pedro Véliz Araya — Sociedad Ortuvia Véliz y órdenes de salud

## Pregunta decisiva
¿La participación declarada por Véliz en Sociedad Ortuvia Véliz Ltda., proveedora de turnos médicos temporales por órdenes de compra de trato directo del Servicio de Salud Aconcagua durante su ejercicio en el Ministerio Público, establece una pregunta de interés público con nexo funcional o beneficio material que justifique un caso para auditoría?

## Hechos comprobados

- La declaración InfoProbidad de 17-03-2017 identifica a **Gustavo Pedro Véliz Araya**, cargo «Abogado Asistente De Fiscal», organismo Ministerio Público, y declara un derecho en **SOCIEDAD ORTUVIA VELIZ LIMITADA**, RUT **76.625.984-7**, giro «SERVICIOS MEDICOS», cantidad/porcentaje 50, valor declarado CLP $500 y sin calidad de controlador. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=20026
- En las declaraciones de 11-03-2019 y 23-09-2026 aparece la misma sociedad; en los campos de participación se indica 10 y no controlador. La ficha de 2026 también identifica el cargo Fiscal Adjunto del Ministerio Público. Fuente primaria 2026: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1856915 ; la declaración de 2019 está listada en la misma ficha de InfoProbidad.
- Mercado Público confirma que el proveedor con el mismo RUT, **SOCIEDAD ORTUVIA VELIZ LIMITADA**, emitió siete OCs entre 20-04-2017 y 03-01-2020 al Servicio de Salud Aconcagua, con órdenes por turnos de personal médico temporal. El oro, deduplicado por código de OC, suma CLP $5.700.000 (208,61 UF) en sus pesos/UF registrados a fecha de cada OC; seis aparecen bajo causal «Emergencia, urgencia o imprevisto» y una bajo causal de monto inferior a 100 UTM/costo de evaluación. Cálculo reproducible: `consultas/gustavo-veliz-ortuvia-salud-urgencias-1.sql`.
- Muestra primaria de Mercado Público: OC 1632-2359-SE17 (20-04-2017, aceptada, CLP $720.000, 24 horas de reemplazo UTI pediátrica, causal de emergencia/urgencia/imprevisto): https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1632-2359-SE17
- Muestra primaria de Mercado Público: OC 1632-5515-SE19 (03-01-2020, aceptada, CLP $480.000, 16 horas en UPC pediátrica, causal costo de evaluación desproporcionado/monto bajo): https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1632-5515-SE19
- Muestra primaria de Mercado Público: OC 1632-3756-SE19 (25-07-2019, estado «Enviada a proveedor», CLP $690.000, 23 horas de turnos UPC pediátrica): https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1632-3756-SE19
- En la declaración de 2017, el funcionario pertenece al Ministerio Público; las OCs se dirigen al Servicio de Salud Aconcagua, no al Ministerio Público. No se encontró en la consulta del oro ninguna OC de esta sociedad a la institución declarada como lugar de ejercicio (`n_same_institution=0`).

## Explicación legítima más fuerte y límites
Las órdenes describen turnos y horas de personal médico temporal para la UPC/UTI pediátrica del Hospital San Camilo. La necesidad de cubrir turnos clínicos es una explicación legítima plausible para compras urgentes recurrentes. El cargo declarado es jurídico-fiscal en un organismo distinto del comprador; no hay evidencia en las fuentes consultadas de intervención de Véliz en la selección del proveedor, de competencia sobre el Servicio de Salud Aconcagua ni de beneficio individual fuera de la participación societaria declarada. La serie de OCs no prueba por sí sola irregularidad ni incompatibilidad. Los datos del oro son una selección derivada: las primarias citadas corroboran identidad de la sociedad, objeto y ejemplos de contratación; no se afirma que las tres páginas muestrales por sí solas documenten las siete órdenes.

## Decisión
**Descartada.** Aunque la identidad, la participación societaria y la relación comercial se corroboran en primarias, el nexo funcional no se acredita: el funcionario ejercía en el Ministerio Público y las compras son de otro organismo; el monto agregado es acotado, las prestaciones corresponden a turnos médicos y las causales/objeto hacen plausible la explicación asistencial. Falla la pregunta de interés público ligada a la función con la evidencia accesible. No se halló intervención personal, y no corresponde inferirla de la titularidad ni de la coincidencia temporal.

Reabrir solo ante un documento primario que acredite intervención de Véliz en alguna compra, competencia concreta sobre el comprador/proceso o un vínculo funcional/beneficio material adicional; también si una evidencia nueva cambia sustancialmente la materialidad o la naturaleza de las prestaciones.

## Fuente de los hechos agregados
`ec-gold-sql` en solo lectura, artefacto con `meta.build_date=2026-11-22T04:10:18+00:00`. La consulta reproducible está en `consultas/gustavo-veliz-ortuvia-salud-urgencias-1.sql`. Fuentes primarias listadas junto a los hechos.
