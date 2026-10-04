# Maximiliano Luksic Lederer / pasivo declarado a favor de su padre

- **ID:** `maximiliano-luksic-deuda-familiar`
- **Estado:** `evidencia insuficiente` (2026-10-04). Ficha de verificación patrimonial; no es caso ni imputación.
- **Corte del artefacto:** `gold.duckdb`, `meta.build_date=2026-10-02T15:43:07+00:00`; consultas read-only ejecutadas el 2026-10-04.
- **Identidad:** coincidencia de nombre completo en InfoProbidad y en `person.full_name`; el panel enlaza al mismo identificador de persona y declara Alcalde de la Municipalidad de Huechuraba. No se usa ni reproduce RUT personal.

## Mapa de afirmaciones

**Registro reciente.** InfoProbidad publica la declaración ID 1831403, fechada 21-09-2026, como actualización periódica de Maximiliano Luksic Lederer en el cargo de alcalde de Huechuraba. Informa pasivos globales por CLP 5.452.877.868 y una obligación «OTRO» por CLP 4.597.934.577 a nombre de Andrónico Luksic Craig; la misma página declara el parentesco padre.[5] Es un monto declarado, no una verificación independiente de saldo, exigibilidad, condiciones, origen o movimientos del crédito.

**Reproducción local.** La consulta por `person_id` devuelve seis declaraciones entre 26-07-2024 y 21-09-2026. En la última, el panel registra activos nominales por CLP 16.647.723.091, pasivos por CLP 5.452.877.868 y patrimonio neto calculado por el artefacto de CLP 11.194.845.223; el detalle clasifica CLP 4.597.934.577 como «OTRO» a favor de Andrónico Luksic Craig y CLP 854.943.291 como crédito hipotecario Scotiabank. La suma del detalle cuadra con el total global publicado por el artefacto (`consultas/maximiliano-luksic-deuda-familiar-1.sql` y `-2.sql`). Estos son importes nominales de la fecha declarada, no avalúos actuales ni saldos auditados.

**Antecedente conocido.** Una publicación de Mala Espina del 14-10-2024 informó que la declaración de candidato de 26-07-2024 ya identificaba dos pasivos «OTRO» a favor de su padre por CLP 882.534.968 y CLP 3.498.882.105, además de pasivos globales por CLP 5.218 millones.[6] InfoProbidad confirma esos dos importes, acreedor y pasivo global de CLP 5.218.323.028 en el formulario primario de 2024.[1] Por tanto, la existencia del vínculo acreedor/deudor no es una novedad de esta corrida.

## Rutas examinadas (2026-10-04)

1. **Índice y deduplicación interna:** búsqueda por nombre completo y variantes en índice, 33 fichas de investigación y repositorio público de casos; no apareció ficha ni caso coincidente. Se revisaron las pistas recientes y categorías de patrimonio antes de abrir esta ficha.
2. **Serie reproducible del oro:** consulta guardada 1, más cruce independiente a `panel` y tabla `declaration`, reproduce seis snapshots, institución/cargo, fecha y pasivos globales; no se sumaron declaraciones ni se contó dos veces un activo/pasivo.
3. **Detalle actual y evolución del pasivo:** consulta guardada 2 distingue la última declaración marcada actual y sus dos obligaciones por tipo y acreedor; consulta guardada 1 contrasta los seis snapshots y las dos entradas a favor del mismo acreedor en 2024/2025 con una entrada consolidada en 2026. La forma del cambio no permite inferir por sí sola refinanciamiento, pago o nuevo préstamo.
4. **Documento primario de origen:** InfoProbidad ID 1831403, declaración completa del 21-09-2026, cotejada por nombre, cargo, fecha, monto global y pasivo individual; ID 1253246 (26-07-2024) revisado como antecedente.[1][5]
5. **Cobertura secundaria previa y explicación plausible:** Mala Espina ya había descrito públicamente en octubre de 2024 los pasivos frente al padre y otros componentes patrimoniales del candidato.[6] La explicación menos especulativa compatible con los registros es una obligación financiera intrafamiliar declarada de manera nominal; falta contrato o respaldo público que determine su origen y condiciones.
6. **Falsación por contratos públicos:** consulta guardada 3 buscó el texto «luksic» en el nombre de proveedor del universo `purchase_order` del oro: 0 órdenes / 0 proveedores en ese campo. Es un filtro textual estrecho, no prueba ausencia de proveedores relacionados, vínculos indirectos ni decisiones municipales conectadas.
7. **Intereses y gestión municipal:** se revisó el índice anual 2025 de audiencias de Ley del Lobby del alcalde y se hicieron búsquedas en los dominios municipales, Mercado Público y web abierta con el nombre del acreedor y Huechuraba; no apareció un acto que conecte el crédito declarado con una decisión, contrato o beneficio municipal. No se interpreta ese negativo como inexistencia.

