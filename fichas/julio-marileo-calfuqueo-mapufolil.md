# Mapufolil, Julio Marileo y compras de CONADI en ventana de cargo regional — evidencia insuficiente

- **ID:** `julio-marileo-calfuqueo-mapufolil`
- **Categoría:** compras/relaciones con el Estado; actividad/cargo/temporalidad
- **Estado:** evidencia insuficiente; no preparar borrador de caso.
- **Fecha de trabajo:** 2026-10-03.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00` (copia local sincronizada sin cambios según el pre-run).
- **Identidad:** InfoProbidad enlaza el nombre completo JULIO NELSON MARILEO CALFUQUEO con su declaración de candidatura a consejero constitucional de pueblo indígena en 2023 y con declaraciones del Gobierno Regional de La Araucanía desde 2025. La declaración de 2025 informa 100% de derechos en MAPUFOLIL EIRL.[18][29]

## Resultado y mapa de afirmaciones

La consulta reproducible al oro recupera ocho órdenes únicas de la empresa declarada, asociadas al proveedor del mismo nombre, por CLP nominales 570.000.000 en total, entre el 24-05-2023 y el 18-06-2026; comprador declarado en todas las filas: CONADI. El resultado agrega solo códigos únicos `is_primary_for_person = true` y `timing = 'during'`, no suma filas espejo `after_1y`. Consulta guardada: [`consultas/julio-marileo-calfuqueo-mapufolil-1.sql`](../consultas/julio-marileo-calfuqueo-mapufolil-1.sql), ejecutada con `ec-gold-sql` el 2026-10-03. Las ocho filas muestran procedencia de licitación pública en el artefacto; esto no evalúa la calidad de cada competencia ni la selección.

- **2023:** la orden 765-206-SE23 registra CLP 80.000.000 y proviene de la licitación 765-12-LP23; la ficha del proceso figura abierta y adjudicada el 22-05-2023.[11][19] La orden 807-52-SE23 registra CLP 25.000.000, proveedor Mapufolil y licitación pública 807-15-LE23.[12]
- **2024:** las fichas públicas registran CLP 85.000.000 (807-35-SE24, 08-05-2024) y CLP 80.000.000 (809-62-SE24, 07-08-2024), ambas a órdenes de CONADI derivadas de licitaciones.[20][21]
- **2025:** las fichas públicas registran CLP 80.000.000 (807-40-SE25), CLP 40.000.000 (807-43-SE25) y CLP 100.000.000 (805-25-SE25), enviadas entre el 22-05 y el 03-06 y derivadas de licitaciones.[22][23][24]
- **2026:** la ficha de la orden 807-26-SE26 registra CLP 80.000.000, enviada el 18-06-2026, derivada de la licitación 807-8-LP26.[25]

El cotejo de las fichas primarias y la declaración muestra órdenes de la persona jurídica, no atribuye ingresos personales ni intervención a Marileo.[11][12][29]
La declaración 2025 del Gobierno Regional registra asunción el 06-01-2025; una nómina oficial de junio de 2025 identifica a Marileo como consejero regional por Cautín II.[28][29]
Por eso, las tres órdenes de 2025 son posteriores a la fecha de asunción declarada.[22][23][24]
La orden de junio de 2026 también es posterior.[25][29]

El oro deja `same_institution` como `NULL` para estas órdenes: según la metodología, significa que no se pudo determinar si comprador y organismo declarado son el mismo, no que sean distintos. No se atribuye a Marileo participación personal en la licitación, evaluación, adjudicación, supervisión ni recepción.

**Relevancia posible, no conclusión:** hay continuidad de ventas de una empresa que Marileo declara controlar a CONADI.[29]
Su declaración sitúa el inicio del cargo regional el 06-01-2025.[29]
Las tres órdenes de 2025 ocurren después de esa fecha.[22][23][24]
La orden de 2026 prolonga esa secuencia.[25]
No se halló en esta pasada un vínculo documentado entre las funciones del cargo regional y estas compras de CONADI, ni participación de Marileo en decisiones de compra.
La coincidencia temporal por sí sola no establece conflicto, intervención ni irregularidad.

## Contraste, explicaciones legítimas y errores descartados

La explicación legítima más plausible que sí encuentra apoyo es la actividad de consultoría/capacitación intercultural de la empresa y la continuidad de programas públicos de revitalización lingüística: CONADI describe oficialmente que desde 2023 fortalece el aprendizaje de lenguas indígenas mediante inmersiones lingüísticas.[4] En 2023, Interferencia atribuyó a CONADI la respuesta de que los servicios de la empresa se prestaron vía licitación pública, en el mismo rubro, y que no hubo trato directo con esa empresa en 2022–2023.[5] Esa respuesta periodística no sustituye los expedientes ni la revisión de cada convocatoria.

Interferencia informó el 11-07-2023 que Marileo obtuvo 95 puntos y el contrato de CLP 80 millones de la licitación 765-12-LP23; el documento del acta de evaluación enlazado por el medio no se pudo recuperar por web_extract (timeout) y la navegación directa no mostró un lector de PDF. El portal oficial sí muestra el proceso abierto/adjudicado y la orden asociada, pero esta pasada no recuperó el acta ni las ofertas comparadas; por ello no afirma el puntaje, la evaluación individual, la composición de la comisión ni la razón del resultado como hechos verificados independientemente.[5][19]

Se descartaron errores previsibles del cruce: ocho códigos únicos, no las filas duplicadas `after_1y`; CLP nominales según las fichas, sin tratar montos como otra moneda; y proveedor societario separado de la persona natural. El registro marca `same_institution = NULL`, no `false`.

## Pasada amplia — rutas y resultados (2026-10-03)

1. **Minería del oro, pantalla ampliada de compras en propia institución:** consulta del corte vigente, con filtros de nombre similar, órdenes y control. Todos los resultados de la pantalla fueron personas ya cubiertas por casos/fichas o pistas previas; no se abrió duplicado.
2. **Minería transversal de proveedores societarios:** consulta independiente de candidatos con al menos cinco órdenes y CLP 100 millones; el nombre completo de Marileo apareció sin coincidencia en `INDICE.md`, casos publicados o fichas existentes. La pantalla es una priorización, no una afirmación periodística.
3. **Consultas focalizadas al oro:** serie de declaraciones y órdenes, más conteo/suma por código único. Resultado reproducible: 8 órdenes, 8 licitaciones, 1 comprador, CLP 570.000.000; corte incluido arriba. Se intentó primero un campo de cargo inexistente en `declarant`; se corrigió consultando su esquema y leyendo `declaration`/`declared_supply_order`, sin alterar la base.
4. **Origen de identidad y participación:** InfoProbidad, declaración 947430 y declaración 1461048; se cotejaron nombre completo, candidatura/organismo regional y sociedad declarada. El extracto del Diario Oficial de 2013 republicado por Dequienes fue solo una ruta secundaria de descubrimiento, no se usó para probar la coincidencia societaria.
5. **Origen contractual primario:** ocho fichas de orden de Mercado Público para 765-206-SE23, 807-52-SE23, 807-35-SE24, 809-62-SE24, 807-40-SE25, 807-43-SE25, 805-25-SE25 y 807-26-SE26; cada ficha mostró comprador, fecha, código de licitación y total. La ficha primaria de 765-206-SE23 además muestra el proveedor societario, CLP 80.000.000 y el vínculo a la licitación 765-12-LP23.
6. **Expediente de licitación:** página pública de Mercado Público para 765-12-LP23; confirma proceso abierto, adjudicado, finalidad y fecha. Los enlaces a anexos no se expusieron en texto utilizable durante esta extracción; el acta enlazada por Interferencia dio timeout. No se eludieron accesos ni controles.
7. **Contraste institucional y de prensa:** CONADI publica desde 2023 una iniciativa de inmersión lingüística; se revisó Interferencia (11-07-2023) como reporte de contexto y respuesta atribuida, no como sustituto del expediente. Interferencia atribuye a CONADI una respuesta sobre licitaciones del mismo rubro y ausencia de trato directo en 2022–2023.[4][5]
8. **Temporalidad/función pública:** InfoProbidad registra asunción en el Gobierno Regional desde 06-01-2025; el protocolo público de la Delegación Presidencial Regional de 19-06-2025 lo incluye como consejero regional por Cautín II. Esto sitúa la fecha de cargo, pero no acredita atribuciones sobre adquisiciones de CONADI.[28][29]
9. **Búsqueda de índice público alternativo y actos:** se consultó InfoTransparencia por la ficha de adjudicaciones, búsqueda web exacta por códigos de licitación y por la razón social en dominios de CONADI y Mercado Público. La búsqueda no produjo el acta de evaluación ni anexos oficiales; ese resultado no demuestra que no estén disponibles en otra ruta del portal.

## Decisión y condición para reabrir

**Estado: evidencia insuficiente; sin borrador de caso.**
La identidad, el interés societario y la cronología son reproducibles; la compra de 2023 se confirma en una ficha primaria.[11][19][29]
No se cruza el gate editorial: faltan el expediente/acta de evaluación y una conexión documentada entre funciones regionales y compras de CONADI; la explicación de servicios interculturales prestados mediante licitación sigue plausible.[4][5][19]
Las órdenes contratadas por la sociedad no permiten atribuir personalmente esos montos ni intervención a Marileo.[11][12][29]
La adjudicación de 2023 ya tenía cobertura periodística desde julio de ese año.[5]
El avance incremental de esta pasada es la secuencia 2024–2026 medida y su temporalidad posterior a la asunción declarada; no es una revelación de irregularidad (consulta SQL guardada).

**Próxima acción:** solo continuar si una ruta pública distinta permite obtener el expediente/acta de evaluación y si se puede documentar, con fuente oficial fechada, la competencia concreta del consejero regional pertinente a estas compras de CONADI. Si esas dos conexiones no aparecen, cerrar la pista como hecho de contratación empresarial concurrente sin atribución de intervención.

## Sources

[4] https://www.conadi.gob.cl/noticias/conadi-esta-apoyando-la-ensenanza-a-3-mil-ninos-y-jovenes-indigenas-de-sus-lenguas-originarias
    > "CONADI a partir del año 2023 está fortaleciendo el proceso de aprendizaje de las lenguas indígenas contemplando una nueva modalidad de aprendizaje de lenguas para niños y niñas indígenas como son las inmersiones lingüísticas"
[5] https://interferencia.cl/articulos/ex-candidato-consejero-y-pareja-de-rosa-catrileo-asesora-de-asuntos-indigenas-de
    > "Desde Conadi explicaron que “esta corporación no ha realizado ningún convenio por Trato Directo con la empresa mencionada entre los años 2022-2023. Los servicios prestados han sido siempre en el mismo rubro”."
[11] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=765-206-SE23
    > "Orden de Compra Proveniente de licitación pública"
    > "TOTAL OC	$ 80.000.000"
[12] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=807-52-SE23
    > "TOTAL OC	$ 25.000.000"
    > "Proveniente de Licitación	807-15-LE23"
[18] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=947430
    > "Candidato A Consejero Constitucional De Pueblo Indigena 2023 Servel Candidatos A Elecciones"
[19] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?qs=tUarje1/7HsO+V5tQA4Sow==
    > "Fecha de Adjudicación: 22-05-2023 17:53:57"
    > "Tipo de convocatoria:	ABIERTO"
[20] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=807-35-SE24
    > "TOTAL OC	$ 85.000.000"
[21] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=809-62-SE24
    > "TOTAL OC	$ 80.000.000"
[22] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=807-40-SE25
    > "TOTAL OC	$ 80.000.000"
[23] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=807-43-SE25
    > "TOTAL OC	$ 40.000.000"
[24] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=805-25-SE25
    > "TOTAL OC	$ 100.000.000"
[25] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=807-26-SE26
    > "TOTAL OC	$ 80.000.000"
[28] https://dprlaaraucania.dpr.gob.cl/media/2025/06/PROTOCOLO-REGIONAL-19-DE-JUNIO-2025.pdf
    > "CONSEJERO REGIONAL CAUTÍN II JULIO MARILEO CALFUQUEO"
[29] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1461048
    > "Asume el cargo: 06-01-2025"
    > "Cantidad / Porcentaje 100"
