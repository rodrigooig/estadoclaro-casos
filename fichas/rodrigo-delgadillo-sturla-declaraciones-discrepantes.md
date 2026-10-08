# Rodrigo Delgadillo Sturla — versiones de la línea SONDA

- **ID:** `rodrigo-delgadillo-sturla-declaraciones-discrepantes`
- **Categoría:** declaraciones de patrimonio; discrepancia documental entre rectificaciones.
- **Estado vigente:** borrador listo; dos revisiones independientes aprobaron el mismo SHA256 `81e8de0f569c98cb1daca6a316f2a176372f2bf06e15d595164ace7f5019364c`.
- **Producto/destino:** caso documental; `entrega-2/casos/declaraciones_discrepantes/rodrigo-delgadillo-sturla-declaraciones-discrepantes.md`. PR de caso en borrador pendiente de `ec-inv-pr`; Rodrigo decide si lo mergea.
- **Pregunta:** ¿por qué dos rectificaciones oficiales a nombre del mismo titular y con fecha 22-06-2022 registran cantidades y valores distintos para SONDA S.A., y qué relación tiene con una rectificación posterior que coincide con una de ellas?
- **Corte del oro:** `meta.build_date=2026-10-08T12:48:32+00:00`. Lectura y consultas solo con `ec-gold-sql`, read-only.
- **Identidad:** nombre completo coincidente en las tres declaraciones oficiales; no se atribuyen registros por homonimia ni se publica RUT personal.

## Mapa de afirmaciones y evidencia

- **c1 — Identidad, fechas, cargo y tipos:** InfoProbidad 876774, 876629 y 930821 muestran RODRIGO ANDRÉS DELGADILLO STURLA y cargo de Consejero/A del Consejo de Concesiones, Subsecretaría de Obras Públicas. Las dos primeras datan de 22-06-2022; una se rotula Rectificación Voluntaria y otra Rectificación a Requerimiento de Órgano Fiscalizador. 930821 data de 21-12-2022 y también es a requerimiento. Cotejo independiente por ambos revisores.
- **c2 — Comparación primaria:** 876774 consigna SONDA S.A., 9.000 acciones y 2.839.860; 876629, 4.223.340 acciones y 370.000.000.000; 930821, 9.000 acciones y 2.839.860. El campo «Tipo de Moneda» aparece vacío en las tres líneas. Los valores se reportan literalmente sin unidad atribuida. La coincidencia de diciembre con la rectificación voluntaria de junio no prueba sustitución formal.
- **c3 — Reproducción:** `consultas/rodrigo-delgadillo-sturla-sonda-versiones-20261008.sql` y `consultas/rodrigo-delgadillo-sturla-review-independiente-20261008.sql` fueron ejecutadas por revisores con `ec-gold-sql`; una fila por cada fuente comparada, sin sumar versiones. El oro asigna `currency=CLP` y marca `implausible=true` solo en 876629; se describe únicamente como metadato/señal del artefacto, no como dato de la primaria ni valor económico.
- **c4 — Límites:** los documentos y el artefacto verifican lo publicado/registrado, no tenencia efectiva, saldo, precio de mercado, valor económico, causa ni actuación individual. Ambos revisores verificaron las cautelas.

## Rutas, alternativas e incertidumbre

1. Se reabrieron las tres declaraciones oficiales por su ID exacto y se cotejaron identidad, cargo, fecha, tipo, razón social, cantidad, valor y moneda.
2. Se repitieron dos consultas guardadas read-only al corte indicado, incluyendo una consulta independiente escrita para revisión. Las filas corresponden a la misma razón social en tres versiones.
3. La hipótesis legítima más directa es que los distintos trámites correspondan a versiones/correcciones distintas; las etiquetas describen tipos de rectificación, pero las páginas no documentan su relación formal. Error de ingreso o corrección posterior son posibilidades no demostradas.
4. Se buscó la lectura más prudente: el registro muestra una discrepancia documental y coincidencia posterior, no una conclusión sobre qué formulario prevalece. No se afirma incompatibilidad, falsedad, riqueza ni intervención vinculada al cargo.

Siguen pendientes el antecedente que originó cada trámite de junio, qué relación formal hay entre ambas rectificaciones y qué unidad debía consignarse. El paquete puede servir a un investigador/auditor para rastrear esa trazabilidad sin resolverla de antemano. Reabrir la explicación únicamente ante una anotación, expediente, versión oficial o fuente pública nueva.

## Revisión final — 2026-10-08

- **Evidencia:** `revisiones/rodrigo-delgadillo-sturla-declaraciones-discrepantes-20261008T140000Z-revisor-1.json` — approve; reabrió primarias, corrió consultas, comprobó corte y citas/evidencia.
- **Adversarial:** `revisiones/rodrigo-delgadillo-sturla-declaraciones-discrepantes-20261008T140000Z-revisor-2.json` — approve; evaluó relevancia, explicación alternativa, límites y trazabilidad.
- **Hash final común:** `81e8de0f569c98cb1daca6a316f2a176372f2bf06e15d595164ace7f5019364c`.
- **Citas:** validación con ledger aislado, `--evidence --min-coverage 0.5`; 16/32 frases con procedencia (50%), tres fuentes citadas, las tres con evidencia literal. Se revisó el aviso estilístico por más de tres citas; no es error factual ni bloqueo.

## Archivos del paquete

- `borradores/rodrigo-delgadillo-sturla-declaraciones-discrepantes.md`
- `consultas/rodrigo-delgadillo-sturla-sonda-versiones-20261008.sql`
- `consultas/rodrigo-delgadillo-sturla-review-independiente-20261008.sql`
- Dos revisiones finales citadas arriba; transcripciones fuente y ledger en `tmp/runs/20261008T140000Z/rodrigo-delgadillo-sturla-declaraciones-discrepantes/`.
