# Tres declaraciones registran CLP 231.188.715 y la del 31-03-2026, CLP 39.668.996.400 por pasivo hipotecario

## Síntesis

La declaración periódica del 30-03-2025 y las dos rectificaciones del 30-03-2026 muestran CLP 231.188.715 como monto adeudado del crédito hipotecario.[2][3][4] La actualización periódica del día siguiente, 31-03-2026, lo registra por CLP 39.668.996.400.[1] La comparación en UF nominales por fecha, reproducida en el artefacto EstadoClaro, va de 5.944,82 UF en 2025 y 5.802,68 UF en las rectificaciones a 995.664,76 UF en la actualización del 31-03-2026, una razón de 171,59 frente a la declaración del día anterior.[consultas/danae-prado-carmona-pasivo-1.sql][consultas/danae-prado-carmona-pasivo-2.sql][1]

Esto documenta una diferencia grande entre importes declarados en documentos oficiales próximos.[1][2][3] No prueba que el saldo bancario efectivo fuera ninguno de esos valores, que exista una deuda de ese monto, que la declaración sea falsa ni que haya responsabilidad individual.[1][2] La explicación puede incluir una corrección, un cambio real, un error de ingreso o una diferencia en el registro; las fuentes revisadas no permiten distinguirlas.[1][2][3]

## Por qué importa

La discrepancia afecta la comparabilidad de una declaración patrimonial pública de una autoridad regional electa.[1][2][3] Justifica una pregunta acotada de auditoría documental: ¿qué explica que dos rectificaciones registradas el 30 de marzo de 2026 mantengan el importe anterior y la actualización periódica del 31 de marzo consigne un importe equivalente a 171,59 veces el de las rectificaciones?[1][2][3] No se afirma un saldo financiero verificado ni una infracción.[1][2]

## Hechos y cronología

- La declaración 1398572, actualización periódica del 30-03-2025, identifica un pasivo como «CRÉDITO HIPOTECARIO», con acreedor BANCO SANTANDER y monto adeudado de CLP 231.188.715.[4]
- Las declaraciones 1729357 y 1722006, ambas rotuladas rectificación a requerimiento de órgano fiscalizador con fecha 30-03-2026, vuelven a mostrar el mismo tipo de obligación, acreedor y monto adeudado de CLP 231.188.715.[2][3]
- La declaración 1745780, actualización periódica del 31-03-2026, identifica un «CRÉDITO HIPOTECARIO» con acreedor BANCO SANTANDER por CLP 39.668.996.400; su monto global de pasivos figura como CLP 39.674.996.400.[1]
- Las cuatro páginas primarias identifican a DANAE NATALIA PRADO CARMONA; el nombre normalizado que el oro muestra en la consulta es DANAE PRADO CARMONA.[1][2][3]
- El oro de EstadoClaro al corte `meta.build_date=2026-10-06T15:56:08+00:00` reproduce nueve declaraciones con ese nombre normalizado entre 2024 y 2026, según la consulta guardada.[consultas/danae-prado-carmona-pasivo-1.sql][1]
- En las cuatro declaraciones de interés, la moneda de la fila `liability` es CLP y el tipo/acreedor coinciden con la declaración; la actualización del 31-03-2026 figura con 995.664,76 UF y las rectificaciones del 30-03-2026 con 5.802,68 UF cada una.[consultas/danae-prado-carmona-pasivo-1.sql][consultas/danae-prado-carmona-pasivo-2.sql][1]
- Las dos rectificaciones tienen el mismo total y el mismo detalle; se tratan como dos documentos publicados, no como dos pasivos que deban sumarse.[2][3]
- El panel marca `has_outlier=false`, pero eso no certifica el saldo ni resuelve la discrepancia.[consultas/danae-prado-carmona-pasivo-1.sql][1]

## Método y controles

