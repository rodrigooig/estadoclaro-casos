# Dos declaraciones del mismo día difieren en el pasivo hipotecario publicado para Fernando Metzner

## Síntesis

Dos declaraciones de InfoProbidad a nombre de FERNANDO ESTEBAN METZNER IRIBARREN, ambas fechadas el 30-03-2022 y asociadas al cargo de fiscal adjunto del Ministerio Público, muestran registros distintos de pasivos.[1][2] La actualización voluntaria ID 820453 informa un crédito hipotecario por CLP 10.021.845.366 con acreedor BANCO EDWARDSCITI; la actualización periódica ID 835335, también fechada ese día, dice que no tiene información declarada en pasivos.[1][2]

Una declaración posterior, del 30-06-2022, vuelve a incluir un crédito hipotecario, esta vez por CLP 103.526.094 con BANCO DE CHILE.[3] La actualización periódica del 28-03-2023 registra un pasivo global de CLP 144.390.794, desglosado en un crédito hipotecario por CLP 108.052.534 y uno de consumo por CLP 36.338.260, ambos con BANCO DE CHILE.[4] Las declaraciones de marzo y junio no establecen si se trata de la misma obligación o de obligaciones distintas.[1][2][3] La declaración de 2023 tampoco aclara su relación con las anteriores.[4]

El núcleo es una diferencia documental entre declaraciones públicas atribuidas al mismo nombre completo; no afirma deuda bancaria efectiva, error, falsedad o conducta impropia.[1][2][3] La consulta al documento de 2023 respalda el contexto posterior, pero no cambia ese límite.[4] Las consultas del artefacto reproducen por separado las declaraciones y sus pasivos; no suman snapshots ni validan el saldo subyacente.[consultas/fernando-metzner-declaraciones-misma-fecha-20261009.sql][consultas/fernando-metzner-pasivos-serie-20261009.sql]

## Relevancia pública acotada

La pregunta para una revisión documental es por qué dos versiones fechadas el mismo día difieren en si se informó un pasivo hipotecario de CLP 10.021.845.366, y qué relación —si alguna— tiene ese registro con las declaraciones posteriores.[1][2][3] El documento de 2023 agrega contexto posterior, pero no explica la relación contractual.[4] La observación concierne a consistencia y trazabilidad de la información patrimonial publicada; no acredita una deuda real por ese monto ni determina qué versión debía prevalecer.[1][2]

## Hechos y cronología

- InfoProbidad identifica a FERNANDO ESTEBAN METZNER IRIBARREN y consigna el cargo de fiscal adjunto del Ministerio Público en las declaraciones ID 820453 y 835335.[1][2]
- La declaración ID 820453 está fechada el 30-03-2022 y se rotula «Actualización Voluntaria». Su pasivo aparece como «CRÉDITO HIPOTECARIO», con monto global y monto adeudado de CLP 10.021.845.366, y acreedor BANCO EDWARDSCITI.[1]
- La declaración ID 835335 también está fechada el 30-03-2022, se rotula «Actualización Periódica (Marzo)» y muestra «No tiene información declarada» en la sección de pasivos.[2]
- El oro con corte `meta.build_date=2026-10-08T12:48:32+00:00` conserva ambos documentos como filas separadas. La consulta por nombre completo devuelve para 820453 un pasivo global de CLP 10.021.845.366 y una fila de pasivo; para 835335 no devuelve monto global ni fila de pasivo. No se suman declaraciones fechadas el mismo día.[consultas/fernando-metzner-declaraciones-misma-fecha-20261009.sql]
- La declaración ID 890731, del 30-06-2022, informa un crédito hipotecario por CLP 103.526.094 con BANCO DE CHILE.[3]
- La declaración ID 1007320, del 28-03-2023, informa un total de pasivos de CLP 144.390.794, desglosado en CLP 108.052.534 de crédito hipotecario y CLP 36.338.260 de crédito de consumo; ambos nombran a BANCO DE CHILE.[4]
- La consulta independiente de serie devuelve una fila hipotecaria para 820453, ninguna fila de pasivo para 835335, una fila hipotecaria para 890731 y dos filas para 1007320. El monto agregado de 2023 coincide con la suma de sus dos filas de detalle.[consultas/fernando-metzner-pasivos-serie-20261009.sql]
- La consulta aritmética nominal entre los montos globales de 820453 y 890731 obtiene una diferencia de CLP 9.918.319.272 y una razón de 96,805 veces. Es comparación de importes declarados en documentos distintos, no variación acreditada de una misma deuda.[consultas/fernando-metzner-diferencia-clp-20261009.sql][1][3]

