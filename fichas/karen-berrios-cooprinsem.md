# Karen Alejandra Berríos Guerra — participación en Cooprinsem y compras públicas

- **ID:** `karen-berrios-cooprinsem`
- **Categoría:** patrimonio e intereses; compras/relaciones con el Estado
- **Estado:** descartada como pista de intervención en compras públicas
- **Revisado:** 2026-10-05 UTC
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; copia local de oro sin cambios desde la sincronización comunicada por el pre-run.

## Síntesis editorial

La declaración de InfoProbidad del 19-08-2025 identifica por nombre completo a Karen Alejandra Berríos Guerra y la presenta como “Candidato A Diputado 2025”, del organismo “Servel Candidatos A Elecciones”. En la sección societaria registra 2.280 acciones no controladoras en Cooprinsem Cooperativa Agrícola y de Servicios Ltda., adquiridas —según el formulario— el 14-03-2023, con valor corriente o libro de CLP 380.[1] La declaración no acredita que haya sido electa ni que haya ejercido una función pública con competencia sobre estas compras.

En el oro con corte 2026-10-02, el enlace de declaración a proveedor se apoya en el RUT societario coincidente. Para el tramo `during` del artefacto se cuentan 277 códigos únicos entre 19-08-2025 y 18-08-2026, por CLP 642.326.231 nominales, a 57 buyer keys. En el tramo `after_1y` se cuentan otros 35 códigos hasta el 01-10-2026, por CLP 58.859.683 a 21 buyer keys. Una consulta independiente sobre `purchase_order` da 312 códigos entre 19-08-2025 y 01-10-2026, por CLP 701.185.914 y 60 buyer keys. No se suman los dos conjuntos al total de `during`; la diferencia corresponde al tramo posterior. Consultas reproducibles `-1.sql` a `-3.sql`.

Dos fichas primarias confirman el proveedor y el RUT societario. La OC 591376-174-SE25, de INDAP y derivada de licitación pública 591376-15-LP25, describe un servicio de investigación genética; la OC 2981-310-SE26, de la PDI y derivada de 2981-41-LE26, describe alimento para perros.[5][6] Estas muestras verifican órdenes y objetos concretos, pero no caracterizan las 312 compras ni acreditan quién intervino en cada proceso.

La explicación comercial más plausible es la actividad ordinaria de una cooperativa agrícola que declara como giro la venta de insumos y servicios agropecuarios. Un artículo de Cooprinsem sobre una jornada de campo realizada con INDAP en 2022 menciona a Karen Berríos como propietaria del fundo Amancayes y anfitriona de la actividad; antecede a la adquisición de acciones que la declaración fecha en 2023 y no vincula a Berríos con las órdenes posteriores.[1][2]

**Decisión: descartada como pista de posible influencia o intervención personal en compras.** Hay coincidencia societaria y compras públicas reproducibles, pero el registro revisado es el de una candidata a diputada, no el de una titular de un organismo comprador; no se halló evidencia de rol individual en licitación, evaluación, autorización, administración o recepción. La participación minoritaria declarada y la actividad agrícola de la cooperativa no bastan para atribuirle las ventas ni para proponer un caso. No se concluye ausencia de relaciones no cubiertas por estas fuentes ni irregularidad alguna.

## Mapa de afirmaciones

