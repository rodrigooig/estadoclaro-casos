# Jorge Rodrigo Pizarro Garay — acciones de Lipigas y compras de la CAPJ

## Pregunta decisiva
¿La participación declarada por Jorge Rodrigo Pizarro Garay en Empresas Lipigas S.A. convierte las órdenes de compra de la Corporación Administrativa del Poder Judicial (CAPJ) en un hecho material ligado a su función administrativa que amerite un caso para revisión?

## Hechos verificados
- **Identidad/cargo.** InfoProbidad identifica al declarante como JORGE RODRIGO PIZARRO GARAY. Su actualización periódica está fechada 25-03-2026, declara cargo de Administrador en la Corporación Administrativa del Poder Judicial y fecha de asunción 27-04-2005. Fuente: [InfoProbidad ID 5111603](https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5111603).
- **Interés declarado.** En esa declaración figura Empresas Lipigas S.A. (RUT 96.928.510- K), tipo ACCION, cantidad 496, valor corriente/de libro CLP $8.000 a la fecha de la declaración (25-03-2026; UF de ese día $39.841,72, equivalente a 0,20 UF), no controlador. El gold agrega que cinco declarantes poseen acciones de esa sociedad y la marca como ampliamente distribuida; no atribuye control a Pizarro.
- **Compras.** En `purchase_order`, el RUT del proveedor 96.928.510-K tiene 184 OCs para la llave compradora Poder Judicial dentro de la ventana 28-03-2025–22-10-2026: total nominal CLP $71.050.838 (1.777,36 UF sumadas por las fechas de cada orden). Son órdenes provenientes de convenio marco, no trato directo ni compra ágil, según el agregado del gold.
- **Primarias de muestra.** La OC [768606-30-CM26](https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=768606-30-CM26), enviada 22-10-2026, identifica al proveedor por nombre y RUT y señala convenio marco; comprador Juzgado de Letras y Familia de Villarrica, total CLP $239.904 (5,82 UF). La OC [2180-191-CM26](https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2180-191-CM26), enviada 13-10-2026, también es de convenio marco, por CLP $155.652 (3,78 UF), para calefacción de juzgados civiles; comprador CAPJ Valdivia. Son ejemplos, no sustituyen el agregado completo.
- **Servel.** La tabla `campaign` del oro no devuelve campaña para ese nombre. La búsqueda web por el nombre completo y Servel tampoco identificó candidatura. No se infiere ausencia absoluta fuera de estas comprobaciones.

## Explicación legítima más fuerte
La sociedad es una S.A. de participación ampliamente distribuida según el gold; la declaración consigna una tenencia de solo 496 acciones, no controladora, valorizada en CLP $8.000. Las órdenes examinadas son compras ordinarias de gas a través de un convenio marco, mecanismo que provee una ruta de compra ya establecida; no son adjudicaciones discrecionales. Las compras están distribuidas entre unidades judiciales y en importes por orden pequeños. No se encontró evidencia de que el administrador participara en decisiones de compra, contratación, pago o fiscalización, ni que recibiera un beneficio individual de estas órdenes.

## Límites y decisión
El cruce prueba coincidencia estructural entre una acción declarada y compras del mismo organismo, y el cargo aparece vigente en el artefacto. No prueba intervención personal, atribuciones de compra, pago de dividendos ni beneficio individual. La participación no controladora/tenencia reducida, el mecanismo de convenio marco y la ausencia de nexo funcional concreto hacen que no alcance el umbral editorial de materialidad y nexo beneficio-función. **Decisión: descartada.**

Reabrir solo si aparece evidencia primaria de que Pizarro intervino en una decisión concreta de compra, administró o fiscalizó el convenio/contrato, o recibió un beneficio específico; o si una fuente societaria primaria prueba una participación material distinta a la declarada.

## Consultas y corte
Consultas reproducibles: `consultas/jorge-rodrigo-pizarro-garay-lipigas-capj-20261026-1.sql` y `consultas/jorge-rodrigo-pizarro-garay-lipigas-capj-20261026-2.sql`. Gold consultado solo mediante `ec-gold-sql`; `meta.build_date` = 2026-10-23T14:20:50+00:00.
