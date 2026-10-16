# Discrepancia entre totales globales de pasivos en declaraciones del mismo día — Alfonso De Urresti

- **ID:** `de-urresti-discrepancia-pasivos`
- **Estado:** `borrador listo` tras dos revisiones independientes del SHA final; PR de caso pendiente de entrega mediante `ec-inv-pr`.
- **Producto/destino:** caso documental; `casos/discrepancias_declarativas/de-urresti-discrepancia-pasivos.md`.
- **Pregunta decisiva:** ¿qué explica que dos declaraciones de 26-03-2024 atribuidas al mismo nombre completo publiquen totales globales de pasivos distintos mientras muestran las mismas tres líneas hipotecarias?
- **Corte del oro:** `meta.build_date=2026-10-09T16:06:27+00:00`; solo `ec-gold-sql` read-only.
- **Dedupe/rotación:** búsqueda de nombre completo e IDs 1168779/1172389 en el índice local y repo público de casos no encontró caso o ficha previa; consulta del índice completo y cola. Persona no aparece en candidatos recientes de las corridas registradas. Identidad corroborada por coincidencia completa en las dos primarias.

## Mapa de afirmaciones

- **c1 — Identidad, fecha, tipo y función:** las primarias InfoProbidad 1168779 y 1172389 identifican a ALFONSO ARTURO DE URRESTI LONGTON, ambas con fecha 26-03-2024 y tipo Actualización Periódica (Marzo). La primera identifica Senado/Senador(A); la segunda, Partido Socialista de Chile/Miembro Órgano Ejecutivo. No se infiere que una declaración sustituya a la otra.
- **c2 — Totales publicados:** la primaria 1168779 muestra total global CLP 229.825.327; la 1172389, CLP 2.299.825.327. Ambas muestran tres créditos hipotecarios con Banco BCI.
- **c3 — Detalle y reconciliación:** dos consultas guardadas e independientes arrojan tres líneas por declaración y suma de detalle CLP 229.825.327 en cada una. La diferencia entre totales globales es CLP 2.070.000.000. Ninguna query agrega snapshots entre sí.
- **c4 — Límites:** las páginas documentan los campos publicados; no determinan causa, prevalencia formal, saldo bancario real, falsedad o infracción.

## Consultas y comprobaciones

- `consultas/de-urresti-discrepancia-pasivos-20261012.sql`: agrupación por source_id/documento; una fila por declaración, count/sum de líneas, tipo y acreedor.
- `consultas/de-urresti-discrepancia-pasivos-independiente-20261012.sql`: consulta de control separada, agrega liability primero y luego une cada documento para evitar fan-out.
- Ambas ejecutadas con `ec-gold-sql --max-rows 20` sobre el artefacto sincronizado; resultados coincidentes, dos filas. La fuente primaria se reabrió directamente en ambas revisiones.
- Primarias: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1168779 y https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1172389. El resumen y borrador guardan evidencia literal.
- Se comprobó `meta.build_date=2026-10-09T16:06:27+00:00` directamente. No se sumaron versiones ni se mezcló monto en otra moneda.

## Alternativas y límites

La explicación legítima más fuerte es que las declaraciones responden a funciones institucionales distintas y que el total global pueda reflejar otro alcance o un error de transcripción/registro. La evidencia disponible no permite escoger entre estas posibilidades. Las dos fuentes publicadas repiten exactamente las tres partidas visibles, pero difieren en el total global de una de ellas. No se revisaron expedientes internos, rectificaciones ni documentos bancarios; no se afirma deuda efectiva. La pregunta pendiente puede investigarse con el historial oficial de la declaración 1172389 o una explicación/corrección pública.

## Revisión independiente final

- **Evidencia:** `revisiones/de-urresti-discrepancia-pasivos-20261012T141913Z-revisor-1.json`, approve; reabrió ambas primarias y reejecutó ambas consultas.
- **Adversarial:** `revisiones/de-urresti-discrepancia-pasivos-20261012T141913Z-revisor-2.json`, approve; reabrió primarias y SQL, evaluó el alcance institucional, explicación legítima y robustez narrativa.
- **SHA común final:** `e0427ba0b010e99af6bef96a2ae28728018acef04c2a3e53b8daca030f00461d`.
- **Citas:** `sources.py verify --evidence --min-coverage 0.5`: pasó, cobertura 80%, ambas fuentes con evidencia literal. Se inspeccionó aviso estilístico sobre citas múltiples; no bloquea el gate factual.

## Próxima acción

Entrega por `ec-inv-pr` como `borrador listo`; verificar por separado el PR integrado de bitácora y el PR de caso, que debe permanecer borrador abierto contra `main`. Rodrigo decide el merge. Retomar la pregunta pendiente solo ante historial, rectificación o fuente pública nueva.

## Decisión editorial (2026-10-16): descartada

Descartado. Las cifras coinciden con InfoProbidad: la declaración ante el Senado (1168779) informa un total de $229.825.327 y la del Partido Socialista (1172389), $2.299.825.327. Ambas traen las mismas tres líneas hipotecarias, que suman $229.825.327. El total mayor tiene un 9 de más, y la misma declaración trae otra diferencia de tecleo en un avalúo ($91.992.756 frente a $91.922.756). Los pares de 2022, 2023 y 2025 concuerdan. Es compatible con un error de transcripción, sin otra pregunta de interés público (pregunta 2 del criterio editorial). Además, la categoría propuesta no existe en `main`.

— Editor de EstadoClaro. Criterio: [METODO_INVESTIGACION.md § Decisión editorial](https://github.com/rodrigooig/estadoclaro-casos/blob/investigacion/METODO_INVESTIGACION.md#decisi%C3%B3n-editorial).

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/136
