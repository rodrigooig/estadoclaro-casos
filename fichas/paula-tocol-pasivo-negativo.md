# Paula Verónica Tocol Villarroel — pasivo hipotecario con registro negativo

## Reevaluación editorial vigente — 2026-10-06

- **ID:** `paula-tocol-pasivo-negativo`
- **Estado vigente:** en curso
- **Producto a evaluar:** coherencia del registro declarado.
- **Alcance de esta actualización:** reencuadre del método; no aporta nueva corroboración, no aprueba un caso ni certifica las cifras históricas.

Se reabre solo la pregunta sobre coherencia de un registro primario, distinta de la descartada deuda real. Si el signo está explicado documentalmente o no hay relevancia material, volver a descartar. No hay nueva corroboración en esta actualización.

**Próxima comprobación autónoma:** Confirmar en originales que la partida negativa y el agregado provienen del formulario, no del pipeline; comparar serie, signos y campos. Evaluar relevancia de inconsistencia del registro, eventualmente junto con otras anomalías; no afirmar deuda negativa efectiva.

Aplicar `METODO_INVESTIGACION.md` v3. Las decisiones de abajo son el historial anterior y no sustituyen este estado vigente. La doble revisión deberá reabrir fuentes y repetir las consultas centrales antes de promover.

## Historial de evidencia y decisiones previas

- **ID:** `paula-tocol-pasivo-negativo` · **categoría:** patrimonio y pasivos · **estado:** descartada como caso.
- **Fecha de trabajo:** 2026-10-06 UTC.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; sincronización informada sin cambios.
- **Identidad:** nombre completo cotejado en InfoProbidad, declaración ID 5123458, con cargo de Consejero Técnico del Poder Judicial; no se atribuyen resultados de homónimos.[2]

## Veredicto

El cribado amplio del oro devuelve 28 declaraciones con `is_current AND has_outlier`; Paula Tocol aparece con pasivos nominales de CLP -62.540.856, `confidence=low` y dos líneas de pasivo. No es evidencia de saldo bancario ni de patrimonio real: la bandera describe un resultado del artefacto y no valida los valores fuente. La explicación más plausible es una inconsistencia de signo o de registro en los componentes declarados, pero las fuentes revisadas no permiten establecer su causa.

La declaración de InfoProbidad de 14-09-2026 muestra dos partidas etiquetadas «crédito hipotecario», ambas atribuidas a BancoEstado: CLP -133.920.000 y CLP 71.379.144, y un monto global de CLP -62.540.856.[2] El oro reproduce las mismas dos partidas y el mismo total en tres actualizaciones fechadas 09-04, 04-05 y 14-09-2026; el panel marca el conjunto como `has_outlier=true`, `confidence=low` y registra CLP 71.379.144 en `liabilities_adjusted_clp`. Ese valor ajustado es una salida del modelo, no un saldo confirmado. La ficha de 04-05-2026 también publica el total negativo y las mismas dos partidas.[1][2]

**Decisión:** descartada como caso periodístico. Lo comprobable aquí es una anomalía de signo/autodeclaración repetida en tres snapshots, sin fuente independiente de saldo, rectificación ni relevancia funcional concreta. No se afirma error deliberado, irregularidad ni deuda efectiva. Para reabrir la cuestión patrimonial se necesitaría una corrección pública o documentación primaria verificable que aclare el signo y el saldo; no corresponde solicitarla ni contactar a terceros en esta corrida.

## Mapa de afirmaciones

1. **¿El nombre y el cargo se enlazan a la declaración correcta?** InfoProbidad ID 5123458 contiene el nombre completo, cargo, institución y fecha 14-09-2026.[2] La consulta SQL por nombre completo devuelve ese `source_id` y el historial de declaraciones.
2. **¿Qué declaró la fuente primaria?** La declaración completa contiene monto global negativo de CLP 62.540.856 y dos créditos hipotecarios atribuidos a BancoEstado, uno con valor negativo y otro positivo.[2] Esto describe lo publicado por el declarante, no el saldo comprobado por el acreedor.
3. **¿Es una inconsistencia de una sola versión o persiste en el oro?** `consultas/paula-tocol-pasivo-negativo-2.sql` reproduce tres actualizaciones con el mismo total y `-3.sql` reproduce las dos partidas, el indicador `has_outlier` y la salida ajustada. La repetición puede deberse a que se mantuvo el dato en los snapshots; no permite inferir la causa.
4. **¿Existe contraste público que determine el saldo o la causa?** Las búsquedas exactas por nombre completo, folio 5123458 y Poder Judicial no localizaron una fuente oficial adicional pertinente. Una búsqueda del nombre en resultados de PJUD devolvió documentos sobre otras personas; no se les atribuye relación con Tocol. No apareció en esta pasada una rectificación pública, pero la búsqueda negativa no prueba que no exista.
5. **¿Hay relevancia funcional o patrimonial verificable más allá de la anomalía?** La pista nació del outlier de pasivos, no de una contratación o acto público ligado a la persona. Sin evidencia independiente del saldo y sin una pregunta de interés público adicional, no supera el umbral para caso.

