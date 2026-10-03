# Magdalena Fabiola Bórquez Olivari — variación del crédito hipotecario declarado

- **ID:** `magdalena-borquez-olivari-hipoteca`
- **Categoría:** patrimonio y pasivos
- **Estado:** evidencia insuficiente; sin borrador de caso.
- **Fecha de trabajo:** 2026-10-03.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; consulta local de solo lectura con `ec-gold-sql`.
- **Identidad:** coincidencia exacta del nombre completo en InfoProbidad y en el artefacto; las declaraciones identifican el cargo de relatora del Poder Judicial.[1][2]

## Resultado y mapa de afirmaciones

La ficha oficial de InfoProbidad para el 31-03-2026 muestra un pasivo hipotecario de CLP 11.063.248.085 con Banco Scotiabank; la página pública confirma que ése es el monto global y el monto adeudado allí declarados.[1]

En la declaración oficial de 31-03-2025 figura el mismo tipo de pasivo, mismo acreedor y CLP 108.798.300 como monto global y adeudado.[2] La declaración de asunción de 09-11-2024 también muestra CLP 108.798.300 según la página de origen consultada.[3]

La consulta reproducible [`consultas/magdalena-borquez-olivari-hipoteca.sql`](../consultas/magdalena-borquez-olivari-hipoteca.sql) al oro devuelve esos tres hitos: 108.798.300 en 2024 y 2025; 11.063.248.085 en 2026. En la ficha 2026, el panel y el detalle de pasivos muestran una única fila: crédito hipotecario, acreedor Scotiabank, lectura de moneda local; el oro no la marca como implausible. El panel registra activos CLP 196.520.425 y pasivos CLP 11.063.248.085, pero estas son cifras procesadas de una declaración autoinformada, no una verificación bancaria. **Consulta de oro:** [`consultas/magdalena-borquez-olivari-hipoteca.sql`](../consultas/magdalena-borquez-olivari-hipoteca.sql).

En el detalle de activos del oro aparecen tres registros inmobiliarios y un vehículo, total de activos panel CLP 196.520.425; esto no permite establecer la deuda garantizada, su saldo ni el origen de la variación. **Consulta reproducible:** [`consultas/magdalena-borquez-olivari-hipoteca.sql`](../consultas/magdalena-borquez-olivari-hipoteca.sql).

## Rutas revisadas (2026-10-03)

1. **Minería de pasivos en el oro:** pantalla de paneles vigentes con pasivos superiores a activos, ordenada por patrimonio neto, encontró esta declaración entre otros registros. Fue priorización de anomalía declarativa, no conclusión sobre conducta.
2. **Serie de declaraciones:** consulta guardada y lectura directa de las tres filas en `declaration`; coincide con las fechas y montos que presenta InfoProbidad.
3. **Descomposición del registro:** lectura de la única fila en `liability_uf` y de las cuatro filas en `asset`, sin fan-out de joins; el acreedor/tipo/monto del pasivo coinciden con el dato agregado del panel.
4. **Fuente primaria de origen:** páginas InfoProbidad 5113559 (31-03-2026), 5099731 (31-03-2025) y 5091758 (09-11-2024). La consulta web de 2026 mostró nombre, cargo, organismo, acreedor y cifra; 2025 confirma el valor anterior.[1][2][3]
5. **Búsqueda exacta e hipótesis contraria:** búsquedas por nombre completo, número de declaración y cifra exacta; no apareció una fe de erratas, rectificación explicativa o fuente pública independiente que valide el saldo. La búsqueda exacta del número también devolvió resultados irrelevantes ajenos a Chile. Esto solo describe esas consultas, no demuestra que no existan otros documentos.
6. **Deduplicación:** el índice de la bitácora y las fichas publicadas de patrimonio/pasivos no contienen esta persona; tampoco hay otra ficha de investigación con este nombre completo. Los resultados por el apellido Bórquez corresponden a Horacio Bórquez Conti, homónimo sin coincidencia de nombre completo, excluido.

## Alternativa plausible y límites

La explicación legítima más plausible es una diferencia de ingreso o actualización en una declaración autoinformada; también podría existir un cambio real de obligación o garantía que las fuentes consultadas no documentan. No hay aquí evidencia suficiente para elegir entre esas posibilidades. La ficha de 2026 acredita qué cifra fue publicada, no que ése sea el saldo bancario correcto, ni una ganancia personal, incumplimiento o infracción. No se contactó a la declarante ni a terceros, ni se intentó acceder a fuentes restringidas.

## Decisión editorial y reapertura

**Evidencia insuficiente; no preparar borrador.** La coincidencia nominal y el monto publicado están corroborados en la fuente primaria, y la serie fue cotejada con el oro. Falta la evidencia esencial que determine si la cifra de 2026 refleja un saldo real, un error de declaración o una modificación documentada; una variación declarada, por sí sola, no basta para un caso.

Reabrir solo si aparece una rectificación pública, un documento público verificable que aclare el registro, o una nueva declaración que confirme o corrija el dato. El siguiente paso es revisar una nueva versión pública de InfoProbidad y buscar el número de declaración en sus índices oficiales; no repetir las búsquedas exactas ya anotadas sin una fuente nueva.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5113559 — InfoProbidad 2026
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5099731 — InfoProbidad 2025
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5091758 — InfoProbidad 2024