## Límites, alternativas y decisión

- El vínculo familiar está expresamente declarado por la fuente primaria; ello explica la identidad del acreedor, no acredita condiciones, origen o movimientos del pasivo.[5]
- El pasivo actual fue declarado como «OTRO». No se localizó contrato, escritura, registro de pago ni verificación del saldo por una fuente independiente.
- La cobertura de 2024 confirma que el núcleo del dato ya era público; el cambio de valores entre snapshots no basta para inferir una nueva operación o un asunto municipal.[1][6]
- El artefacto y el campo de proveedor no cubren por sí solos relaciones de personas naturales, intermediación ni todos los actos municipales; la búsqueda de “luksic” fue solo una falsación parcial.
- **Contraste adversarial:** la lectura de actualidad se debilita porque la obligación familiar ya constaba en el documento de candidatura de 2024 y no surgió acto municipal conectado en las rutas acotadas. No hubo revisor independiente en esta corrida.

**Decisión:** `evidencia insuficiente`; no preparar borrador. Interés público explicable: conocer las obligaciones patrimoniales declaradas por el alcalde y su acreedor relacionado. Pero la evidencia hallada reproduce una relación ya conocida y declarada, sin fuente independiente sobre términos/saldo ni documento que la conecte con el ejercicio del cargo. Reabrir solo si aparece evidencia primaria pública sobre origen/condiciones del pasivo o un acto municipal concreto que haga pertinente el vínculo; no repetir búsquedas generales.

## Consultas guardadas

- [`maximiliano-luksic-deuda-familiar-1.sql`](../consultas/maximiliano-luksic-deuda-familiar-1.sql): serie de pasivos por declaración.
- [`maximiliano-luksic-deuda-familiar-2.sql`](../consultas/maximiliano-luksic-deuda-familiar-2.sql): snapshot actual y detalle de pasivos.
- [`maximiliano-luksic-deuda-familiar-3.sql`](../consultas/maximiliano-luksic-deuda-familiar-3.sql): búsqueda textual acotada del apellido en proveedores.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1253246 — declaración primaria 26-07-2024
    > "Monto global en pesos $ 5.218.323.028"
    > "Monto adeudado en pesos | $ 882.534.968"
    > "Monto adeudado en pesos | $ 3.498.882.105"
    > "Nombre o Razón Social del acreedor | ANDRONICO LUKSIC CRAIG"
[5] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1831403 — declaración primaria 21-09-2026
    > "Fecha | 21-09-2026"
    > "Monto global en pesos $ 5.452.877.868"
    > "Monto adeudado en pesos | $ 4.597.934.577"
[6] https://www.malaespinacheck.cl/pais/2024/10/14/declaracion-de-patrimonio-de-max-luksic-us12-millones-en-acciones-propiedades-millonarias-y-mas — cobertura de la declaración de candidatura, 14-10-2024
    > "Luksic informó de pasivos por $5.218 millones"
    > "Entre sus deudas se incluye un préstamo de $882.534.968 y otro de $3.498.882.105 que debe a su padre, Andrónico Luksic Craig"
