# Marcelo Yubano Guerrero — avalúos distintos en declaraciones con atributos coincidentes

- **ID:** `marcelo-yubano-guerrero-inmueble-versiones`
- **Categoría/producto:** patrimonio declarado; caso documental sobre diferencias entre versiones. Destino propuesto: `casos/patrimonio_pasivos/marcelo-yubano-guerrero-inmueble-versiones.md`.
- **Estado vigente:** sin avance en esta sesión; el caso permanece entregado como borrador listo en PR #130, abierto para decisión editorial de Rodrigo.
- **Pregunta:** ¿qué secuencia de antecedentes explica que tres declaraciones oficiales publiquen avalúos fiscales distintos para entradas de inmueble de Marcelo Yubano Guerrero con atributos visibles coincidentes, sin un identificador registral disponible para confirmar si es el mismo predio?
- **Corte gold:** `meta.build_date=2026-10-09T16:06:27+00:00`; consultas solo `ec-gold-sql`, read-only.
- **Resultado:** primarias InfoProbidad 1219673 y 1219754, ambas 04-04-2024, publican CLP 6.272.947.362 y CLP 60.352.899, respectivamente, para una entrada de inmueble con comuna Puerto Montt, año 2017, fecha de adquisición 17-04-2017, 100%/plena propiedad y domicilio. ID 1287240, rectificación fechada 11-12-2024, publica CLP 62.729.473 con los mismos atributos públicos comparables. El tipo de rectificación y la cifra posterior hacen plausible una corrección; no revelan causa ni prueban identidad del predio.[1][2][3]
- **Límites:** dirección, rol, inscripción y fojas aparecen reservados/no disponibles. Las fuentes prueban importes declarados en páginas oficiales, no certificado externo del SII, valor de mercado, patrimonio real, error deliberado o conducta irregular. No se atribuye intervención en la tasación/trámite.
- **Rutas/evidencia:** se reabrieron las tres primarias. SQL guardadas: `consultas/marcelo-yubano-guerrero-inmueble-versiones-run20261010_1.sql` compara las filas `real_estate` de abril; `...-run20261010_2.sql` verifica identidad/contexto y totales del panel; `...-run20261010_3.sql` busca registros inmobiliarios posteriores. Primera pasada de cribado de versiones del mismo día identificó la pareja 1219673/1219754, sin tratar el top 100 como universo.
- **Dedupe:** búsquedas del nombre completo y los IDs 1219673/1219754 en el índice de investigaciones y en `estadoclaro-casos` no encontraron ficha/caso previo.
- **Revisiones independientes finales:** evidencia `revisiones/marcelo-yubano-guerrero-inmueble-versiones-20261010T041141Z-revisor-1.json` y adversarial `...-revisor-2.json`; ambas aprobaron SHA256 `1deeeff59b65aaa72bd7641b4effa578248ec08ee1753df12021298f21f807ea`, claims c1–c4, sin bloqueos. La primera pidió precisar en título y texto que son entradas con metadatos coincidentes, no identidad registral; se cambió el borrador y ambas revisiones finales reabrieron el hash actualizado. La revisión adversarial consideró limitado, pero suficiente, el interés como pregunta de trazabilidad documental, con la explicación administrativa plausible expuesta.
- **Citas:** `sources.py verify borradores/marcelo-yubano-guerrero-inmueble-versiones.md --evidence --min-coverage 0.5`: pasó con 56% de cobertura; tres fuentes citadas, todas con citas textuales verificadas. Avisos estilísticos de citas múltiples inspeccionados; no se rebajó la evidencia para evitarlos.
- **Incertidumbre restante:** identificación registral del predio, razón/campo de las rectificaciones, integridad de la serie y versión que el portal considera vigente.
- **Próxima acción:** validar y entregar por `ec-inv-pr` como `borrador listo`, después verificar estado fresco de PR de bitácora y PR de caso. Reabrir investigación solo ante historial oficial u otro antecedente público que identifique el predio o explique/cambie la secuencia.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1219673
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1219754
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1287240