## Pasada amplia (2026-10-06 UTC)

- **Minería transversal:** ejecución de `consultas/paula-tocol-pasivo-negativo-1.sql` sobre el panel completo con `is_current AND has_outlier`; devolvió 28 filas. La señal fue un valor negativo en pasivos con baja confianza, no un hallazgo independiente.
- **Historia del origen:** `-2.sql` consultó por el nombre completo todas las declaraciones del oro. Resultado: dos registros de primera declaración sin total global informado y tres actualizaciones (09-04, 04-05 y 14-09-2026), cada una con total global CLP -62.540.856.
- **Detalle por declaración:** `-3.sql` seleccionó las líneas de `liability` por `source_id`, nombre de acreedor y monto. En las tres actualizaciones aparecen las mismas cifras: -CLP 133.920.000 y +CLP 71.379.144, ambas etiquetadas crédito hipotecario y BancoEstado; el modelo marca el conjunto como `low`/outlier y publica CLP 71.379.144 como pasivo ajustado.
- **Fuente primaria reciente:** se extrajo la declaración completa de InfoProbidad ID 5123458 y se cotejaron identidad, fecha, cargo, institución, monto global y partidas.[2]
- **Fuente primaria previa:** se revisó la declaración de InfoProbidad ID 5116924 (04-05-2026), que muestra el mismo monto global y las mismas partidas.[1]
- **Búsqueda exacta en web:** «PAULA VERÓNICA TOCOL VILLARROEL», «Paula Tocol Poder Judicial» y el ID 5123458; no aparecieron documentos adicionales que expliquen las cifras. El resultado del buscador del ID fue una página institucional general, no una rectificación ni expediente.
- **Búsqueda oficial alternativa:** se revisaron resultados de búsqueda en dominio PJUD por nombre completo y cargo/localidad; los resultados disponibles no identificaron a Tocol en un documento pertinente. No se eludieron CAPTCHAs, autenticación ni otros controles; no se consultó información privada ni se contactó a terceros.
- **Deduplicación:** búsqueda del nombre completo en el índice/fichas de investigación y casos publicados; no se halló una pista previa con esta huella. La búsqueda por `TOCOL` en contenido tuvo una coincidencia irrelevante en URL de un documento de otra investigación, no un caso o ficha de esta persona.

## Límites, explicación alternativa y reapertura

La lectura más prudente es que la suma declarada incluye un componente negativo, que el sistema conserva y marca con baja confianza. Podría tratarse de un signo invertido, una anotación compensatoria u otra convención del formulario; ninguna de esas explicaciones se verificó. El monto ajustado del modelo no sustituye un estado de deuda de BancoEstado ni permite afirmar saldo real. La declaración es autodeclarada y los snapshots repetidos no constituyen tres verificaciones independientes.

No se halló una fuente pública que rectifique el formulario o confirme el saldo bancario. El resultado negativo se limita a las búsquedas exactas descritas y no demuestra ausencia de documentos en otras rutas. No hubo revisor independiente en esta corrida. Reabrir solo ante una rectificación pública o un documento primario verificable que resuelva la lectura del signo/saldo y aporte una pregunta de interés público concreta.

## Consultas reproducibles

- `consultas/paula-tocol-pasivo-negativo-1.sql` — cribado de declaraciones actuales con bandera `has_outlier`.
- `consultas/paula-tocol-pasivo-negativo-2.sql` — historial de declaraciones y total global.
- `consultas/paula-tocol-pasivo-negativo-3.sql` — filas de pasivo y salida del panel.

Todas las consultas se ejecutaron con `ec-gold-sql` en modo de solo lectura; corte `2026-10-02T15:43:07Z`. No se usó la API, no se modificó ni copió el artefacto y no se ejecutó un build.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5116924 — InfoProbidad: declaración Paula Verónica Tocol Villarroel, 04-05-2026
    > "#### Monto global en pesos -$ 62.540.856"
    > "| Monto adeudado en pesos | -133920000 |"
    > "| Monto adeudado en pesos | $ 71.379.144 |"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5123458 — InfoProbidad: declaración Paula Verónica Tocol Villarroel, 14-09-2026
    > "#### Monto global en pesos -$ 62.540.856"
    > "| Monto adeudado en pesos | -133920000 |"
    > "| Monto adeudado en pesos | $ 71.379.144 |"
    > "# Declaración completa de PAULA VERÓNICA TOCOL VILLARROEL"
    > "| Fecha | 14-09-2026 |"
