# Sergio Alejandro Araya Rojas: total global de pasivos no coincide con el detalle

- **ID:** `sergio-araya-rojas-deuda`
- **Categoría / estado:** patrimonio y pasivos · evidencia insuficiente; sin borrador
- **Fecha de trabajo:** 2026-10-03
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; el pre-run informó la copia sin cambios desde la sincronización.
- **Identidad:** la ficha primaria InfoProbidad 1730934 muestra el nombre completo y el cargo en Ministerio Público; se excluyeron resultados de homónimos sin coincidencia íntegra.[1]

## Resultado breve y mapa de afirmaciones

La declaración InfoProbidad del 30-03-2026 consigna un «monto global en pesos» de CLP 290.767.215.812.[1] La misma ficha enumera cuatro pasivos individualizados que suman CLP 292.579.467: tres créditos hipotecarios por CLP 114.754.114, CLP 174.862.073 y CLP 1.151.027, y un crédito de consumo por CLP 1.812.253.[1]

El oro reproduce el total global en `declaration.global_liability_amount_clp`, pero el panel usa el total de las filas de pasivos: CLP 292.579.467 (7.343,55 UF). Los activos suman CLP 202.859.437 (5.091,63 UF); estas cifras son las mediciones del artefacto, no una verificación bancaria independiente.[consulta guardada](../consultas/sergio-araya-rojas-deuda.sql)

El total global informado en 2026 contrasta también con un antecedente de la misma declaración de 2023: su total global era CLP 27.731.123, mientras que sus dos pasivos individualizados suman CLP 22.878.042. En las declaraciones 2024 (CLP 14.077.478) y 2025 (CLP 12.122.847), en cambio, el oro reproduce totales que coinciden con la suma de los detalles.[2][3][5] La comparación constata discrepancias en dos fechas, no demuestra qué saldo real existía ni permite atribuir el desajuste a una persona, InfoProbidad o EstadoClaro.

La ficha 2026 también enumera tres inmuebles con fechas de adquisición en 2025, dos de ellos en septiembre y noviembre; esto ofrece una explicación plausible para que haya nuevos créditos hipotecarios detallados, pero no explica el total global de CLP 290.767.215.812 ni acredita que esos créditos financiaran esas adquisiciones.[1]

**Interés público posible:** una inconsistencia visible entre el campo agregado de pasivos y los créditos que la propia declaración individualiza. No alcanza el gate de caso sobre patrimonio o endeudamiento efectivo, porque la fuente primaria deja en evidencia una probable errata o desajuste de declaración, sin resolución pública encontrada en esta pasada.

## Evidencia reproducible y rutas examinadas (2026-10-03)

