`pantalla-amplia-20261005-3` | **sin avance** | El cribado vigente de proveedores declarados con compras a la institución de la persona devolvió 12 relaciones; las 12 corresponden a casos publicados o pistas ya registradas, por lo que no se abre una nueva. | Evidencia nueva: reproducción del cribado al corte `2026-10-02T15:43:07Z`; no surgió candidato sin deduplicar. | Seis rutas: (1) consulta reproducible del oro; (2) deduplicación exacta contra casos públicos; (3) deduplicación contra INDICE.md/fichas existentes; (4) cribado previo de proveedores compartidos; (5) adjudicaciones directas; (6) actividades remuneradas en salud. | Limitación principal: el artefacto está cortado al 2-oct y esta corrida no reabrió las fuentes primarias de las personas ya cubiertas; el resultado negativo solo vale para el filtro ejecutado. | Próxima acción: rotar a una pista distinta; no repetir búsquedas ni retomar bloqueos humanos sin nueva evidencia/vía pública.

## Verificación de esta corrida — 2026-10-05 UTC

**Medido:** ejecuté `consultas/pantalla-wide-same-institution-current-20261005.sql` con `ec-gold-sql` sobre `gold.duckdb` de solo lectura, corte `2026-10-02T15:43:07Z`. La salida fue de 12 filas. La consulta cruza `declared_supply` con `panel` y `declarant`, restringe a declaraciones actuales, `n_same_institution > 0` y sociedades no marcadas como de amplia propiedad; selecciona también `source_uri`, control/participación, conteos y fechas. Excluí deliberadamente `supplier_rut`: una de las filas refiere a una persona natural, y no corresponde guardar ni republicar ese identificador. La consulta guardada permite reproducir el filtro [../../consultas/pantalla-wide-same-institution-current-20261005.sql:1-13].

**Deduplicación de las 12 filas:** búsqueda por nombre completo y/o entidad en los casos públicos encontró coincidencias para Alberto Patricio Aliaga Díaz, Esteban Gregorio Martínez Rubio, Nancy Marisol Díaz Reyes, Jorge Eduardo Vaccaro Collao, Fernando Oswaldo Ponce Castro, Dino Lotito Flores, Esmirna de la Cruz Vidal Moraga, Pablo César Opazo Encina y Juan Carlos Sepúlveda Sepúlveda [../../casos/autocontratacion/aliaga-diaz-municipalidad-cabildo.md; ../../casos/autocontratacion/martinez-rubio-municipalidad-peumo.md; ../../casos/autocontratacion/diaz-reyes-municipalidad-de-los-sauces.md; ../../casos/negocios_estado/vaccaro-collao-negocios-estado.md; ../../casos/autocontratacion/ponce-castro-servicio-salud-ohiggins.md; ../../casos/autocontratacion/lotito-flores-municipalidad-santo-domingo.md; ../../casos/autocontratacion/vidal-moraga-poder-judicial-deposito-a-plazo.md; ../../casos/autocontratacion/opazo-encina-municipalidad-maule.md; ../../casos/autocontratacion/sepulveda-sepulveda-servicio-salud-ohiggins.md]. Pedro Enrique García Muñoz y Pablo Allard Serrano ya tienen fichas en el índice de investigación; Miguel Ángel Pérez Vidal también tiene ficha, con estado descartado [../../INDICE.md:17-20]. Total conciliado: 9 resultados con caso público + 3 resultados con pista del índice = 12; no se crea una ficha paralela.

## Rutas examinadas y alcance

1. **Consulta del oro:** SQL guardado y reproducido hoy; resultado exacto 12 filas, sin `supplier_rut` en la versión durable. Es un filtro exploratorio, no prueba de intervención personal ni de irregularidad.
2. **Casos públicos:** búsquedas exactas por nombres/entidades de las 12 filas. Nueve coincidencias ya publicadas; no se reabre ni duplica su cobertura.
3. **Índice de investigación:** nombres contrastados con las fichas registradas; García, Allard y Pérez ya constan allí, con acciones editoriales previas [../../INDICE.md:17-20].
4. **Proveedores compartidos:** la revisión amplia del 05-10 encontró principalmente proveedores de amplia propiedad; no atribuyó una relación personal por volumen agregado [pantalla-amplia-20261005.md:19-29].
5. **Modalidad de compra:** la revisión amplia del 05-10 examinó proveedores con cinco o más órdenes y al menos tres adjudicaciones directas; la modalidad por sí sola no acreditó irregularidad [pantalla-amplia-20261005.md:19-29].
6. **Actividades de salud:** la revisión amplia del 05-10 identificó registros de actividades sanitarias, pero no produjo una pista nueva bajo ese filtro [pantalla-amplia-20261005.md:19-29].
7. **Rutas institucionales y primarias:** no se volvieron a abrir portales ni expedientes de individuos ya publicados o fichados; la deduplicación hizo innecesaria una nueva investigación individual en esta pasada. No se afirma que no existan documentos adicionales.

La consulta exploratoria inicial que unía simultáneamente `activity` y `declared_supply` a nivel de persona se descartó: multiplica filas de actividades por filas de sociedades y no sirve para atribuir una actividad a un proveedor. Ninguna conclusión de este resumen usa ese resultado.

## Decisión

**Sin avance material y sin nuevo candidato.** Esta pasada rota respecto de bloqueos de acceso ya documentados, pero el cribado actual vuelve a la cartera existente. No se investigó a las personas más allá del alcance reproducible del artefacto y la deduplicación editorial. No se concluye ausencia de compras, actividad o intervención fuera del filtro y las fuentes consultadas.

**Próxima acción:** rotar en la siguiente ejecución a otro universo no cubierto; no repetir portales/búsquedas agotados de pistas `requiere humano` salvo que aparezca una vía pública o documento nuevo.

## Fuentes locales

- Oro reproducido con `ec-gold-sql`, corte `2026-10-02T15:43:07Z`; consulta exacta: `consultas/pantalla-wide-same-institution-current-20261005.sql`.
- Dedupe público: rutas de casos citadas arriba, del repositorio `estadoclaro-casos`.
- Estado de pistas: `INDICE.md`, especialmente filas de Pablo Allard, Pablo García y Miguel Pérez.
- Rutas previas de la pantalla amplia: `revisiones/descartes/pantalla-amplia-20261005.md`.
