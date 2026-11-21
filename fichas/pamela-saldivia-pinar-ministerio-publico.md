# Pamela del Carmen Saldivia Guerrero — Transportes Pinar y Ministerio Público

**Decisión: descartada.**

## Pregunta
¿Existe evidencia primaria de que Pamela del Carmen Saldivia Guerrero, abogada asistente de fiscal del Ministerio Público, intervino o obtuvo beneficio particular por órdenes de compra emitidas a Sociedad de Transportes Pinar Ltda., sociedad en la que su declaración registra una participación minoritaria? ¿La coincidencia muestra un nexo funcional material que justifique un caso?

## Hechos comprobados

- InfoProbidad identifica a **Pamela del Carmen Saldivia Guerrero**, cargo de **abogado asistente de fiscal**, organismo **Ministerio Público**, y fecha de asunción **01-12-2016**. Su declaración de 20-03-2018 (ID InfoProbidad `fc27488875c9b7c2e3f1092b56d9501f`) publica esos datos: [declaración InfoProbidad](https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=fc27488875c9b7c2e3f1092b56d9501f).
- La serie del oro vincula al mismo nombre completo con el RUT 76.077.428-6, **SOCIEDAD DE TRANSPORTES PINAR LTDA**, tipo `DERECHO`, cantidad 5 y valor corriente declarado de CLP $5.000.000 en 2017 y 2018. Las declaraciones posteriores mantienen 5 derechos y, en las últimas (2025 y 2026), CLP $20.000.000. La declaración 2026 tiene source ID InfoProbidad `1704683`.
- La página primaria InfoProbidad para la declaración de 2018 describe además, separadamente, al cónyuge como microempresario en Transportes Pinar y registra sus derechos/acciones. Esa circunstancia es contexto de interés, no prueba de participación o intervención individual de la declarante.
- En el oro, nueve órdenes distintas aparecen clasificadas como `same_institution = true`, fechadas entre **19-12-2017 y 13-06-2019**, por un total deduplicado de **CLP $4.668.189 (169,58 UF)**. Se deduplicaron por `order_code`: la tabla del oro contiene filas repetidas por distintas declaraciones vinculadas. Todas figuran como convenio marco y con el comprador Ministerio Público. No son órdenes de trato directo.
- El registro de cargo de la capa `office` marca vigencia y fecha de asunción 01-12-2025, mientras las declaraciones de cargo muestran que ya ejercía como abogada asistente en 2016-2026. No uso esa fecha derivada para negar el cargo durante las compras: las propias declaraciones acreditan que el cargo existía en las fechas históricas.
- El filtro amplio de compras trae 230 órdenes del proveedor durante ventanas de declaraciones; ese conteo no equivale a órdenes de mismo organismo. Las nueve órdenes pertinentes son pequeñas y se tramitaron por convenio marco; no hay en las fuentes revisadas evidencia de decisión, intervención personal, adjudicación individual, pago personal o beneficio particular.

## Fuentes y consultas

- InfoProbidad, declaración de Pamela Saldivia, 20-03-2018, ID `fc27488875c9b7c2e3f1092b56d9501f`: https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=fc27488875c9b7c2e3f1092b56d9501f
- InfoProbidad, declaración de Pamela Saldivia, 27-03-2026, ID `1704683`: https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=1704683
- Mercado Público, orden 696954-178-CM17: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=696954-178-CM17
- Mercado Público, orden 696954-183-CM18: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=696954-183-CM18
- Mercado Público, órdenes 696954-200-CM18, 696954-259-CM18, 696954-256-CM18, 696954-10-CM19, 696954-46-CM19, 696954-45-CM19 y 696954-58-CM19 son consultables cambiando el parámetro `codigoOC` en el mismo portal.
- Consulta reproducible en `consultas/pamela-saldivia-pinar-ministerio-publico-1.sql`; oro consultado exclusivamente con `ec-gold-sql`.

## Explicación legítima más fuerte y límites

El proveedor participó en compras ordinarias mediante convenio marco; la coincidencia de organismo y accionariado minoritario declarado no demuestra intervención personal. Los montos individuales en el patrón consultado son bajos frente a los umbrales de materialidad editorial, no hay adjudicaciones directas, ni se encontró documento del proceso que involucre a Saldivia. El registro societario y el de compras tampoco prueban por sí solos quién realizó el trabajo o recibió el ingreso.

## Decisión

**Descartar:** falla la relevancia/necesidad de investigación adicional bajo el criterio editorial: señal estructural real, pero sin pregunta funcional concreta, materialidad ni evidencia de intervención. No corresponde presentar la coincidencia como irregularidad. Reabrir solo si aparece un documento primario de contratación que acredite intervención de Saldivia, o un expediente de control que identifique la transacción y su relevancia funcional.

## Oro

Corte de datos: `meta.build_date` = `2026-11-20T17:45:38+00:00`.
