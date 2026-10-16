# Discrepancia entre pasivos globales publicados y partidas visibles — Juan José Cárcamo Hemmelmann

- **ID:** `juan-jose-carcamo-hemmelmann-pasivos`
- **Estado:** `borrador listo` tras dos revisiones independientes del SHA final.
- **Producto/destino:** caso documental; `casos/discrepancias_declarativas/juan-jose-carcamo-hemmelmann-pasivos.md`.
- **Pregunta decisiva:** ¿qué explica que las páginas de las declaraciones InfoProbidad 1343468 y 1582061 publiquen un monto global CLP 2.357.990.116 frente a dos partidas de CLP 235.799.016, y a qué presentación corresponde la rectificación 1582061?
- **Corte del oro:** `meta.build_date=2026-10-09T16:06:27+00:00`; solo `ec-gold-sql` read-only.
- **Dedupe/rotación:** búsqueda en COLA, INDICE, fichas y casos públicos por el nombre completo e IDs 1343468/1582061 no halló antecedente previo. La pista es distinta de las personas trabajadas en las corridas inmediatamente anteriores. Identidad sustentada por el nombre completo coincidente y coincidencia de organismo/cargo en las primarias; no se atribuye nada a homónimos.

## Mapa de afirmaciones

- **c1 — Identidad y contexto documental:** InfoProbidad 1343468 identifica a JUAN JOSÉ CÁRCAMO HEMMELMANN, con fecha 28-03-2025, tipo Actualización Periódica (Marzo), cargo Jefe Superior de Servicio e Instituto de Previsión Social. InfoProbidad 1582061 publica el mismo nombre completo, fecha 01-12-2025 y tipo Rectificación a requerimiento de órgano fiscalizador; su página no aclara qué presentación rectifica.
- **c2 — Discrepancia publicada:** ambos documentos publican monto global CLP 2.357.990.116 y dos partidas visibles: crédito hipotecario CLP 191.477.178 y crédito de consumo CLP 44.321.838. El oro suma CLP 235.799.016 en cada snapshot; diferencia global-detalle CLP 2.122.191.100 en cada uno.
- **c3 — Control temporal:** la consulta de seis snapshots devuelve para 1275606 (12-09-2024) CLP 249.444.257; para 1546788 (29-09-2025), CLP 205.970.150; para 1628230 (11-03-2026), CLP 172.982.891; los tres coinciden con el detalle del oro. Para 1842943 (17-09-2026), global CLP 163.150.917 y detalle CLP 162.008.524, diferencia CLP 1.142.393. Los documentos se conservaron separados.
- **c4 — Límites:** esto describe campos publicados, no deuda efectiva, pago, falsedad, conducta indebida, causa o prevalencia formal. La rectificación puede corresponder a otra presentación o alcance; no se presume vínculo con 1343468.

## Consultas y comprobaciones

- `consultas/juan-jose-carcamo-hemmelmann-pasivos-20261012-1.sql`: comparación de panel, fecha, tipo, función y total por fuente_id, conservando cada documento.
- `consultas/juan-jose-carcamo-hemmelmann-pasivos-20261012-2.sql`: agrega primero liability por declaration_id y después une panel; evita multiplicación de filas.
- `consultas/juan-jose-carcamo-hemmelmann-pasivos-20261012-3.sql`: cronología de todas las seis declaraciones de ese nombre completo al corte.
- Revisión de evidencia: `consultas/juan-jose-carcamo-hemmelmann-review-evidence-20261012.sql`, reejecutada independientemente por `ec-gold-sql`; 6 filas separadas, dos discrepancias grandes y una posterior menor.
- Revisión adversarial: `consultas/juan-jose-carcamo-hemmelmann-review-adversarial-20261012.sql`, SQL distinta que agrega por declaration_id y compara los mismos seis documentos.
- Primarias abiertas: InfoProbidad 1275606, 1343468, 1546788, 1582061, 1628230 y 1842943. Las citas literales quedan en el borrador con fuentes/evidencia.
- Las búsquedas web exactas por el nombre, IDs y monto no devolvieron una explicación pública pertinente; una búsqueda de otra frase del nombre devolvió resultados no relacionados, que se excluyeron. La serie de declaraciones es la alternativa primaria relevante consultada.

## Alternativas y límites

La explicación legítima más fuerte es que el global incluya una obligación que no aparece en las partidas visibles o tenga otro alcance/captura. También es posible una diferencia de registro o rectificación. Ninguna página examinada determina cuál hipótesis aplica ni enlaza explícitamente el registro 1582061 con la declaración 1343468. Los snapshots de septiembre de 2025 y marzo de 2026 no repiten el desajuste de magnitud; septiembre de 2026 presenta una brecha menor, también sin explicación. Ninguno prueba un saldo bancario efectivo.

## Revisiones independientes finales

- **Evidencia:** `revisiones/juan-jose-carcamo-hemmelmann-20261012T204634Z-revisor-1.json`, approve; reabrió las seis páginas primarias y reejecutó SQL propia.
- **Adversarial:** `revisiones/juan-jose-carcamo-hemmelmann-20261012T204634Z-revisor-2.json`, approve; reabrió primarias, reejecutó SQL propia y concluyó que la discrepancia de 1343468 conserva una historia documental aun si se elimina la referencia a 1582061.
- **SHA común final:** `032fb4ea4e6c6c7ec3916c891638eb1b71e2a3b84905e1c610277c5d65d41367`.
- **Citas:** `sources.py verify --evidence --min-coverage 0.5`: pasó, 19/19 frases con procedencia; seis primarias con citas/evidencia. Se conservó el aviso de una diferencia menor en el snapshot más reciente.

## Decisión y retorno

La discrepancia publicada entre total global y dos partidas visibles en 1343468 es concreta, primaria y reproducible; el umbral para un caso documental acotado se cumple. La mención de 1582061 se presenta solo como registro separado que repite los campos, no como rectificación demostrada de 1343468. El borrador del caso no tiene PR: `ec-inv-pr --dry-run` rechazó la entrega al detectar cambios ajenos de otras pistas en `INDICE.md`; no se alteraron ni publicaron esas diferencias y no se ejecutó el helper en modo de escritura. Próxima acción: reintentar la misma entrega por `ec-inv-pr` cuando la bitácora esté libre de cambios ajenos. Rodrigo decide el merge del caso. Retomar la investigación solo si aparece una fuente oficial que identifique qué presentación rectifica 1582061 o explique cómo se compuso el total global; no reabrir por repetición cosmética ni inferir causa o saldo real.