| Hecho por establecer | Fuentes y comprobación | Resultado y límite |
|---|---|---|
| Identidad, calidad declarada e interés | InfoProbidad ID 1504030; consulta `-1.sql`; página completa abierta en navegador el 2026-10-05.[1] | Nombre completo, candidatura, sociedad, fecha, acciones, valor declarado y no-control se comprobaron. Una declaración no prueba elección o ejercicio de un cargo distinto del que consigna. |
| Enlace entre declaración y proveedor | `-1.sql`; RUT societario en declaración y fichas primarias de OC.[1][5][6] | El RUT de la persona jurídica coincide. No se usó similitud de nombre como prueba de identidad. |
| Magnitud y temporalidad de órdenes | `-2.sql` y `-3.sql`, con `is_primary_for_person`; contraste canónico en `purchase_order`.[5][6] | 277 códigos durante el intervalo del artefacto y 35 después; la consulta independiente suma 312 registros únicos para el período total. Los CLP son importes nominales de OC, no ingreso, utilidad o beneficio de la declarante. |
| Quién compró y qué se compró | Distribución por comprador en `-3.sql`; fichas oficiales de las OCs 591376-174-SE25 y 2981-310-SE26.[5][6] | Muestras de INDAP/PDI cotejadas por código, RUT, fecha, monto y objeto. No se infiere el objeto de todas las órdenes desde estas dos muestras. |
| Conexión funcional/intervención | Campo institucional de declaración; ficha de proveedor y documentos visibles de las dos OCs muestreadas; búsquedas exactas descritas abajo | No se encontró fuente pública que documente que Berríos fuera autoridad compradora o participara en esos procesos. Resultado negativo limitado a las rutas revisadas. |
| Explicación legítima | Giro en la declaración; artículo de Cooprinsem 2022; modalidades y objetos en las dos OCs.[1][2][5][6] | Actividad comercial agrícola de la cooperativa es compatible con el giro declarado y algunas compras. El artículo es de la propia cooperativa y solo aporta contexto anterior; no explica la selección de cada proveedor. |

## Rutas revisadas — 2026-10-05 UTC

1. **Deduplicación:** lectura de `INDICE.md`, búsqueda literal en fichas y consultas locales, y revisión del README/índice de casos publicados. No apareció antes esta combinación de nombre completo, Cooprinsem o RUT societario como pista; el README enumera 61 casos publicados.
2. **Minería del oro:** cribado amplio de participación societaria no ampliamente distribuida con ventas estatales, filtro por vigencia y `n_same_institution`; los resultados con vínculo institucional directo del subconjunto eran pistas ya registradas/publicadas. Karen Berríos apareció en el subconjunto de ventas estatales sin match de misma institución; esta observación fue una señal de cribado, no una prueba de relación funcional.
3. **Declaración primaria:** página completa InfoProbidad ID 1504030 abierta el 2026-10-05; se cotejaron nombre, organismo, cargo consignado, fecha declarada, RUT societario, número de acciones, fecha de adquisición, valor y ausencia de control.[1]
4. **Consulta reproducible de enlace:** `-1.sql` enlaza nombre completo y declaración con la sociedad; el resultado confirma proveedor por RUT societario exacto. Se observó también una empresa de propiedad de la declarante, pero no se atribuyó a esa empresa la fila de Cooprinsem.
5. **Desduplicación temporal y segunda tabla:** `-2.sql` cuenta códigos únicos por `timing` en `declared_supply_order` y contrasta los registros/cifras en `purchase_order`; `-3.sql` enumera compradores y una muestra de códigos primarios. El conteo independiente dio 312 códigos y CLP 701.185.914 para 19-08-2025–01-10-2026; se separó correctamente la parte posterior al primer año. `buyer_key` con variante “SERVEL” devolvió cero, pero eso solo describe ese filtro: no prueba ausencia de cualquier relación.
6. **Mercado Público primario:** extracción de las fichas 591376-174-SE25 y 2981-310-SE26. La primera enlaza a 591376-15-LP25, indica proceso de licitación pública y registra CLP 112.207.860 total; la segunda enlaza a 2981-41-LE26 y registra CLP 59.705.870 total.[5][6]
7. **Contexto comercial independiente de la declaración:** noticia del propio sitio de Cooprinsem sobre jornada con INDAP, publicada en 2022; se usa como fuente de la entidad interesada, no como verificación independiente de rol o compra.[2]
8. **Contraste electoral:** búsqueda web por nombre completo y elección 2025; un perfil secundario DecideChile mostraba “2 candidaturas / 0 ganadas” y última actualización 14-11-2025.[3] No se usa como fuente primaria ni para fijar el estado actual. Servel fue consultado por su página de candidaturas 2025, pero el texto accesible en esa ruta cubría la segunda votación presidencial y no resolvió el resultado individual de Berríos.[4]
9. **Búsqueda de procesos por identificador exacto:** búsquedas web de `591376-15-LP25` e `2981-41-LE26`; no se hallaron resultados adicionales indexados útiles. La ficha primaria de cada OC fue la ruta disponible para verificar proveedor/objeto; las actas y ofertas no se obtuvieron en esta pasada.

