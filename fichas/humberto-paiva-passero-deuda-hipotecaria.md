# Revisión editorial — variación de pasivo hipotecario declarado de Humberto Andrés Paiva Passero

> Ficha de investigación; no es un caso publicable ni una imputación. Estado: **evidencia insuficiente**. Trabajo: 2026-10-05 UTC. Corte del oro: `meta.build_date=2026-10-02T15:43:07+00:00` (copia local reportada sin cambios). RUT personal no consultado ni reproducido.

## §0. Resultado ejecutivo

InfoProbidad identifica a Humberto Andrés Paiva Passero como juez del Poder Judicial y publica una declaración periódica fechada 10-03-2026.[1]

En esa declaración, el resumen informa pasivos globales por CLP 2.148.453.582; el detalle consigna CLP 2.083.280.000 como crédito hipotecario de Banco de Chile y CLP 65.173.582 como crédito de consumo de Scotiabank.[1]

La actualización voluntaria del 16-10-2025 informaba pasivos globales por CLP 286.277.884.[2]

Son montos declarados, no saldos bancarios independientemente comprobados.[1][2]

La declaración de marzo de 2026 registra además una propiedad en Las Condes adquirida el 19-05-2025, con avalúo fiscal declarado de CLP 131.962.543 y tres gravámenes hipotecarios inscritos en 2025; los números de inscripción y fojas están reservados.[1] La coincidencia temporal ofrece una explicación legítima posible —adquisición financiada con hipoteca(s)—, pero los datos públicos revisados no acreditan que esas inscripciones expliquen el total, ni su capital/saldo, y el avalúo fiscal no equivale al precio de compra.[1]

**Decisión:** evidencia insuficiente; no preparar borrador. La declaración de 2026 permite verificar qué se informó, no que la deuda efectiva fuera ese saldo.[1] La hipótesis de una obligación ligada a una adquisición inmobiliaria reciente es plausible, pero el tamaño y la variación no quedan explicados con documentación financiera pública independiente.[1][2] No se califica como error, irregularidad ni conducta personal.

## 1. Mapa de afirmaciones

- **Identidad y cargo:** la página fuente identifica el nombre completo, el cargo de juez, el Poder Judicial y fecha de asunción 01-02-2005.[1]
- **Montos publicados:** la página primaria de 2026 registra CLP 2.083.280.000 como monto adeudado hipotecario a Banco de Chile, CLP 65.173.582 como crédito de consumo Scotiabank y CLP 2.148.453.582 como pasivo global.[1]
- **Comparación temporal:** InfoProbidad muestra pasivos globales de CLP 51.323.687 el 05-03-2025, CLP 286.277.884 el 16-10-2025 y CLP 2.148.453.582 el 10-03-2026.[3][2][1]
  Comparar totales declarados no demuestra que las definiciones, saldos bancarios o fechas de corte sean equivalentes.[1][2][3]
- **Contexto hipotecario:** la ficha 2026 lista un inmueble en Las Condes adquirido en mayo de 2025 y tres gravámenes hipotecarios del mismo año; inscripciones/fojas reservadas.[1] La relación dentro de la ficha es contexto, no prueba del saldo ni de la causa de cada gravamen.[1]
- **Dato del oro:** consulta guardada `consultas/humberto-paiva-passero-deuda-hipotecaria-1.sql` devuelve 14 filas de liability en seis snapshots entre 2022 y 2026. En 16-10-2025 registra un crédito hipotecario CLP 209.280.000 y total declarado CLP 286.277.884; en 10-03-2026 registra CLP 2.083.280.000 y total CLP 2.148.453.582. El oro reproduce categorías/valores visibles en el origen; no valida la deuda efectiva. Corte: 2026-10-02.

## 2. Rutas examinadas (2026-10-05 UTC)

