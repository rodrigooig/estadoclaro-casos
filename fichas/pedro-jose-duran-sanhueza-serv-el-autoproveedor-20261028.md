# Pedro José Durán Sanhueza — gasto electoral a sociedad declarada

## Pregunta decisiva
¿Hay un hecho material nuevo que justifique una pregunta de auditoría sobre el gasto de campaña de 2025 a una sociedad que el candidato declaró, más allá de su registro normal y auditado?

## Hechos comprobados
- InfoProbidad identifica al declarante como PEDRO JOSÉ DURÁN SANHUEZA, declaración 1506210, de 21-08-2025, candidato a diputado 2025: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1506210
- El oro, corte `2026-10-27T15:25:49+00:00`, vincula la declaración con SOCIEDAD DE DIFUSIÓN Y PUBLICIDAD ESPERANZA LTDA., RUT 89.811.600 (sin DV presente en el dato normalizado), como participación no controladora; la fila de gasto de Servel la identifica por nombre y RUT completo 89.811.600-K.
- El reporte definitivo de Servel de ingresos y gastos electorales 2025 registra en la cuenta de la candidatura un gasto por $3.980.000 (100,39 UF) con esa sociedad, por “Frases radiales”; línea de oro 408604, formulario y reporte oficial: https://www-doc.servel.cl/2026/09/Reporte%20Ingresos%20y%20Gastos%20Electorales%202025%20-%20Definitivas%20Presidenciales%20y%20Parlamentarias.xlsx
- El registro indica que no fue rechazado y que se solicitó reembolso directo al candidato; la cuenta fue “Aprueba con observaciones”. Ninguno de esos rótulos prueba aprobación individual del gasto, infracción ni beneficio personal.
- La misma declaración identifica el cargo como candidatura a diputado 2025 y fecha de asunción 11-03-2026; no es prueba de cargo parlamentario vigente al momento del gasto.

## Fuente de la pista y consultas
La pista surgió de una consulta propia a `campaign_self_supply` del oro, ordenada por cuantía (umbral CLP $1.000.000), que arrojó esta línea de 100,39 UF. Consulta reproducible guardada en `consultas/pedro-jose-duran-sanhueza-serv-el-autoproveedor-20261028-1.sql`.
La hoja oficial descargada y convertida con `xlsx2csv -a` muestra además registro de reembolso y gasto, pero no se estableció en esta revisión un hecho de rechazo o controversia específica para esta línea.

## Explicación legítima más fuerte y límites
La propia descripción oficial es difusión radial de campaña, servicio comercial ordinario. El gasto no figura rechazado, y el estado “Aprueba con observaciones” es global de la cuenta. La participación declarada no era controladora y la declaración acredita lo informado en una fecha, no una participación verificada para cada fecha del gasto. No se probó quién prestó materialmente el servicio, pago efectivo, beneficio individual ni infracción.

## Decisión
**Descartada.** El gasto es relevante como cruce entre registros, pero la evidencia examinada describe un servicio de campaña ordinario, no rechazado, y no aporta discrepancia, intervención individual, nexo con función pública vigente ni otra señal que sostenga una pieza nueva frente a precedentes ya publicados sobre gastos electorales vinculados a sociedades declaradas. Reabrir solo si aparece evidencia primaria de servicio no prestado, rechazo/observación individual o intervención/beneficio distinto del gasto reportado.
