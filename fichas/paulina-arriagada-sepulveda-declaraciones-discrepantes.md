# Diferencia de avalúo entre declaraciones de Paulina Arriagada

- **ID:** `paulina-arriagada-sepulveda-declaraciones-discrepantes`
- **Categoría:** declaraciones de patrimonio; discrepancia de versión/campo.
- **Estado vigente:** sin avance en esta revisión de continuidad; el caso sigue con PR borrador #118 abierto y las dos revisiones previas siguen ligadas al SHA256 `fa731a75ed3069b219b9b3abaa9deaa0fc1e2a88d4544064a15f79372aa0d4b5`.
- **Producto/destino:** caso documental; `entrega-2/casos/declaraciones_discrepantes/paulina-arriagada-sepulveda-declaraciones-discrepantes.md` (PR de caso en borrador; Rodrigo decide si lo mergea).
- **Pregunta:** ¿por qué dos declaraciones de la misma titular, ambas fechadas el 22-09-2026, asignan avalúos fiscales diferentes al mismo inmueble de Chillán Viejo identificado por los campos registrales 3201-33 / 8689 / fojas 12613?
- **Corte del oro:** `meta.build_date=2026-10-08T05:08:05+00:00`; sincronizado según pre-run. No se abrió el archivo DuckDB directamente; las consultas se ejecutaron con `ec-gold-sql`.
- **Identidad:** coincidencia del nombre completo en ambas páginas primarias y en el oro. No se usó otra persona ni RUT personal.

## Mapa de afirmaciones y evidencia

- **c1 Identidad/función/fecha:** InfoProbidad IDs 1852043 y 1852198 muestran el nombre completo, Subsecretaría de Salud Pública, función de secretaria regional ministerial y fecha de asunción 07-07-2026. Reabrir ambas primarias.
- **c2 Importe de primera declaración:** ID 1852043, 22-09-2026, «Primera Declaración (Por Asunción De Cargo)», inmueble de Chillán Viejo, rol 3201-33, inscripción 8689, fojas 12613, año 2018, fecha de adquisición 05-09-2018, avalúo fiscal CLP 27.409.390.988 y plena propiedad.
- **c3 Importe de actualización:** ID 1852198, mismo nombre/fecha, «Actualizacion Periodica (Septiembre)», mismos campos registrales y fecha de adquisición, avalúo fiscal CLP 27.390.988 y plena propiedad.
- **c4 Reproducción:** `consultas/paulina-arriagada-sepulveda-declaraciones-discrepantes-1.sql` devuelve dos declaraciones por nombre completo. La consulta 2 compara IDs, fecha, tipo, fuente, activos y pasivos. La consulta 3 vuelve a buscar el mismo inmueble y calcula CLP 27.382.000.000 de diferencia y razón 1.000,6718628769434.
- **Control de error relevante:** ambos formularios de origen publicados en InfoProbidad fueron abiertos por `web_extract`; el valor del oro coincide con cada fuente separadamente. La diferencia no se origina al sumar filas del inmueble; los campos registrales se cotejaron individualmente. `has_outlier` no es evidencia.
- **Deduplicación:** búsqueda literal en `INDICE.md`, fichas de investigación y repo público de casos por nombre/ID/valor: sin coincidencia previa (2026-10-08). No es duplicado de una pista indexada.

## Rutas y límites

1. **Cribado del artefacto actualizado:** `consultas/pantalla-wide-outliers-20261004.sql`, ejecutada el 2026-10-08 contra el corte indicado, devolvió 29 filas. Entre ellas apareció Arriagada; esta bandera fue solo señal de cribado.
2. **Primarias:** se extrajeron las declaraciones 1852043 y 1852198 desde InfoProbidad. Ambas muestran mismo nombre, fecha, identificación registral de la propiedad y diferente avalúo fiscal.
3. **Consultas reproducibles:** tres consultas focalizadas con `ec-gold-sql`; salida exacta resumida en `tmp/runs/20261008T110409Z/paulina-arriagada-sepulveda-declaraciones-discrepantes/medicion.txt`.
4. **Búsqueda de contexto/alternativas:** búsqueda web exacta del monto mayor y rol registral devolvió la ficha de la declaración 1852043; no aportó explicación independiente. Las dos versiones primarias dejan abiertas como posibilidades un error de ingreso o una actualización/rectificación, pero no dicen cuál cifra es aplicable. No se solicitó certificado del SII ni del Conservador; no se intentó obtener datos privados o eludir controles.
5. **Relevancia y prudencia:** diferencia de importe publicada en declaraciones de una autoridad sanitaria regional; posible interés público limitado a la consistencia y trazabilidad de lo declarado. Núcleo sostenible sin afirmar saldo, valor de mercado, omisión, error intencional, incompatibilidad o intervención.

## Alternativas, incertidumbre y retorno

La diferencia podría deberse a una equivocación de ingreso o a que una versión posterior refleje una actualización/rectificación, pero la mera denominación y fecha de los formularios no acreditan cuál escenario ocurrió. Las fuentes no establecen el avalúo fiscal oficial aplicable ni el valor de mercado. El caso debe limitarse a describir el desacuerdo entre documentos; auditoría podría comparar los formularios y la fuente fiscal oficial del período.

La doble revisión final ya está completa sobre el mismo SHA; preparar el PR borrador a `main` con el texto limitado al dato publicado. No publicar/mergear sin decisión de Rodrigo. Reabrir solo si una nueva fuente responde qué versión explica el avalúo aplicable o si el texto pierde comparabilidad.

## Revisión final — 2026-10-08

- Evidencia: `revisiones/paulina-arriagada-sepulveda-declaraciones-discrepantes-20261008T110409Z-revisor-1.json` — approve, abrió ambas primarias y rerun tres SQL guardadas más una SQL independiente.
- Adversarial: `revisiones/paulina-arriagada-sepulveda-declaraciones-discrepantes-20261008T110409Z-revisor-2.json` — approve, evaluó alternativa, relevancia pública acotada y fechas/tipos; no halló vacíos centrales.
- Hash final del borrador: `fa731a75ed3069b219b9b3abaa9deaa0fc1e2a88d4544064a15f79372aa0d4b5`.

## Archivos de este paquete

- **Borrador:** `borradores/paulina-arriagada-sepulveda-declaraciones-discrepantes.md`
- Consultas: `consultas/paulina-arriagada-sepulveda-declaraciones-discrepantes-1.sql`, `...-2.sql`, `...-3.sql`
- Medición reproducible: salida resumida en esta ficha; consultas de `ec-gold-sql` guardadas y referenciadas arriba.
- **Fuentes primarias:** InfoProbidad IDs 1852043 y 1852198; citas/evidencia verbatim en el borrador.

## Verificación de continuidad — 2026-10-10

Se reabrieron InfoProbidad 1852043 y 1852198 y se repitieron las consultas 1–3 con `ec-gold-sql` contra el oro sincronizado con `meta.build_date=2026-10-09T16:06:27Z` (salida del pre-run). Las filas de ambos inmuebles conservan los mismos identificadores, fecha de adquisición y avalúos; la consulta 3 devuelve nuevamente dos filas (una por declaración), diferencia CLP 27.382.000.000 y razón 1.000,6718628769434. No hay rectificación, declaración posterior ni explicación nueva en estas fuentes. No cambia el borrador ni el SHA aprobado; PR #118 se observó abierto y borrador contra `main`. Sin avance probatorio. Retomar solo ante historial oficial de versiones, rectificación o fuente pública nueva que explique la relación documental.

