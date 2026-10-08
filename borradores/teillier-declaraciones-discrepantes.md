# Dos declaraciones del mismo día consignan valores distintos para un APV

## Síntesis

Dos declaraciones oficiales de InfoProbidad fechadas el 28-03-2021 identifican por nombre completo a GUILLERMO LEÓN TEILLIER DEL VALLE y consignan una inversión de tipo «APV que consista en cuota de fondos mutuos», emitida por CONFUTURO y adquirida el 10-03-2011.[1][2]
En una, el campo «Valor corriente en plaza» registra CLP 184.722.186; en la otra, CLP 184.722.186.286.[1][2]
Ambas indican CLP como moneda.[1][2]

La declaración 669760 tiene también fecha, tipo de actualización periódica y organismo Cámara de Diputados iguales a 669568, pero el campo «Cargo o función» aparece como «Otro» en vez de «Diputado/Da».[1][2]
Una declaración posterior, del 05-04-2021, rotulada rectificación a requerimiento de órgano fiscalizador, vuelve a consignar CLP 184.722.186.286 para esa línea.[3]
En la actualización de 2022 consultada, el mismo rótulo registra CLP 219.087.342.[4]
En la actualización de 2023 consigna CLP 244.483.837.[5]
Ambos registros posteriores identifican al organismo Partido Comunista de Chile y el cargo «Miembro Órgano Ejecutivo».[4][5]

Estos documentos acreditan una diferencia entre importes publicados para una línea declarada y una secuencia de registros posteriores, pero no determinan por qué se produjo ni cuál versión debía prevalecer.[1][2][3]
Tampoco establecen cuál era el valor económico efectivo del instrumento.[1][2][4]
La pregunta útil para revisión documental es qué relación formal tienen los dos formularios del 28 de marzo con la rectificación del 5 de abril, y si existe un historial oficial que explique la cifra y su tratamiento posterior.

## Relevancia y alcance

La discrepancia afecta información patrimonial publicada para un declarante que en uno de los dos formularios de 2021 figura como «Diputado/Da» y en el otro como «Otro», ambos bajo el organismo Cámara de Diputados.[1][2] El interés del documento es la trazabilidad y consistencia del registro oficial, no atribuir conducta al declarante. Si se excluye la diferencia entre los dos formularios de 2021, los registros posteriores por sí solos no sostienen esta pregunta documental. El valor es autodeclarado: este cotejo no prueba tenencia, saldo, patrimonio auditado, falsedad, incumplimiento ni intervención individual.

## Cronología documental

- **28-03-2021 — declaración 669568:** actualización periódica de marzo; cargo «Diputado/Da», organismo Cámara de Diputados. La línea de CONFUTURO identifica el APV, fecha de adquisición 10-03-2011, cantidad representada 158.629.348, moneda CLP y valor corriente en plaza CLP 184.722.186.[1]
- **28-03-2021 — declaración 669760:** actualización periódica de marzo; organismo Cámara de Diputados, cargo «Otro». La misma descripción de inversión, emisor y fecha de adquisición aparece con cantidad representada 184.722.186.286 y valor corriente en plaza CLP 184.722.186.286.[2]
- **05-04-2021 — declaración 710408:** rectificación a requerimiento de órgano fiscalizador; la línea registra cantidad 184.722.186.286 y valor corriente en plaza CLP 184.722.186.286.[3]
- **01-04-2022 — declaración 855824:** actualización periódica de marzo por el organismo Partido Comunista de Chile, cargo «Miembro Órgano Ejecutivo»; la misma clase de inversión registra valor corriente en plaza CLP 219.087.342.[4]
- **04-04-2023 — declaración 1048633:** actualización periódica de marzo, también por el organismo Partido Comunista de Chile y cargo «Miembro Órgano Ejecutivo»; la misma clase de inversión registra valor corriente en plaza CLP 244.483.837.[5]

## Medición reproducible y controles

El oro de solo lectura con `meta.build_date=2026-10-08T12:48:32+00:00` devuelve dos snapshots del 28-03-2021 para el mismo nombre completo, ambos con tres bienes y sin pasivos modelados. La consulta `consultas/teillier-declaraciones-misma-fecha-20261008.sql` registra activos agregados por CLP 195.533.740 en el ID 669568 y CLP 184.732.997.840 en el ID 669760; el segundo aparece con las marcas técnicas `has_outlier=true` e `implausible=true` en la fila financiera.[consultas/teillier-declaraciones-misma-fecha-20261008.sql][consultas/triage-teillier-misma-fecha-20261008.sql] Estas marcas describen el procesamiento del artefacto; no validan ni corrigen lo publicado por InfoProbidad.