## Explicaciones posibles y límites

Que ambos documentos de marzo tengan tipos distintos —actualización voluntaria y actualización periódica— es una explicación legítima posible para que representen estados o trámites documentales distintos; las páginas consultadas no dicen si uno sustituyó al otro ni explican por qué el formulario periódico no informa pasivos.[1][2] Las declaraciones de junio de 2022 y marzo de 2023 presentan acreedor y montos diferentes; no identifican la relación contractual con la obligación publicada en marzo.[1][3][4] Una modificación de crédito, una obligación distinta, un cambio de acreedor o una diferencia de captura son hipótesis, no hechos establecidos.[1][2][3]

El artefacto reproduce la discrepancia de los documentos fuente, pero esa coincidencia no verifica la exactitud económica de lo declarado.[consultas/fernando-metzner-declaraciones-misma-fecha-20261009.sql][consultas/fernando-metzner-pasivos-serie-20261009.sql] No se consultaron saldos bancarios, contratos de crédito ni documentos privados; tampoco se afirma que hubiera error o incumplimiento.[1][2][3]

## Preguntas útiles para investigador/auditor

1. ¿Qué relación formal existe entre las actualizaciones voluntaria y periódica, ambas fechadas el 30-03-2022, y cuál refleja el trámite que debía quedar publicado?
2. ¿La cifra publicada en la actualización voluntaria de marzo se refería a la misma obligación que el crédito hipotecario informado en junio, o a obligaciones distintas?
3. ¿Existe una rectificación, anotación pública o antecedente documental accesible que explique por qué la actualización periódica de marzo no registra pasivos?

Estas preguntas delimitan lo que los documentos no resuelven; no presuponen una explicación ni requieren inferir un saldo privado para describir la diferencia publicada.[1][2][3] El documento de 2023 tampoco resuelve esa relación.[4]

## Matriz de afirmaciones

- **c1 — Identidad, cargo, fecha y tipo de las dos declaraciones de marzo:** InfoProbidad IDs 820453 y 835335; mismo nombre completo, cargo y fecha, con tipos documentales distintos.[1][2]
- **c2 — Pasivo hipotecario publicado en la actualización voluntaria:** ID 820453 informa CLP 10.021.845.366 como monto global y adeudado, acreedor BANCO EDWARDSCITI.[1]
- **c3 — Ausencia de pasivos declarados en la actualización periódica:** ID 835335 indica que no tiene información declarada en pasivos.[2]
- **c4 — Declaraciones posteriores:** ID 890731 informa CLP 103.526.094 como crédito hipotecario; ID 1007320 informa CLP 144.390.794 en total, con componentes hipotecario y de consumo.[3][4]
- **c5 — Reproducción y deduplicación:** las consultas guardadas separan por ID de declaración, comparan montos en CLP y cuentan los registros de pasivo una vez por documento; la consulta de serie reproduce la diferencia sin combinar snapshots.[consultas/fernando-metzner-declaraciones-misma-fecha-20261009.sql][consultas/fernando-metzner-pasivos-serie-20261009.sql]
- **c6 — Diferencia y razón nominal:** SQL calcula CLP 9.918.319.272 y 96,805 veces entre los importes declarados en las declaraciones 820453 y 890731; no identifica una variación de deuda efectiva ni continuidad contractual.[consultas/fernando-metzner-diferencia-clp-20261009.sql][1][3]
- **c7 — Límites:** las páginas 820453, 835335 y 890731 acreditan los campos publicados, pero no explican su relación ni establecen saldo bancario, causa o prevalencia formal.[1][2][3] La declaración 1007320 tampoco resuelve esas cuestiones.[4]

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=820453 — InfoProbidad declaración 820453
    > "Monto global en pesos $ 10.021.845.366"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=835335 — InfoProbidad declaración 835335
    > "Pasivos No tiene información declarada"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=890731 — InfoProbidad declaración 890731
    > "Monto global en pesos $ 103.526.094"
    > "Nombre o Razón Social del acreedor BANCO DE CHILE"
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1007320 — InfoProbidad declaración 1007320
    > "Monto global en pesos $ 144.390.794"
    > "Monto adeudado en pesos $ 108.052.534"
