# Franco Israel Espinoza Lobos — Climatización y Mantención SpA

- **ID:** `franco-espinoza-lobos-climaspa`
- **Categoría:** patrimonio e intereses; compras con el Estado; temporalidad
- **Estado:** evidencia insuficiente
- **Revisado:** 2026-10-05 UTC
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07Z`; sincronizado a las 16:00:45Z el 02-10-2026. El script de corrida informó que no hubo cambios desde esa sincronización.

## Síntesis editorial

La declaración de cese de 13-04-2026 identifica por nombre completo a Franco Israel Espinoza Lobos, administrador del Poder Judicial en Copiapó; registra como no remunerada su actividad de director de Climatización y Mantención SpA desde 2011 y 100 acciones valorizadas en CLP 2.000.000; la declaración no muestra porcentaje de propiedad ni el total de acciones de la sociedad, por lo que no se puede inferir control ni una participación porcentual.[1]

La nómina pública de Ley del Lobby lo registra como administrador zonal de Copiapó entre 29-08-2019 y 31-03-2026.[6] Hay una discrepancia sin resolver: la declaración, aunque es “por cese”, consigna “Fecha de Cese en el cargo 31-12-2026”, posterior a la fecha de presentación y distinta del término que muestra esa nómina.[1][6] No armonizo ambas fechas ni afirmo el día efectivo de cese más allá de lo que dice cada fuente.

El oro enlaza el emisor de las acciones con Climatización y Mantención SpA (nombre proveedor CLIMA SPA): 440 órdenes de compañía, 59 compradores, 131 marcadas directas y CLP 1.086.133.293 en el agregado de `declared_supply`, con 0 coincidencias de institución. Una consulta independiente en `purchase_order` arroja 442 códigos, 70 códigos de comprador, 137 marcados directos, CLP 1.086.761.379 nominales y ninguna fila repetida por código. Las diferencias de conteo, compradores, bandera directa y monto no quedaron reconciliadas y no usaré un agregado único publicado; ambos resultados y sus consultas quedan visibles en `-1.sql`, `-2.sql`, `-3.sql` y `-4.sql`.

Una ficha primaria de Mercado Público muestra que una orden del Gobierno Regional de Atacama de febrero de 2025 a CLIMA SPA deriva de la licitación 751-2-LE24 y tuvo recepción conforme.[5] La ficha de esa licitación la identifica como convocatoria abierta, licitación pública y adjudicada para adquirir y mantener equipos de aire acondicionado.[2] Es evidencia compatible con un proveedor de climatización contratado mediante competencia pública, no evidencia de influencia individual del declarante.

Una orden distinta, emitida por la unidad FR Maule del Ministerio Público el 18-05-2026 por CLP 6.500.000, refiere a diagnóstico y mantención preventiva de equipos VRV.[3] El comprador es Ministerio Público, no la entidad Poder Judicial que aparece en la declaración; la fecha también es posterior al 31-03-2026 informado por Ley del Lobby. No atribuyo intervención de Espinoza en esa orden.

**Decisión:** no alcanza el gate de caso. Hay una conexión declarativa y un proveedor estatal recurrente, pero no se obtuvo evidencia primaria pública del porcentaje total de acciones, ni de que la relación entre emisor y proveedor se pueda cotejar desde el documento de origen (el campo RUT aparece reservado), ni de intervención, evaluación, autorización, administración o recepción individual de una compra. La evidencia disponible tampoco vincula una compra a la propia institución del declarante. La explicación legítima más plausible es una actividad comercial de climatización que vende a varios organismos, incluyendo contratos adjudicados por licitación abierta; esto no explica por sí solo cada orden, pero es compatible con los documentos revisados.[2][5]

## Mapa de afirmaciones

| Hecho a establecer | Fuente primaria necesaria | Resultado | Incertidumbre |
|---|---|---|---|
| Identidad, cargo e interés declarado | Declaración original y fuente institucional de cargo | InfoProbidad ID 5115700 enlaza el nombre completo, Poder Judicial, administrador, Copiapó, las 100 acciones, valor de CLP 2.000.000 y actividad no remunerada de director.[1] Ley del Lobby publica el cargo de administrador zonal y sus fechas.[6] | RUT societario reservado en la declaración; sin porcentaje societario. Fechas de cese discordantes entre fuentes.[1][6] |
| Ventas de la sociedad/proveedor | Mercado Público por orden/código y cruce societario | Gold `purchase_order` registra 442 órdenes únicas (sin códigos duplicados en el filtro), mientras `declared_supply` presenta 440; diferencia de conteo y monto pendiente. Comprador exacto con términos Juzgado/Corte/Poder Judicial/Corporación Administrativa: 0 filas en la consulta guardada. | El gold conecta los registros, pero no se pudo cotejar el RUT societario oculto en la declaración con el RUT que publica Mercado Público desde la ficha de origen. El cero se limita a los nombres y campos consultados; no prueba ausencia de cualquier vínculo. |
| Contexto del contrato de GORE Atacama | Licitación, orden, acta/resolución y ofertas | La licitación 751-2-LE24 fue abierta y pública; la OC 751-18-SE25 declara que proviene de ella y marca recepción conforme.[2][5] | No se descargaron anexos/acta de evaluación ni se identificó rol de Espinoza en el proceso. |
| Posible vínculo con organismos de justicia | Órdenes por proveedor a cada unidad y expediente que nombre al funcionario | No hubo compra al Poder Judicial ni a Corporación Administrativa en la búsqueda por nombre del comprador. Apareció una orden a Ministerio Público (FR Maule), con comprador y objeto identificados.[3] | Ministerio Público y Poder Judicial son entidades distintas; no hay fuente que conecte al funcionario con esa compra. |
| Explicación legítima y refutación | Bases, ficha de licitación, objeto de la orden y explicación laboral/patrimonial | Giro/objeto de climatización y licitación abierta del GORE apoyan la hipótesis de proveedor comercial ordinario.[2][5] La orden posterior del Ministerio Público también describe mantenimiento de climatización.[3] | No se halló una fuente que explique cada selección de proveedor; no se debe interpretar como prueba de ausencia de intervención. |

## Rutas y acciones ejecutadas — 2026-10-05 UTC

1. **Declaraciones primarias (InfoProbidad):** extracción completa de la declaración de cese ID 5115700; cotejé nombre, organismo, cargo, lugar, fechas, actividad de director no remunerada, número de acciones y valor declarado.[1] No reproduje RUT personal ni el RUT societario reservado.
2. **Fuente institucional alternativa (Ley del Lobby):** consulta de nómina oficial por nombre completo; encontró administrador zonal de Copiapó desde 29-08-2019 hasta 31-03-2026.[6] Comparé sus fechas con la declaración de cese; la divergencia queda explícita, no se usa para imputar continuidad o falsedad.
3. **Oro, perfil e identidad de proveedor:** consulta exacta por nombre completo y `declared_supply`; serie de snapshots muestra a la sociedad con participación `ACCION`, `is_controlling=false`, cifras agregadas y una fecha de orden final 25-03-2026. Consulta reproducible `consultas/franco-espinoza-lobos-climaspa-1.sql`; artefacto de solo lectura.
4. **Conteo independiente canónico:** query a `purchase_order` por RUT societario de la empresa; 442 códigos únicos, 70 compradores codificados, monto nominal agregado, intervalo 2020-01-07–2026-09-21 y 137 códigos marcados como directos. Las 442 filas corresponden a 442 códigos, sin repetición interna. Consulta `-2.sql`. Esta cifra discrepa del agregado `declared_supply` (440/59 y otro total); no se escogió una explicación especulativa.
5. **Búsqueda de compras a su propia institución:** query por comprador con “juzgado”, “corte”, “poder judicial” y “corporación administrativa”; 0 filas en `purchase_order` para el RUT societario consultado. Consulta literal `consultas/franco-espinoza-lobos-climaspa-4.sql`; el resultado no permite concluir que no haya documentos o unidades bajo otros nombres.
6. **Fichas primarias de Mercado Público:** revisé la licitación GORE Atacama 751-2-LE24 y la OC 751-18-SE25, derivada de ella, junto con proveedor, fecha, comprador, estado y objeto.[2][5] La ficha pública describe una licitación abierta para mantenimiento y reparación de climatización.[2]
7. **Orden adversarial fuera del Poder Judicial:** revisé OC 696704-45-AG26, comprador Ministerio Público, FR Maule, enviada el 18-05-2026, de CLP 6.500.000 por servicios de mantenimiento VRV.[3] Esto refuta cualquier lectura que equipare automáticamente “instituciones del sector justicia” con “misma institución”; no acredita participación de Espinoza.
8. **Búsquedas públicas exactas y alternativas:** búsquedas por nombre completo/cargo en web y dominio PJUD; los resultados exactos no proporcionaron documento de intervención contractual. Parte del sitio PJUD presentó CAPTCHA; no se intentó eludirlo. La búsqueda secundaria halló la noticia del nombramiento de 2021, pero no se utilizó para afirmar intervención ni para resolver las fechas; se prefirió la nómina Ley del Lobby y la declaración primaria.
9. **Deduplicación:** búsqueda literal del nombre completo y la razón social en fichas locales e índice, y en casos públicos; no encontró una pista ni caso previo con esta identidad/huella.

## Gate editorial

1. **Identidad corroborada:** nombre completo más cargo e institución en InfoProbidad, con corroboración nominal independiente de cargo en Ley del Lobby.[1][6]
2. **Hecho material reproducible y fuente primaria:** la declaración y órdenes por proveedor son verificables; conteos discrepantes entre capas del gold quedaron preservados y las fichas/consultas canónicas son localizables.[2][3][5]
3. **Relevancia pública explicable:** existe una actividad patrimonial declarada en una compañía que figura como proveedora estatal, pero no se estableció relación con la entidad del declarante.
4. **Error de cruce/heurística:** se observó que el RUT societario de origen está reservado en la declaración y no se cotejó públicamente con el RUT del proveedor; además existe discrepancia `declared_supply` vs. `purchase_order`. Esto impide tratar el agregado como hecho consolidado sin revisión adicional.
5. **Explicación legítima:** se contrastó la actividad con una licitación pública abierta y órdenes de mantenimiento de climatización.[2][3][5] Los documentos no explican todas las adjudicaciones ni el papel individual.

**Conclusión:** evidencia insuficiente. No crear borrador de caso. Próxima acción concreta: reabrir solo si una fuente primaria accesible permite cotejar el RUT societario/porcentaje total de acciones y aparece un acto o expediente público que identifique a Espinoza en una decisión, evaluación, administración o recepción de una compra pertinente. Revisor humano independiente: no hubo en esta corrida.

## Consultas reproducibles

- `consultas/franco-espinoza-lobos-climaspa-1.sql` — snapshots, vínculo declarado/sociedad y cifras de `declared_supply`.
- `consultas/franco-espinoza-lobos-climaspa-2.sql` — conteo y suma canónica de `purchase_order` por RUT societario.
- `consultas/franco-espinoza-lobos-climaspa-3.sql` — contraste del emisor de acciones de `financial_asset` con la sociedad enlazada en `declared_supply`.
- `consultas/franco-espinoza-lobos-climaspa-4.sql` — búsqueda por variantes explícitas del nombre de la institución compradora; 0 filas.

No se usaron API del producto, credenciales, builds ni pipeline; el oro se consultó únicamente con `ec-gold-sql`.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5115700 — InfoProbidad: declaración de cese Franco Israel Espinoza Lobos, 13-04-2026
    > "Fecha de Cese en el cargo | 31-12-2026"
    > "Cantidad que representa | 100"
    > "Clasificación | No Remunerada"
    > "Valor corriente en plaza | $ 2.000.000"
[2] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=751-2-LE24 — Mercado Público: licitación de climatización del Gobierno Regional de Atacama 751-2-LE24
    > "El Gobierno Regional de Atacama llama a propuesta pública para el “SERVICIO DE ADQUISICÓN, MANTENCIÓN Y REPARACIÓN DE EQUIPOS DE AIRE ACONDICIONADO PARA EL GOBIERNO REGIONAL DE ATACAMA”"
    > "Tipo de convocatoria: ABIERTO"
[3] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=696704-45-AG26 — Mercado Público: OC Ministerio Público, mantención equipos climatización, 696704-45-AG26
    > "Fecha de Envío | 18-05-2026"
    > "Unidad de Compra | FR MAULE"
[5] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?qs=B6TpoxGm0ef4CUciqLX1Mw== — Mercado Público: OC 751-18-SE25, mantenimiento de aire acondicionado
    > "Fecha de Envío | 03-02-2025"
    > "Proveniente de Licitación | 751-2-LE24"
[6] https://www.leylobby.gob.cl/instituciones/NR001/cargos-pasivos?todos=1&page=27 — Ley del Lobby: nómina de sujetos pasivos, administrador zonal Copiapó
    > "Franco Israel Espinoza Lobos | Consejero Consejo Coordinación Zonal de Copiapó (Administrador Zonal) | 2019-08-29 | 2026-03-31"