## Gate editorial

1. **Identidad:** sí, nombre completo en InfoProbidad y proveedor enlazado por RUT de persona jurídica.[1][5][6]
2. **Hecho material reproducible:** compras de la cooperativa medibles por órdenes únicas y dos órdenes individuales verificadas; consultas guardadas.
3. **Relevancia pública:** limitada en lo observado: la declaración consigna una candidatura electoral, no una función de autoridad compradora; no hay nexo probado con actos de adquisición.
4. **Descartar error de cruce:** se usó RUT societario y se compararon `declared_supply_order` y `purchase_order`; la ventana temporal separa 277 órdenes `during` de 35 `after_1y`. No se atribuyeron montos a la persona.
5. **Alternativa legítima:** giro agrícola declarado, actividad pública de Cooprinsem con INDAP anterior a la adquisición de acciones, y órdenes muestreadas que describen productos/servicios de la cooperativa. No se encontró intervención personal.

**Próxima acción:** ninguna en ausencia de fuente primaria nueva que pruebe ejercicio de un cargo pertinente y participación concreta en un proceso o compra. No hubo revisor independiente en esta corrida. No se preparó borrador de caso.

## Consultas reproducibles

- `consultas/karen-berrios-cooprinsem-1.sql` — declaración, sociedad y proveedor enlazado por RUT.
- `consultas/karen-berrios-cooprinsem-2.sql` — órdenes únicas por `timing` y contraste canónico.
- `consultas/karen-berrios-cooprinsem-3.sql` — distribución por comprador y muestra de órdenes.

Consultadas exclusivamente con `ec-gold-sql` en modo solo lectura. Corte `2026-10-02T15:43:07+00:00`; ejecución 2026-10-05. Sin API del producto, credenciales ni pipelines.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1504030 — InfoProbidad: declaración Karen Berríos
    > "Organismo: Servel Candidatos A Elecciones"
    > "Cargo o función Candidato A Diputado 2025"
    > "Nombre o Razón Social COOPRINSEM COOPERATIVA AGRICOLA Y DE SERVICIOS LTDA"
[2] https://noticias.cooprinsem.cl/2022/11/25/productores-conocen-resultados-de-progenie-y-bienestar-animal-en-terreno — Cooprinsem: día de campo INDAP Los Lagos
    > "De esta manera, productores y profesionales del área se dieron cita en el predio de producción sustentable, fundo Amancayes de propiedad de Karen Berrios, ubicado en el sector Amancayes, comuna de Fresia."
[3] https://www.decidechile.cl/nodo-electoral/candidatos/karen-alejandra-berrios-guerra — DecideChile: perfil electoral Karen Berríos
    > "2 candidaturas 0 ganadas"
[4] https://www.servel.cl/candidaturas-y-programas-elecciones-presidencial-y-parlamentarias-2025 — Servel: candidaturas y programas 2025
    > "La Segunda Votación Presidencial se realiza entre las dos candidaturas que obtuvieron las más altas mayorías relativas en la primera vuelta."
[5] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=591376-174-SE25 — Mercado Público: OC 591376-174-SE25 INDAP
    > "PDG INSEMINACION ARTIFICIAL PORCION AFECTA"
    > "R.U.T. | 82.392.600-6"
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2981-310-SE26 — Mercado Público: OC 2981-310-SE26 PDI
    > "ALIMENTO EXTRUIDO BRIACAN / JENAMTE"
    > "R.U.T. | 82.392.600-6"
