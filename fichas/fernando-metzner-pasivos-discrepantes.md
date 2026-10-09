# Pasivos divergentes en dos declaraciones de Fernando Metzner fechadas el mismo día

- **ID:** `fernando-metzner-pasivos-discrepantes`
- **Categoría:** patrimonio y pasivos; discrepancia entre versiones declaradas.
- **Estado vigente:** borrador listo — doble revisión independiente del mismo SHA final.
- **Fecha de actualización:** 2026-10-09 UTC.
- **Producto/destino:** caso documental; `casos/patrimonio_pasivos/fernando-metzner-pasivos-discrepantes.md`.
- **Pregunta central:** ¿qué relación documental hay entre las declaraciones InfoProbidad 820453 y 835335, ambas del 30-03-2022 y atribuidas al mismo nombre/cargo, si una informa un pasivo hipotecario de CLP 10.021.845.366 y la otra no informa pasivos?
- **Corte del oro:** `meta.build_date=2026-10-08T12:48:32+00:00`; archivo sincronizado sin cambios según el pre-run. Solo se consultó vía `ec-gold-sql` read-only.
- **Identidad:** las primarias 820453, 835335, 890731 y 1007320 muestran el nombre completo FERNANDO ESTEBAN METZNER IRIBARREN; el oro une por coincidencia íntegra. No se publicó ni utilizó RUT personal.

## Mapa de afirmaciones

- **c1 — Identidad, cargo y versiones:** las primarias 820453 y 835335 muestran mismo nombre completo, Fiscal Adjunto/Ministerio Público, fecha 30-03-2022; tipos Actualización Voluntaria y Actualización Periódica (Marzo). Fuentes reabiertas en ambas revisiones.
- **c2 — Pasivo en 820453:** InfoProbidad reporta CRÉDITO HIPOTECARIO, global y adeudado CLP 10.021.845.366, BANCO EDWARDSCITI. Fuente primaria y consulta de detalle coinciden.
- **c3 — 835335:** la primaria indica «No tiene información declarada» en pasivos; el oro devuelve sin monto global, cero filas de liability y liabilities_clp=0. Esto solo describe lo declarado/modelado.
- **c4 — Contexto posterior acotado:** ID 890731 (30-06-2022) informa hipoteca CLP 103.526.094/BANCO DE CHILE; ID 1007320 (28-03-2023) informa pasivos totales CLP 144.390.794, hipoteca CLP 108.052.534 y consumo CLP 36.338.260, ambos BANCO DE CHILE. No se establece continuidad contractual con marzo.
- **c5 — Reproducción/deduplicación:** consultas `consultas/fernando-metzner-pasivos-discrepantes-declaraciones-misma-fecha-20261009.sql` y `consultas/fernando-metzner-pasivos-discrepantes-serie-pasivos-20261009.sql`. Una fila por fuente de declaración; el documento 2023 presenta dos filas distintas de detalle, sin sumar snapshots.
- **c6 — Comparación aritmética:** `consultas/fernando-metzner-pasivos-discrepantes-diferencia-clp-20261009.sql` devuelve nominalmente CLP 9.918.319.272 y 96,805 veces entre 820453 y 890731. Es comparación de documentos, no variación probada de la misma deuda. Es un elemento contextual, no el núcleo necesario.
- **c7 — Límites:** las fuentes no explican si la versión voluntaria reemplaza a la periódica, qué trámite debía prevalecer, el motivo del cambio posterior ni el saldo bancario. No se afirma error, falsedad, infracción o deuda efectiva.

## Rutas, alternativas y controles

1. Cribado de versiones del mismo día con `consultas/fernando-metzner-pasivos-discrepantes-pantalla-20261009.sql`, ejecutada con `ec-gold-sql` sobre el corte indicado y limitada a 100 filas; Metzner apareció en resultados. El límite no representa el universo.
2. Se abrieron directamente las cuatro declaraciones primarias exactas por ID, incluyendo sus detalles completos; no se dependió solo del resumen/buscador.
3. Se ejecutaron las consultas focalizadas de misma fecha, serie y comparación aritmética. Revisores 1 y 2 escribieron consultas independientes propias, reabrieron las cuatro primarias y las ejecutaron con `ec-gold-sql`.
4. La explicación legítima más directa es que una actualización voluntaria y una periódica del mismo día reflejen trámites/estados de versión distintos. Las fuentes no describen su precedencia; no se presume que un documento anule al otro.
5. Los acreedores y montos posteriores difieren de la declaración de marzo; una modificación, obligación distinta o cambio de acreedor son posibilidades, no conclusiones. No se consultaron bancos, contratos privados ni datos de terceros.
6. Búsqueda exacta web del nombre completo junto con IDs 820453/835335 no devolvió resultados. Es resultado limitado de búsqueda web, no evidencia de inexistencia de una rectificación.
7. Dedupe: búsqueda de nombre e IDs en el índice/fichas del ledger y repo público de casos sin coincidencia anterior al comenzar esta investigación.

## Revisión independiente final

- **Evidencia:** `revisiones/fernando-metzner-pasivos-discrepantes-20261009T050333Z-revisor-1.json`, approve, sin bloqueos; reabrió cuatro fuentes y ejecutó consulta independiente de unicidad/detalle.
- **Adversarial:** `revisiones/fernando-metzner-pasivos-discrepantes-20261009T050333Z-revisor-2.json`, approve, sin bloqueos; reabrió fuentes y ejecutó consulta propia. Identificó c6 como el elemento narrativo más débil: al retirarlo, la discrepancia entre las dos declaraciones del mismo día sigue sosteniendo la historia documental.
- **SHA común aprobado:** `fbfd202f6c562feaa2ef0c3caf6c1861f152fab595b0e8d9ba52938ccdf825f8`.
- **Citas del borrador:** `sources.py verify --evidence --min-coverage 0.5` pasó; 63% de cobertura, las 4 fuentes citadas llevan evidencia literal. Se observó aviso estilístico sobre citas múltiples; sin errores de mapeo/evidencia/cobertura.

## Decisión y retorno

El núcleo satisface el criterio documental de declaraciones: dos documentos primarios comparables por identidad, cargo y fecha difieren materialmente sobre un campo de pasivo; la historia queda limitada a lo publicado. La intervención personal y el saldo bancario no son afirmaciones del texto y no se requieren para esta pregunta. Entregar como PR borrador a `main`; Rodrigo decide merge/publicación. Reabrir la incertidumbre solo ante historial oficial de versiones, rectificación o documento público que explique la relación entre 820453 y 835335. No repetir búsquedas generales.
