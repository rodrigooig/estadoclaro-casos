# Pantalla amplia de actividades y proveedores — revisión editorial

- **ID:** `pantalla-amplia-actividad-proveedores-20261006`
- **Categoría:** compras/relaciones con el Estado; actividades/cargos/temporalidad.
- **Estado:** evidencia insuficiente; control de minería, no pista individual ni caso.
- **Fecha de revisión:** 2026-10-06 UTC.
- **Corte del oro:** `meta.build_date=2026-10-02T15:43:07+00:00`; copia local sin cambios según pre-run. Consultas solo lectura con `ec-gold-sql`.

## Resultado

**Sin avance material hacia una pista nueva.** Se hizo una pasada amplia por actividades declaradas, proveedores compartidos, compras directas y compras a la institución propia. Los resultados útiles fueron mayoritariamente señales ya indexadas o agregados dominados por proveedores de muy amplia difusión. No se elevó ningún nombre a investigación individual con esta pantalla; no se infiere intervención, relación personal con cada orden, ni irregularidad.

## Rutas y verificaciones — 2026-10-06 UTC

1. **Agregación de actividad pagada y temporalidad:** se ejecutó `consultas/pantalla-actividad-pagada-reciente-20261006-2.sql`. En sus siete filas agrupadas por tipo, `paid_recent_people=0` y `paid_recent_named_entity_people=0` para cada tipo. Es un resultado de los indicadores/flags disponibles en el artefacto; no demuestra que no existan actividades remuneradas recientes en los formularios ni sustituye revisar declaraciones fuente.
2. **Actividad declarada junto a proveedores declarados:** `consultas/pantalla-actividades-intereses-20261006-2.sql`, salida limitada a 60 filas. Predominan intersecciones con proveedores muy difundidos (p. ej., LATAM, COPEC, SONDA, ENTEL) y actividades gremiales/beneficencia; aparecen nombres con fichas previas, incluidos Ramon Martín Illanes, Juan Pablo Glasinovic y Pablo Allard. Esta consulta une filas de actividad y de proveedor y puede repetir personas por cada actividad/proveedor; sus montos agregados no se suman como hallazgos independientes.
3. **Proveedores compartidos:** `consultas/pantalla-wide-shared-suppliers-20261005.sql`, 100 filas del ranking limitado. Los primeros resultados están dominados por empresas ampliamente declaradas (ENTEL, COPEC, SONDA, LATAM, entre otras), con decenas o centenas de declarantes; se revisó como ruta independiente de actividades y no produjo una empresa/persona nueva priorizable en esta pasada.
4. **Premios directos reiterados:** `consultas/pantalla-wide-direct-awards-20261005.sql`, salida limitada a 60 filas. El ranking vuelve a estar dominado por proveedores corporativos de gran difusión y candidaturas ya indexadas. `n_direct_award` es el conteo de la métrica del artefacto, no una conclusión sobre legalidad o procedimiento.
5. **Compras a institución propia con proveedor no ampliamente difundido:** `consultas/pantalla-wide-same-institution-current-20261005.sql` devolvió 12 filas; entre ellas aparecen leads ya existentes en el índice, como Aliaga, Martínez Rubio, Díaz Reyes, Lotito, Opazo y Allard, además de otros nombres con baja materialidad/temporalidad en esta salida. Se deduplicó por nombre, institución y huella contra el índice leído antes de esta minería; no se abrió ficha repetida.
6. **Proveedores de baja recurrencia con compras a institución propia:** `consultas/pantalla-proveedores-baja-recurrencia-20261006-2.sql` devolvió cinco filas: cuatro corresponden a nombres ya indexados (Lotito, García Muñoz, Opazo y Allard) y una a Juan Carlos Sepúlveda con una orden de CLP 2.643.840 del 25-06-2020, fuera de una ventana reciente y sin nueva evidencia de papel individual. No se abrió una pista nueva solo por coincidencia estadística.
7. **Deduplicación editorial y contraste:** se cotejaron los nombres que salieron de las pantallas con `INDICE.md` y el índice público en `estadoclaro-casos/README.md` (61 casos según ese archivo). Las coincidencias identificables se trataron como ya investigadas, no como nuevos hallazgos. No se buscó atribuir personas por homonimia ni se usó RUT personal.

## Lectura, límites y próxima acción

El hallazgo verificable de esta corrida es metodológico: estas pantallas generales vuelven a recuperar proveedores de amplia difusión y expedientes ya conocidos; no aportan en sí mismas la identidad de quien requirió, evaluó, aprobó o recibió una compra. La ausencia de un nuevo candidato en las salidas revisadas no prueba que no existan relaciones de interés o documentos adicionales. La priorización siguiente debe rotar a una fuente o sector distinto y partir de un identificador/documento primario, en lugar de ampliar rankings de volumen. No requiere intervención humana: en esta corrida no se identificó una barrera de acceso central para una pista concreta.

No hubo segunda revisión independiente. Las salidas y consultas indicadas son reproducibles contra el corte consignado; las limitaciones de truncamiento se declaran donde aplica. Ninguna consulta abre ni modifica el oro.
