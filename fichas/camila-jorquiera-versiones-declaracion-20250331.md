# Camila Suling Jorquiera Monardez: dos registros de declaración del 31-03-2025

- **ID:** `camila-jorquiera-versiones-declaracion-20250331`
- **Producto / estado:** ficha de triage; `evidencia insuficiente` para afirmar cuál registro prevalece.
- **Pregunta:** ¿Qué relación documental tienen InfoProbidad 5099580 y 5099347?
- **Corte gold:** `2026-10-09T16:06:27+00:00`; lectura local solo mediante `ec-gold-sql`.

## Hecho documental

InfoProbidad identifica ambos registros con el nombre completo CAMILA SULING JORQUIERA MONARDEZ, fecha 31-03-2025 y tipo «Actualización Periódica (Marzo)».[1][2]

La ficha 5099580 indica Poder Judicial, cargo «Conservador» y comuna Talca.[1] La ficha 5099347 indica los mismos organismo, cargo y comuna.[2]

La declaración 5099580 publica pasivos globales de CLP 3399820864.[1] La declaración 5099347 publica CLP 2945550053.[2]

El resumen inmobiliario de 5099580 informa 24 entradas «OTRA».[1] El resumen de 5099347 informa 13 entradas «PLENA PROPIEDAD».[2]

| source_id | activos CLP | pasivos/global CLP | filas de activo (inmuebles) | filas de pasivo | suma detalle pasivos |
|---|---:|---:|---:|---:|---:|
| 5099580 | 3902722756 | 3399820864 | 26 (24) | 14 | 3399820864 |
| 5099347 | 1741261168 | 2945550053 | 16 (13) | 13 | 2945550053 |

La consulta de detalle agrupó los pasivos por tipo y acreedor dentro de cada snapshot, sin sumar declaraciones entre sí.[1][2] Las sumas de detalle coinciden con los respectivos totales globales publicados.[1][2]

Los registros publican importes distintos bajo el mismo nombre y fecha.[1][2] Al tener la misma fecha, no describen una variación entre fechas.[1][2] Las páginas consultadas no indican cuál documento reemplaza al otro.[1][2]

## Verificación reproducible

| Archivo SQL | Comprobación |
|---|---|
| `consultas/camila-jorquiera-versiones-declaracion-20250331-panel-20261012.sql` | Dos filas de panel por nombre completo y source_id; conteos de activos/inmuebles/pasivos y conciliación de detalle/global. |
| `consultas/camila-jorquiera-versiones-declaracion-20250331-desglose-20261012.sql` | Desglose por tipo y acreedor, con cada declaración separada. |
| `consultas/pantalla-multiples-declaraciones-misma-fecha-20261008.sql` | Pantalla que encontró ambos IDs en una misma fila; se ejecutó hoy con `ec-gold-sql`. |

No se usó la API ni se reconstruyeron datos. La búsqueda literal del nombre completo y de ambos IDs en los índices públicos de casos y la bitácora no encontró una pista previa. Las búsquedas web exactas por ID y nombre no devolvieron resultados adicionales; ese resultado limitado no prueba que no exista historial en otra ruta oficial.

## Brechas, alternativas y disposición

| Afirmación | Evidencia / límite |
|---|---|
| c1 — Los dos registros comparten nombre completo, fecha, tipo y cargo/institución declarados. | Verificado en las páginas primarias.[1][2] |
| c2 — Los totales globales y conteos publicados difieren. | Verificado en las páginas primarias y reproducido para cada snapshot en SQL.[1][2] |
| c3 — No se establece cuál registro fue presentado, corregido o reemplazado. | Ninguna página abierta contiene historial de versiones o prelación.[1][2] |

Una carga duplicada, un reenvío, una corrección o una diferencia de captura son alternativas posibles, no explicaciones demostradas. La etiqueta del tipo y el orden de los IDs no resuelven cuál registro prevalece. No se concluye error de la declarante, incumplimiento ni saldo real.

**Disposición:** `evidencia insuficiente` para caso autocontenido por ahora. Hay una diferencia documental medible, pero falta una fuente primaria de presentación, historial o rectificación que relacione los registros. No es un caso ni una imputación.

**Condición de retorno:** obtener una ruta oficial nueva que identifique el historial o la relación de 5099580 y 5099347, o una declaración posterior que resuelva la discrepancia. Al reabrir, cotejar campos equivalentes y mantener cada snapshot separado.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5099580 — InfoProbidad: declaración 5099580
    > "#### Monto global en pesos $ 3.399.820.864"
    > "| Fecha | 31-03-2025 |"
    > "- OTRA (24)"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5099347 — InfoProbidad: declaración 5099347
    > "#### Monto global en pesos $ 2.945.550.053"
    > "| Fecha | 31-03-2025 |"
    > "- PLENA PROPIEDAD (13)"
