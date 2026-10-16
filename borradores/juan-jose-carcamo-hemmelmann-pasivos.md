# Dos registros públicos de pasivos de Juan José Cárcamo Hemmelmann publican totales distintos de sus partidas visibles

La página InfoProbidad 1343468 identifica a JUAN JOSÉ CÁRCAMO HEMMELMANN y fecha la declaración el 28 de marzo de 2025; registra el cargo Jefe Superior de Servicio en el Instituto de Previsión Social.[1]

Esa página publica un total global de pasivos de CLP 2.357.990.116 y dos partidas visibles: crédito hipotecario por CLP 191.477.178 y crédito de consumo por CLP 44.321.838.[1]

En el oro de EstadoClaro, las dos partidas suman CLP 235.799.016; el total global excede esa suma en CLP 2.122.191.100.[1]

La declaración 1582061 está fechada el 1 de diciembre de 2025, lleva el tipo «Rectificación a requerimiento de órgano fiscalizador» y vuelve a publicar el total de CLP 2.357.990.116 junto con las mismas dos partidas visibles.[2]

La página de 1582061 no especifica qué presentación rectifica ni explica la diferencia entre el total global y las partidas; no se afirma que sustituya a la declaración de marzo.[2]

La declaración de 12 de septiembre de 2024 publica CLP 249.444.257; las dos partidas que aparecen allí suman el mismo total según la consulta al oro.[6]

La actualización de 29 de septiembre de 2025 publica CLP 205.970.150, y la de 11 de marzo de 2026 publica CLP 172.982.891; las consultas al oro reproducen esos totales con las partidas de cada documento por separado.[3][4]

En la actualización de 17 de septiembre de 2026, la página publica CLP 163.150.917; el oro suma CLP 162.008.524 en las nueve partidas, una diferencia de CLP 1.142.393.[5]

## Hechos medidos y método

Las consultas `consultas/juan-jose-carcamo-hemmelmann-pasivos-20261012-1.sql` y `-2.sql` se ejecutaron en solo lectura sobre `gold.duckdb`, corte `2026-10-09T16:06:27Z`.[1][2]

La primera consulta compara cada documento por separado; la segunda agrega primero las líneas de `liability` por declaración y después las une al panel, para evitar multiplicación.[1][2]

Ambas devuelven para 1343468 y 1582061 un total global de CLP 2.357.990.116, dos líneas y CLP 235.799.016 de detalle; no suman snapshots entre sí.[1][2]

La consulta `consultas/juan-jose-carcamo-hemmelmann-pasivos-20261012-3.sql` devuelve seis documentos de la misma persona entre septiembre de 2024 y septiembre de 2026, cada uno en su propia fila.[1][2][3]

## Límites, alternativas y preguntas para auditoría

- Se comparan campos publicados en declaraciones; no se verifica deuda efectiva, saldo bancario, pago ni falsedad.[1][2]
- Una posibilidad legítima es que el monto global incluya una obligación que no aparece en las partidas visibles; también podría haber una diferencia de alcance o registro.[1][2]
- Las páginas examinadas no permiten escoger entre esas explicaciones ni determinar cuál monto debía prevalecer.[1][2]
- La repetición de cifras en 1582061 no establece que esa rectificación corresponda a la presentación 1343468.[2]
- Para aclararlo, sería útil identificar a qué presentación se refiere 1582061 y cómo se compuso su total global de pasivos.[2]
- Registros posteriores no muestran el mismo desajuste de magnitud; en septiembre de 2026 aparece además una diferencia menor entre el total global y las partidas del artefacto.[3][4][5]
- No se atribuye causa, error, conducta indebida ni saldo real.[1][2]

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1343468 — InfoProbidad, declaración 1343468
    > "#### Monto global en pesos $ 2.357.990.116"
    > "# Declaración completa de JUAN JOSÉ CÁRCAMO HEMMELMANN"
    > "| Fecha | 28-03-2025 |"
    > "| Monto adeudado en pesos | $ 191.477.178 |"
    > "| Monto adeudado en pesos | $ 44.321.838 |"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1582061 — InfoProbidad, declaración 1582061
    > "#### Monto global en pesos $ 2.357.990.116"
    > "# Declaración completa de JUAN JOSÉ CÁRCAMO HEMMELMANN"
    > "| Fecha | 01-12-2025 |"
    > "| Tipo | Rectificación A Requerimiento De Órgano Fiscalizador |"
    > "| Monto adeudado en pesos | $ 191.477.178 |"
    > "| Monto adeudado en pesos | $ 44.321.838 |"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1546788 — InfoProbidad, declaración 1546788
    > "#### Monto global en pesos $ 205.970.150"
    > "# Declaración completa de JUAN JOSÉ CÁRCAMO HEMMELMANN"
    > "| Fecha | 29-09-2025 |"
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1628230 — InfoProbidad, declaración 1628230
    > "#### Monto global en pesos $ 172.982.891"
    > "# Declaración completa de JUAN JOSÉ CÁRCAMO HEMMELMANN"
    > "| Fecha | 11-03-2026 |"
[5] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1842943 — InfoProbidad, declaración 1842943
    > "#### Monto global en pesos $ 163.150.917"
    > "# Declaración completa de JUAN JOSÉ CÁRCAMO HEMMELMANN"
    > "| Fecha | 17-09-2026 |"
[6] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1275606 — InfoProbidad, declaración 1275606
    > "#### Monto global en pesos $ 249.444.257"
    > "# Declaración completa de JUAN JOSÉ CÁRCAMO HEMMELMANN"
    > "| Fecha | 12-09-2024 |"