La consulta de detalle devuelve en cada declaración una línea APV y las mismas dos líneas de vehículos con iguales montos: CLP 7.769.033 y CLP 3.042.521.[1][2] La única diferencia de valor entre los bienes detallados es la cifra declarada para el APV; el resto del agregado en oro coincide con esos dos bienes.[consultas/triage-teillier-misma-fecha-20261008.sql] No se suman declaraciones de fechas distintas ni se trata el importe del oro como una medición independiente de la fuente.

## Explicaciones consideradas y límites

- **Trámite, versión o duplicación de formularios:** es posible que los formularios respondan a trámites o registros distintos. El portal rotula ambos del 28 de marzo como actualizaciones periódicas y el ID 710408 como rectificación a requerimiento, pero las páginas consultadas no dicen si alguno reemplaza formalmente a otro ni la razón de los cambios.[1][2][3]
- **Error de transcripción o carga:** es compatible con la diferencia visible entre las dos cifras del mismo día, pero no se afirma como causa.
  La rectificación de abril conserva el importe mayor.[2][3]
  Las declaraciones de 2022 y 2023 muestran importes corrientes en plaza mucho menores.[4][5]
  Las fuentes revisadas no documentan la relación entre estas entradas ni la causa.[1][2][3]
- **Unidad, saldo o valor efectivo:** las páginas muestran «CLP» para las cifras citadas. No se ha obtenido un estado de cuenta, certificado del emisor ni documento que valide el valor económico; no se infiere que el importe de CLP 184.722.186.286 haya existido como activo real.[1][2][3]

## Preguntas para investigador/auditor

1. ¿Qué trámite o relación de versiones explica que los IDs 669568 y 669760, ambos fechados 28-03-2021, publiquen importes diferentes para la misma descripción de APV?
2. ¿La declaración 710408 sustituyó, rectificó o reprodujo formalmente alguno de esos registros? ¿Existe una anotación o historial público que lo establezca?
3. ¿Qué campo o documento de origen explica que el valor corriente en plaza vuelva a CLP 219.087.342 en 2022 y CLP 244.483.837 en 2023 mientras la cantidad representada que figura en esos formularios permanece como 184.722.186.286?[4][5]

## Matriz de afirmaciones

- **c1 — Identidad y contexto documental:** los documentos 669568, 669760 y 710408 corresponden al nombre completo publicado, registran fecha/tipo/cargo/institución indicados en el texto y se refieren a la línea APV emitida por CONFUTURO.[1][2][3]
- **c2 — Diferencia central:** los formularios 669568 y 669760, ambos fechados 28-03-2021, presentan CLP 184.722.186 y CLP 184.722.186.286, respectivamente, para el valor corriente en plaza de la línea APV; ambos muestran moneda CLP.[1][2]
- **c3 — Contexto posterior:** la rectificación 710408, del 05-04-2021, registra nuevamente CLP 184.722.186.286.[3] Las declaraciones 855824 y 1048633 consignan CLP 219.087.342 y CLP 244.483.837 y registran al declarante en el Partido Comunista de Chile como «Miembro Órgano Ejecutivo».[4][5]
- **c4 — Reproducción y límites del oro:** las consultas guardadas reproducen dos filas de declaración y las tres líneas de bienes de cada una; el oro confirma cómo representa esos registros, no su realidad económica ni el vínculo jurídico entre documentos.[consultas/teillier-declaraciones-misma-fecha-20261008.sql][consultas/triage-teillier-misma-fecha-20261008.sql]

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=669568 — InfoProbidad, declaración 669568
    > "Valor corriente en plaza | $ 184.722.186"
    > "Declaración de GUILLERMO LEÓN TEILLIER DEL VALLE"
    > "| Fecha | 28-03-2021 |"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=669760 — InfoProbidad, declaración 669760
    > "Valor corriente en plaza | $ 184.722.186.286"
    > "Declaración de GUILLERMO LEÓN TEILLIER DEL VALLE"
    > "| Cargo o función | Otro |"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=710408 — InfoProbidad, declaración 710408
    > "Valor corriente en plaza | $ 184.722.186.286"
    > "| Tipo | Rectificación A Requerimiento De Órgano Fiscalizador |"
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=855824 — InfoProbidad, declaración 855824
    > "Valor corriente en plaza | $ 219.087.342"
    > "| Fecha | 01-04-2022 |"
    > "| Organismo | Partido Comunista De Chile |"
    > "| Cargo o función | Miembro Órgano Ejecutivo |"
[5] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1048633 — InfoProbidad, declaración 1048633
    > "Valor corriente en plaza | $ 244.483.837"
    > "| Fecha | 04-04-2023 |"
    > "| Organismo | Partido Comunista De Chile |"
    > "| Cargo o función | Miembro Órgano Ejecutivo |"
