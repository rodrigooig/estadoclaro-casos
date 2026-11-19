# Investigación: Jorge Gabriel Gonzalez Salazar — Gonzalez y Cia Ltda. y compras públicas

- **ID:** `jorge-gabriel-gonzalez-salazar-capacitacion-2026`
- **Estado:** descartada
- **Corte del oro:** `2026-11-17T18:25:42+00:00`
- **Run:** `20261119T120046Z`

## Pregunta decisiva

¿La participación declarada de un juez en una empresa de capacitación, vinculada por RUT a órdenes de compra públicas, viene acompañada de compras a su propio organismo, intervención del juez o un expediente judicial concreto que establezca un nexo funcional?

## Hechos comprobados

1. **Declaración primaria.** InfoProbidad ID 5118662 identifica a JORGE GABRIEL GONZALEZ SALAZAR como juez del Poder Judicial, en Araucanía/Temuco, con fecha de asunción registrada 01-04-2001. La declaración del 22-06-2026 consigna a GONZALEZ Y CIA LTDA., RUT 76.164.688-5, giro «CAPACITACION», título «OTRO», cantidad/porcentaje «50», valor libro CLP $5.000.000 y calidad de controlador «true». No describo «50» como porcentaje: el formulario no precisa la unidad.[1]

2. **Compra primaria a CONADI.** La OC 765-303-SE24 registra envío 31-07-2024, estado «Recepción Conforme», origen de licitación pública 765-33-LE24 y total CLP $46.000.000. La ficha identifica al proveedor por RUT 76.164.688-5, con nombre formal «GONZALEZ Y VARAS ASOCIADOS LIMITADA», distinto del nombre declarado «Gonzalez y Cia Ltda.»; el RUT coincide exactamente. El objeto es «Diseño e implementación de Escuelas Patrimoniales de arte y oficio».[2] La ficha no identifica a González Salazar como participante del proceso.

3. **Compra primaria a Salud Araucanía Sur.** La OC 1175-2054-AG25 registra el taller «Historia y Cosmovisión Mapuche en Salud», enviada el 22-07-2025 y recibida conforme. Mercado Público identifica al proveedor como GONZALEZ Y COMPANIA LIMITADA, RUT 76.164.688-5, por CLP $3.150.000.[3] Es capacitación para otro organismo, no para el Poder Judicial.

4. **Pantalla exploratoria del oro.** La consulta por `person_id` y RUT societario devuelve 11 códigos primarios con `timing='during'`, ocho compradores y CLP nominales $99.973.924 (2.692,22 UF calculadas a la fecha de cada orden por el oro); una fila está marcada como trato directo y cinco como Compra Ágil. La consulta deduplica por `order_code`. Estos agregados son una selección del artefacto y no reemplazan cotejar cada orden primaria. La tabla devuelve además `same_institution = NULL` para algunas órdenes; eso significa «no se pudo determinar», no «distinto».[consultas/jorge-gabriel-gonzalez-salazar-capacitacion-2026-1.sql](../consultas/jorge-gabriel-gonzalez-salazar-capacitacion-2026-1.sql) [consultas/jorge-gabriel-gonzalez-salazar-capacitacion-2026-2.sql](../consultas/jorge-gabriel-gonzalez-salazar-capacitacion-2026-2.sql)

5. **Servel, pantalla limitada.** El oro devuelve cero filas en `campaign` y `campaign_self_supply` para este `person_id`; es una comprobación acotada a esas tablas, no una afirmación universal sobre toda la actividad pública.[consultas/jorge-gabriel-gonzalez-salazar-capacitacion-2026-3.sql](../consultas/jorge-gabriel-gonzalez-salazar-capacitacion-2026-3.sql)

## Explicación legítima más fuerte

La declaración identifica un giro de capacitación y control de una sociedad; las dos órdenes primarias revisadas son servicios de formación/cultura para CONADI y el Servicio de Salud Araucanía Sur. La compra de $46.000.000 provino de licitación pública. Son contratos de organismos distintos al Poder Judicial y sus objetos son compatibles con el giro declarado. La evidencia consultada no muestra que González Salazar preparara, evaluara, autorizara o recibiera personalmente esos contratos, ni que la empresa litigara ante él.

## Límites y búsqueda de refutación

- No se encontró en las órdenes primarias revisadas una compra del Poder Judicial, la Academia Judicial o una unidad judicial a la sociedad.
- La búsqueda web literal por el nombre de la sociedad junto a «Poder Judicial»/«capacitación» no localizó una causa concreta; no se revisó exhaustivamente el sistema de causas judiciales.
- Solo se reabrieron dos de las once órdenes del corte contra sus fichas primarias. Las cifras agregadas de las otras nueve no se publican como hechos primarios.
- El campo «50» de InfoProbidad no se transforma en 50%; el dato de control se describe tal como lo registra la fuente.
- La disparidad entre el nombre societario declarado y los nombres formales de proveedor en las OCs no es por sí sola una identidad errónea: ambas OCs muestran el mismo RUT 76.164.688-5.

## Decisión

**Descartada.** La identidad del proveedor en dos compras se verifica por RUT y la actividad es materialmente visible; sin embargo, las dos primarias disponibles documentan servicios ordinarios contratados por CONADI y Salud Araucanía Sur, no por el Poder Judicial. No aparece intervención personal, compra institucional propia ni expediente judicial que conecte el interés económico con una actuación jurisdiccional. La venta a organismos estatales, por sí sola, no acredita conflicto ni beneficio funcional. No se prepara borrador.

**Qué la reabriría:** una OC/contrato primario al Poder Judicial o a la Academia Judicial, un expediente que identifique a Gonzalez y Cia/GONZALEZ Y VARAS ASOCIADOS como parte o interesada en una causa de González Salazar, o un documento primario que pruebe su intervención en una adjudicación/ejecución concreta. Más órdenes a otros organismos, sin nexo, no bastan.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5118662
[2] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=765-303-SE24
[3] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1175-2054-AG25
