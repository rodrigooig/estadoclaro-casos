# Guillermo Teillier — discrepancia en una línea de APV entre declaraciones de marzo de 2021

- **ID:** `teillier-declaraciones-discrepantes`
- **Categoría:** discrepancia documental en declaraciones patrimoniales
- **Estado:** borrador listo, sujeto a decisión editorial de Rodrigo
- **Producto/destino:** caso nuevo; `entrega-2/casos/declaraciones_discrepantes/teillier-declaraciones-discrepantes.md`
- **Pregunta:** ¿qué relación documental tienen las declaraciones InfoProbidad 669568 y 669760, ambas fechadas el 28-03-2021, y la rectificación 710408 del 05-04-2021, respecto del valor corriente en plaza declarado para la misma línea APV de CONFUTURO?
- **Corte del oro:** `meta.build_date=2026-10-08T12:48:32+00:00`; consultas ejecutadas sólo mediante `ec-gold-sql`, read-only.

## Resultado y alcance

Las dos declaraciones de 28-03-2021 identifican por nombre completo a GUILLERMO LEÓN TEILLIER DEL VALLE y describen un APV de cuotas de fondos mutuos emitido por CONFUTURO, adquirido el 10-03-2011. Una consigna valor corriente en plaza CLP 184.722.186; la otra, CLP 184.722.186.286. Ambas muestran moneda CLP.[1][2]

La declaración 669760 consigna organismo Cámara de Diputados y cargo «Otro», mientras 669568 indica «Diputado/Da».[1][2] Una rectificación del 05-04-2021 vuelve a registrar CLP 184.722.186.286. Las declaraciones 2022 y 2023 registran CLP 219.087.342 y CLP 244.483.837; ambas ubican al declarante en el Partido Comunista de Chile como «Miembro Órgano Ejecutivo».[3][4][5]

Las primarias verifican importes publicados, no su causa, el formulario prevalente ni el valor económico efectivo. No se afirma saldo, tenencia, falsedad o actuación individual. El interés concreto es la trazabilidad de una diferencia documental; si se elimina la comparación entre los dos registros de 2021, la secuencia posterior por sí sola no sostiene esta pregunta.

## Mapa de afirmaciones y comprobación

- **c1 — Identidad y contexto:** las páginas 669568, 669760 y 710408 identifican al declarante por nombre completo y muestran las fechas/tipos/cargos/instituciones consignados en el borrador.[1][2][3] Las páginas de 2022 y 2023 muestran el mismo nombre completo y el cambio a Partido Comunista de Chile / «Miembro Órgano Ejecutivo».[4][5] No se atribuye registro por homonimia.
- **c2 — Diferencia central:** 669568 y 669760 consignan, respectivamente, CLP 184.722.186 y CLP 184.722.186.286 como valor corriente en plaza del APV; ambas muestran moneda CLP.[1][2]
- **c3 — Secuencia posterior:** 710408 repite CLP 184.722.186.286; 855824 y 1048633 registran CLP 219.087.342 y CLP 244.483.837, con el cambio de organismo/cargo indicado en el borrador.[3][4][5]
- **c4 — Control del artefacto:** las consultas devuelven dos snapshots de marzo de 2021 con tres bienes cada uno; los dos vehículos coinciden y el valor financiero es la única diferencia entre líneas de bienes. Los agregados del oro son CLP 195.533.740 y CLP 184.732.997.840; el segundo aparece marcado técnicamente como outlier/implausible. Esto describe la representación del artefacto, no una verificación independiente de la declaración.[consultas/teillier-declaraciones-misma-fecha-20261008.sql][consultas/triage-teillier-misma-fecha-20261008.sql]

## Rutas, controles y alternativas