Las fuentes primarias reabiertas fueron las cuatro declaraciones oficiales enumeradas arriba, incluida la sección completa de pasivos.[1][2][3] La identidad del nombre completo aparece en las páginas de InfoProbidad.[1][2][3] La SQL guardada une la tabla `panel` con `person` por `person_id`, y la comprobación independiente lee las filas fuente de `liability` en CLP.[consultas/danae-prado-carmona-pasivo-1.sql][consultas/danae-prado-carmona-pasivo-2.sql][1] El corte del oro, su ruta y el resultado reproducible se documentan en la ficha y las consultas; no se consultó la API pública ni se reconstruyó el oro.[consultas/danae-prado-carmona-pasivo-1.sql][1]

La comparación conserva el valor nominal en CLP de cada fecha declarada y muestra además las UF nominales que devuelve el panel para esas fechas; no convierte la cifra a pesos actuales.[consultas/danae-prado-carmona-pasivo-1.sql][consultas/danae-prado-carmona-pasivo-2.sql] El cálculo de 171,59 es una razón entre UF de fechas consecutivas, no evidencia de cambio de saldo bancario.[consultas/danae-prado-carmona-pasivo-1.sql][1] El patrimonio y los pasivos del origen son autodeclarados y no auditados según la metodología del artefacto.[1][2][3]

## Explicaciones alternativas y límites

Una modificación real del crédito, una obligación conjunta/garantía, un error de transcripción o una corrección administrativa son explicaciones posibles, no confirmadas.[1][2][3] El registro público consultado presenta el importe declarado y no un estado de cuenta bancario; por tanto no corresponde elegir una hipótesis como hecho.[1][2] No se contactó a la declarante, al banco ni a organismos.

## Preguntas para investigador/auditor

1. ¿La actualización del 31-03-2026 reflejó un cambio real o una corrección en el pasivo, y qué documento de respaldo permite distinguirlo?[1][2]
2. ¿Cómo se explica que las dos rectificaciones del día anterior mantengan CLP 231.188.715 mientras la actualización consigna CLP 39.668.996.400?[1][2][3]
3. ¿Hubo rectificación posterior o actualización pública que modificara la cifra? La corrida consultada no encontró una posterior dentro del corte de datos, pero ello no prueba que nunca se haya presentado otra.[consultas/danae-prado-carmona-pasivo-1.sql][1]

## Matriz de afirmaciones

- **c1 — Diferencia primaria:** documentos 1398572, 1729357, 1722006 y 1745780 muestran CLP 231.188.715, CLP 231.188.715, CLP 231.188.715 y CLP 39.668.996.400, respectivamente; evidencia: [1]–[4].
- **c2 — Igualdad de tipo/acreedor y moneda:** las cuatro filas de `liability` son crédito hipotecario, acreedor Banco Santander y moneda CLP; evidencia primaria [1]–[4] y `consultas/danae-prado-carmona-pasivo-2.sql`.
- **c3 — Cronología y comparación UF:** declaración de marzo 2025: 5.944,82 UF; rectificaciones 30-03-2026: 5.802,68 UF; actualización 31-03-2026: 995.664,76 UF; razón 171,59; evidencia cuantitativa: `consultas/danae-prado-carmona-pasivo-1.sql` y cálculo reproducible sobre esos resultados.
- **c4 — Límite:** las declaraciones acreditan importes declarados, no saldo bancario efectivo, origen ni falsedad; las preguntas de auditoría permanecen abiertas.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1745780 — InfoProbidad — declaración 1745780 (31-03-2026)
    > "Monto adeudado en pesos	$ 39.668.996.400"
    > "Monto global en pesos $ 39.674.996.400"
    > "Tipo de obligación o deuda	CRÉDITO HIPOTECARIO"
    > "DANAE NATALIA PRADO CARMONA"
    > "Fecha	31-03-2026
Tipo	Actualización Periódica (Marzo)"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1729357 — InfoProbidad — declaración 1729357 (30-03-2026)
    > "Monto adeudado en pesos	$ 231.188.715"
    > "Fecha	30-03-2026
Tipo	Rectificación A Requerimiento De Órgano Fiscalizador"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1722006 — InfoProbidad — declaración 1722006 (30-03-2026)
    > "Monto adeudado en pesos	$ 231.188.715"
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1398572 — InfoProbidad — declaración 1398572 (30-03-2025)
    > "Monto adeudado en pesos	$ 231.188.715"
    > "Fecha	30-03-2025
Tipo	Actualización Periódica (Marzo)"