1. **Barrido amplio de pasivos/outliers del oro:** ejecuté `pantalla-wide-liabilities-20261004.sql` y `pantalla-wide-outliers-20261004.sql` con `ec-gold-sql`. Paiva aparece en la primera con activos CLP 2.665.403.291 y pasivos CLP 2.148.453.582, `has_outlier=false`; el screen de outliers no lo incluye. Estas banderas no validan saldos. Las demás filas destacadas estaban en el índice o casos publicados; no se reabrieron.
2. **Serie individual/detalle independiente:** una consulta a `liability` unida a `panel` y `declarant` devuelve 14 líneas, seis declaraciones desde 2022 a 2026. Se cotejaron fechas, categorías, acreedores, montos y `source_uri`; no se sumaron snapshots como deudas simultáneas. Query guardado para reproducir.
3. **Fuente primaria 2026:** se abrió la declaración de InfoProbidad ID 5109578 y se revisó el resumen y la declaración completa. El detalle confirma tipos de obligación, acreedores, monto adeudado y propiedad/gravámenes declarados; algunos datos registrales personales están reservados.[1]
4. **Fuente primaria histórica:** se revisó InfoProbidad ID 5105611, actualización voluntaria del 16-10-2025.[2] Confirma el mismo nombre/cargo/organismo y el total global de pasivos publicado entonces; su resumen por sí solo no verifica el saldo de 2025.[2]
5. **Búsqueda abierta por nombre e importe:** consultas web exactas por nombre completo, monto hipotecario, Banco de Chile y crédito no devolvieron fuente independiente pertinente. En consultas de cargo/nombre aparecieron resultados irrelevantes. El resultado negativo se limita a las búsquedas y resultados revisados el 2026-10-05.
6. **Alternativa legítima/refutación:** la propiedad adquirida en 2025 y los tres gravámenes hipotecarios de ese año son compatibles con financiación inmobiliaria; podrían explicar una parte de la evolución reportada, sin demostrar el saldo ni su composición.[1][2] La cifra no se dedujo de un avalúo ni de una conversión de moneda: la fuente primaria la declara en pesos.[1] No se obtuvo historial del Conservador que enlace los asientos reservados con el acreedor, capital o saldo.
7. **Deduplicación:** búsqueda de nombre completo en fichas/consultas del ledger y casos públicos, además del índice, el 2026-10-05: sin coincidencia previa por esta huella. La coincidencia se resolvió mediante declaración enlazada por el oro; no se atribuye a homónimos.

## 3. Gate editorial y próxima acción

- **Identidad:** nombre completo y cargo confirmados por la declaración enlazada.[1]
- **Hecho material reproducible:** sí, como montos declarados/publicados y como representación del oro; no como saldo efectivo verificado.[1][2]
- **Relevancia pública:** la trazabilidad de una variación de pasivos declarados de un juez, sin inferir infracción.
- **Error del cruce:** mitigado para transcripción al cotejar la tabla `liability`, el resumen y el detalle primario; la coincidencia de estas fuentes no audita la obligación financiera.
- **Explicación legítima:** adquisición inmobiliaria declarada en 2025 y tres hipotecas del mismo año; plausible como contexto, no demostrada como explicación completa.[1]
- **Gate de borrador:** no se cumple. Falta documento público que vincule las inscripciones reservadas con el saldo/monto efectivamente adeudado, o una rectificación/explicación oficial del cambio. No se buscaron datos bancarios privados, no se contactó a terceros y no se eludió ningún control.
- **Próxima acción:** no repetir consultas generales. Reabrir solo si aparece documento registral público accesible que aclare gravámenes/saldos, una rectificación de InfoProbidad o nueva declaración que explique el pasivo.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5109578 — InfoProbidad — declaración de Humberto Andrés Paiva Passero, ID 5109578
    > "HUMBERTO ANDRES PAIVA PASSERO 10-03-2026 Actualización Periódica (Marzo) 16-10-2025 Actualización Voluntaria"
    > "Monto adeudado en pesos $ 2.083.280.000 Nombre o Razón Social del acreedor Banco Chile"
    > "Fecha de adquisición 19-05-2025"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5105611 — InfoProbidad declaration 5105611, 16 October 2025
    > "Total $ 286.277.884"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5094270 — InfoProbidad declaration 5094270, 5 March 2025
    > "Total $ 51.323.687"