1. **Minería por compras/relaciones con el Estado:** se volvió a ejecutar `consultas/candidatos-autocontratacion-2026-10-02.sql` con `ec-gold-sql`; devolvió 11 candidatos del conjunto ya explorado, sin abrir una pista nueva de compra que justificara repetición.
2. **Rotación a actividades/cargos:** consulta al oro de actividades pagadas y vigentes en los últimos 12 meses, enlazadas a declaraciones actuales, devolvió cero filas. No se interpreta como ausencia de otras actividades fuera de esos campos/filtros.
3. **Rotación a pasivos:** ranking de declaraciones actuales con pasivos globales mayores a CLP 1.000 millones priorizó a Sergio Alejandro Araya Rojas. Sirvió para seleccionar la señal; el ranking no valida los datos de origen.
4. **Serie temporal e identidad:** búsqueda exacta por nombre completo en oro encontró siete declaraciones entre 2018 y 2026; todas identifican Ministerio Público y el cargo de Abogado Asistente de Fiscal.[1][2][3][5]
5. **Detalle vs total, dos consultas independientes y guardadas:** `consultas/sergio-araya-rojas-deuda.sql` contrasta el total con subconsultas separadas a `liability_uf` y `asset`, evitando multiplicación de filas; `consultas/sergio-araya-rojas-deuda-verificacion.sql` agrega primero una fila por declaración y después la enlaza. Ambas devuelven siete declaraciones y para 30-03-2026 reproducen cuatro pasivos por CLP 292.579.467, mientras el total global permanece en CLP 290.767.215.812. El panel usa CLP 292.579.467, que coincide con las líneas individualizadas.[1]
6. **Fuente primaria:** la URI del panel enlaza directamente a InfoProbidad ID 1730934. Se cotejó la página completa con la actualización 2025 y las declaraciones de 2024 y 2023; la ficha 2026 presenta el monto global y los cuatro detalles de pasivos en la misma declaración.[1][2][3][5]
7. **Búsqueda exacta externa:** se consultó el nombre completo con InfoProbidad, el cargo/Ministerio Público, el número 1730934, el total declarado y el nombre del acreedor BCI. Las búsquedas devolvieron una ficha primaria de 2018 y resultados no pertinentes para los datos de 2026; no apareció corroboración secundaria independiente de un saldo por CLP 290.767.215.812. La ausencia se limita a esas búsquedas.
8. **Alternativa institucional:** se intentó la ruta de noticias del sitio de Fiscalía de Chile, que respondió «Request Rejected»; no se eludió el bloqueo. Se contrastó la identidad y el contenido patrimonial mediante la ficha pública de InfoProbidad, ruta primaria disponible, y la serie del oro. No se encontró allí una corrección o explicación del total agregado.
9. **Explicación alternativa más plausible:** posible error de digitación/transcripción o discrepancia entre el total global y el detalle. La existencia de nuevas adquisiciones inmobiliarias declaradas en 2025 hace plausible que también haya nuevos créditos hipotecarios, pero no resuelve la diferencia y no se verificaron saldos con bancos ni inscripciones fuera de lo que el declarante informó.[1]
10. **Deduplicación:** búsqueda literal del nombre completo en el índice/fichas de investigación y en los casos publicados no encontró coincidencia. Resultado acotado a esos archivos consultados el 2026-10-03.

## Decisión y condición para reabrir

**Decisión: evidencia insuficiente; no preparar caso.** La fuente primaria acredita qué cifra se escribió en el campo global y qué montos se listaron individualmente; el oro reproduce ambas capas. Sin embargo, la discrepancia impide tratar el monto global como deuda efectiva, y no hay evidencia pública revisada que permita determinar si el total es una errata, si hubo corrección posterior o qué saldos bancarios existían en la fecha.[1]

El gate de borrador no se cumple: no hay evidencia primaria independiente de la deuda efectiva ni una relevancia pública separable de un posible error en el formulario. No se afirma un pasivo de CLP 290.767 millones, falsedad, infracción o conducta irregular.

Reabrir solo si aparece una rectificación pública o documentación primaria accesible que explique el campo agregado y permita contrastar los saldos a la fecha declarada. No repetir búsquedas ya agotadas ni solicitar documentos/contactar a terceros en esta corrida.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1730934 — InfoProbidad, declaración 30-03-2026
    > "#### Monto global en pesos $ 290.767.215.812"
    > "| Monto adeudado en pesos | $ 174.862.073 |"
    > "| Fecha | 30-03-2026 |"
    > "# Declaración completa de SERGIO ALEJANDRO ARAYA ROJAS"
    > "| Monto adeudado en pesos | $ 1.812.253 |"
    > "| Monto adeudado en pesos | $ 114.754.114 |"
    > "| Monto adeudado en pesos | $ 1.151.027 |"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1413841 — InfoProbidad, declaración 29-03-2025
    > "#### Monto global en pesos $ 12.122.847"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1209576 — InfoProbidad, declaración 02-04-2024
    > "#### Monto global en pesos $ 14.077.478"
[5] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1054494 — InfoProbidad, declaración 11-04-2023
    > "#### Monto global en pesos $ 27.731.123"
    > "| Monto adeudado en pesos | $ 8.179.237 |"
    > "| Monto adeudado en pesos | $ 14.698.805 |"