1. **Cribado de declaraciones múltiples del mismo día:** `consultas/teillier-pantalla-multiples-20261008.sql`, ejecutada contra oro con corte 2026-10-08T12:48:32Z, devolvió el par de Teillier entre los resultados principales; la consulta limita la salida a 100 pares, por lo que no se interpreta como universo completo.
2. **Primarias InfoProbidad:** se abrieron por ID los cinco formularios 669568, 669760, 710408, 855824 y 1048633; se compararon nombre, fecha, tipo, cargo, organismo, emisor, fecha de adquisición, cantidad representada, moneda y valor corriente en plaza.[1][2][3][4][5]
3. **Reproducción directa:** consultas `teillier-declaraciones-misma-fecha-20261008.sql`, `triage-teillier-misma-fecha-20261008.sql` y `teillier-apv-serie-20261008.sql`; se contrastaron con dos SQL independientes de evidencia y adversarial, reejecutadas por los revisores al mismo corte.
4. **Búsqueda de explicación pública:** búsquedas web exactas por ID 669760 y nombre completo, por «184.722.186.286» y Teillier, y `site:infoprobidad.cl/Declaracion "669760" rectificación Teillier` (08-10-2026). Los resultados devolvieron páginas primarias ya examinadas o material biográfico/no relacionado; no apareció en esos resultados un documento distinto que explique la relación de versiones. Esto no prueba que tal documento no exista.
5. **Alternativas:** duplicación, trámites separados o relación entre versiones son posibles; las etiquetas de actualización/rectificación no determinan si una publicación reemplaza otra. La cifra que difiere aparece en un documento primario y no se explica por el join: el oro reproduce la misma cifra fuente. La rectificación de abril repite la cifra mayor; las declaraciones de 2022/2023 muestran cifras corrientes menores, pero se emiten bajo otro organismo/cargo y no establecen por sí solas la relación formal con las entradas de 2021.[1][2][3][4][5]

## Revisión independiente final

Ambas revisiones finales reabrieron las cinco primarias y ejecutaron consultas propias con `ec-gold-sql`; ambas aprobaron el mismo SHA256 `7bfc13bedf2c88fd254a4c27f0967f1ad0dabdba6b11f23d1ed4b3c4e090545e`:

- Evidencia: `revisiones/teillier-declaraciones-discrepantes-20261008T200237Z-revisor-1.json`; consulta `consultas/teillier-final-evidence-20261008T200237Z.sql`.
- Adversarial: `revisiones/teillier-declaraciones-discrepantes-20261008T200237Z-revisor-2.json`; consulta `consultas/teillier-final-adversarial-20261008T200237Z.sql`.

La revisión adversarial confirmó que la relevancia pública es acotada a la consistencia/trazabilidad del registro; la discrepancia de 2021 es el núcleo y las cifras posteriores por sí solas no sostienen la misma pregunta. Sigue sin establecerse la relación formal entre ambos formularios de marzo y la rectificación de abril, ni qué explica la permanencia de la «cantidad representada» junto a valores corrientes distintos en años posteriores. El documento propuesto mantiene esos puntos como preguntas, no como hechos.

## Condición de retorno

Reabrir ante historial oficial de versiones, anotación de expediente, rectificación/documento público que determine la relación formal entre los IDs 669568, 669760 y 710408, o evidencia primaria nueva sobre la unidad y el tratamiento posterior. No repetir búsquedas generales ni convertir el outlier del artefacto en un juicio sobre patrimonio real.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=669568 — InfoProbidad, declaración 669568
    > "Valor corriente en plaza | $ 184.722.186"
    > "Declaración de GUILLERMO LEÓN TEILLIER DEL VALLE"
    > "| Fecha | 28-03-2021 |"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=669760 — InfoProbidad, declaración 669760
    > "Valor corriente en plaza | $ 184.722.186.286"
    > "Declaración de GUILLERMO LEÓN TEILLIER DEL VALLE"
    > "| Cargo o función | Otro |"
    > "| Fecha | 28-03-2021 |"
    > "| Organismo | Camara De Diputados |"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=710408 — InfoProbidad, declaración 710408
    > "Valor corriente en plaza | $ 184.722.186.286"
    > "| Tipo | Rectificación A Requerimiento De Órgano Fiscalizador |"
    > "Declaración completa de GUILLERMO LEÓN TEILLIER DEL VALLE"
    > "| Fecha | 05-04-2021 |"
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=855824 — InfoProbidad, declaración 855824
    > "Valor corriente en plaza | $ 219.087.342"
    > "| Fecha | 01-04-2022 |"
    > "| Organismo | Partido Comunista De Chile |"
    > "| Cargo o función | Miembro Órgano Ejecutivo |"
    > "Declaración completa de GUILLERMO LEÓN TEILLIER DEL VALLE"
[5] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1048633 — InfoProbidad, declaración 1048633
    > "Valor corriente en plaza | $ 244.483.837"
    > "| Fecha | 04-04-2023 |"
    > "| Organismo | Partido Comunista De Chile |"
    > "| Cargo o función | Miembro Órgano Ejecutivo |"
    > "Declaración completa de GUILLERMO LEÓN TEILLIER DEL VALLE"
