# Angel González Aguilera: sociedad controlada y tratos directos municipales — descartada

- **ID:** `angel-gonzalez-aguilera-salamanca-radio-2026`
- **Categoría:** compras / relaciones con el Estado; actividades, cargos y temporalidad.
- **Estado:** descartada.
- **Fecha de cierre:** 2026-11-25.
- **Corte de datos:** `meta.build_date = 2026-11-24T20:08:20+00:00`.
- **Identidad:** Angel González Aguilera. Sociedad enlazada por RUT 77.424.578-2, no por similitud nominal.

## Hechos comprobados

- La declaración InfoProbidad ID 1806799, rectificada el 15-07-2026, consigna cargo de consejero regional del Gobierno Regional de Coquimbo (asunción 06-01-2025) y participación en COMERCIALIZADORA ANGEL NICK SPA, RUT 77.424.578-2: tipo “ACCION”, cantidad 100, valor corriente declarado CLP $1.000.000 y controlador “true”. Giro declarado: emisora de radiodifusión y venta de productos para el hogar. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1806799
- Mercado Público identifica el mismo RUT y razón social como proveedor Adrenalina en dos OCs de la Municipalidad de Salamanca: 3682-817-TD26 (11-08-2026, aceptada) y 3682-1071-TD26 (29-10-2026, recepción conforme). Ambas muestran la causal “Adquisiciones inferiores a 30 UTM, que privilegien materias de alto impacto social”. La primera especifica publicidad radial del mes de julio y total CLP $357.000; la segunda describe servicios de publicidad y difusión radial municipal para agosto-diciembre de 2026. Fuentes primarias: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3682-817-TD26 y https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3682-1071-TD26
- En el oro, las dos órdenes suman CLP $2.356.997 y 57,24 UF (montos de la fuente en pesos; UF según el artefacto), y están en ventana `during` de la declaración; ambas son a la Municipalidad de Salamanca. No son compras al organismo consignado en esa declaración (GORE de Coquimbo): `same_institution=false`. Reproducible: [`consultas/angel-gonzalez-aguilera-salamanca-radio-2026-1.sql`](../consultas/angel-gonzalez-aguilera-salamanca-radio-2026-1.sql).
- El oro también registra un cupo anterior como concejal de la Municipalidad de Salamanca: estado `presunto_cesado`, última declaración de ese cupo 06-12-2021, sin `ended_on`; el cupo actual de consejero regional figura `vigente`. Esto no acredita la fecha exacta en que terminó el primer cargo. Reproducible: [`consultas/angel-gonzalez-aguilera-salamanca-radio-2026-2.sql`](../consultas/angel-gonzalez-aguilera-salamanca-radio-2026-2.sql). InfoProbidad ID 1806799 muestra la declaración vigente de consejero regional; el cargo y declaración municipal de 2021 constan en el oro, pero no se usó aquí una fuente primaria adicional para la fecha de término.

## Pregunta decisiva y explicación legítima más fuerte

¿Hay un nexo actual entre el cargo de consejero regional y estas contrataciones municipales, además de que la sociedad bajo su control provee un servicio de radiodifusión en una comuna donde ejerció anteriormente como concejal? La explicación legítima más fuerte respaldada por las primarias es una compra de publicidad radial cuyo giro coincide con el giro declarado de la sociedad, mediante la causal publicada de monto inferior a 30 UTM con impacto social. No hay en las fuentes revisadas evidencia de intervención personal del consejero, de que el GORE fuera comprador, ni de una actuación actual suya en la Municipalidad de Salamanca. El patrón asciende a dos órdenes; el total agregado del oro no se presenta como verificación primaria independiente.

## Decisión

**Descartada.** La identidad, participación controladora y dos órdenes a la misma sociedad están comprobadas en las fuentes primarias. Sin embargo, las órdenes no son del organismo donde ejerce actualmente; su antiguo cupo municipal lleva años sin declaración en el oro y no se determinó aquí su fecha de término con fuente primaria. La coincidencia territorial, el trato directo por umbral bajo y un giro comercial congruente no prueban intervención, beneficio funcional ni un monto material suficiente por sí solos. No pasa la pregunta editorial de relevancia funcional con la evidencia disponible.

**Qué la reabriría:** un expediente o acto que acredite participación del declarante en la decisión de compra o un nexo concreto entre sus atribuciones regionales y estas órdenes; evidencia primaria de que ejercía un cargo municipal pertinente en las fechas; o una línea Servel/documental que acredite que la publicidad pagada a la sociedad estuvo ligada a una campaña suya. No se investigó una relación de las órdenes con campañas electorales.

## Fuentes y consultas

1. InfoProbidad, declaración 1806799: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1806799
2. Mercado Público, OC 3682-817-TD26: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3682-817-TD26
3. Mercado Público, OC 3682-1071-TD26: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3682-1071-TD26
4. Oro, corte 2026-11-24T20:08:20+00:00, consultas 1 y 2 enlazadas arriba; único acceso usado: `ec-gold-sql`.
