# Tres declaraciones de Marcelo Yubano Guerrero publican avalúos fiscales distintos para inmuebles con atributos coincidentes

## Síntesis

En InfoProbidad hay dos declaraciones del 4 de abril de 2024 a nombre completo de MARCELO YUBANO GUERRERO, ambas por la Municipalidad de Puerto Montt y con cargo declarado «Profesional»: la actualización periódica 1219673 y la rectificación a requerimiento de órgano fiscalizador 1219754.[1][2] En cada declaración figura una entrada de inmueble en Puerto Montt, año 2017, con fecha de adquisición 17-04-2017, plena propiedad y domicilio declarados; sus avalúos fiscales publicados difieren: CLP 6.272.947.362 en la actualización y CLP 60.352.899 en la rectificación.[1][2]

Una rectificación posterior, ID 1287240, fechada el 11-12-2024, vuelve a consignar para un inmueble con esos mismos atributos visibles un avalúo de CLP 62.729.473.[3] Esto es compatible con que los registros de abril reflejen una corrección de la cifra, pero las páginas consultadas no explican su causa ni establecen por un identificador registral visible que las tres filas correspondan exactamente al mismo predio.[1][2][3]

La observación es documental: cifras distintas en registros oficiales para un inmueble declarado con metadatos coincidentes. No acredita valor comercial, avalúo tributario externo, error deliberado, patrimonio real ni conducta irregular. La dirección y los identificadores registrales aparecen reservados en las páginas consultadas.[1][2][3]

## Por qué puede servir a un investigador o auditor

La diferencia publicada es material para la trazabilidad del registro patrimonial de una persona que declaró ejercer como profesional en la Municipalidad de Puerto Montt.[1][2][3] La rectificación de abril y el registro posterior son una explicación administrativa plausible y deben leerse con igual prominencia que la discrepancia.[2][3] La pregunta pendiente no es si el titular poseía un inmueble por CLP 6.272 millones, sino qué dato, predio y secuencia de versiones representan los registros y qué soporte público permite conciliarlos.[1][2][3]

## Cronología y evidencia

- **04-04-2024 — actualización periódica 1219673.** Identifica por nombre completo a Marcelo Yubano Guerrero, registra cargo «Profesional» y organismo Municipalidad de Puerto Montt. Su sección de bienes inmuebles consigna comuna Puerto Montt, año 2017, avalúo fiscal CLP 6.272.947.362, 100% de propiedad, adquisición 17-04-2017 y forma «PLENA PROPIEDAD».[1]
- **04-04-2024 — rectificación 1219754.** Publica el mismo nombre completo, fecha, cargo y organismo; consigna un inmueble con los mismos atributos visibles —comuna, año, avalúo fiscal reportado, porcentaje, fecha de adquisición y forma de propiedad—, ahora con CLP 60.352.899.[2] Dirección, rol, inscripción y fojas están reservados, por lo que la identidad registral exacta no puede cotejarse desde estas páginas.[2]
- **11-12-2024 — rectificación 1287240.** La página vuelve a identificar el nombre completo, cargo declarado y organismo, y consigna para un inmueble de Puerto Montt, año 2017, de plena propiedad y adquirido el 17-04-2017 un avalúo fiscal de CLP 62.729.473.[3] También mantiene reservados los identificadores registrales.[3]

## Medición reproducible y controles

Se consultó el oro de solo lectura por `ec-gold-sql`, corte `meta.build_date=2026-10-09T16:06:27+00:00`. La consulta `consultas/marcelo-yubano-guerrero-inmueble-versiones-run20261010_1.sql` devuelve una fila de inmueble para cada ID de abril y reproduce los avalúos CLP 6.272.947.362 y CLP 60.352.899, junto con la comuna, año de inscripción, fecha de adquisición, tipo de propiedad y marca de domicilio.[1][2] La consulta independiente `consultas/marcelo-yubano-guerrero-inmueble-versiones-run20261010_2.sql` confirma el mismo nombre completo, el mismo `person_id`, cargo, organismo, fecha y tipo de declaración; reproduce los totales modelados de activos CLP 6.286.066.014 y CLP 72.969.871, respectivamente.[1][2] Estos totales del artefacto reflejan datos declarados, no una tasación independiente.[1][2]

La consulta de serie `consultas/marcelo-yubano-guerrero-inmueble-versiones-run20261010_3.sql` encuentra una fila posterior, ID 1287240, del 11-12-2024, con el avalúo CLP 62.729.473 y los mismos atributos públicos usados para cotejar.[3] El artefacto no proporciona en las filas consultadas dirección, rol ni número registral que permita comprobar que cada inmueble sea exactamente el mismo predio.[1][2][3] La búsqueda en el índice de investigaciones y en el repositorio público de casos por nombre completo y por IDs 1219673/1219754 no encontró una ficha o caso coincidente al 10-10-2026.

## Explicaciones, límites y preguntas

La explicación legítima más plausible es una corrección administrativa: la segunda publicación del 04-04-2024 está rotulada «Rectificación a Requerimiento de Órgano Fiscalizador», y la rectificación de diciembre registra un monto del mismo orden que la cifra menor de abril.[2][3] Sin embargo, las páginas no exponen el oficio, el historial de cambios ni el motivo de la rectificación; no se debe presentar esta explicación como causa confirmada.[1][2][3]

La comparación conserva límites importantes: los identificadores registrales, la dirección y las fojas no son visibles; el campo se denomina «Avalúo Fiscal», pero estas fuentes solo prueban qué importe publicó la declaración, no un certificado del SII ni el valor de mercado.[1][2][3] El cargo es el que figura en cada declaración y no se atribuye al funcionario decisión alguna sobre la tasación o el trámite.[1][2][3]

Preguntas acotadas para revisión documental:

1. ¿El inmueble descrito en las tres filas es el mismo predio? La respuesta requiere cotejar un documento público que identifique el rol o inscripción, sin divulgar datos personales no necesarios.
2. ¿Qué antecedente y qué campo fueron rectificados entre la actualización y la rectificación de abril de 2024, y qué explica el importe de diciembre?
3. ¿La secuencia de versiones está completa y cuál es la publicación que el portal considera vigente para el registro?

## Matriz de afirmaciones

- **c1 — identidad y contexto:** los tres documentos identifican a MARCELO YUBANO GUERRERO y consignan fecha, tipo, cargo y organismo indicados en el texto.[1][2][3]
- **c2 — discrepancia de abril:** las primarias 1219673 y 1219754 publican, respectivamente, avalúo fiscal CLP 6.272.947.362 y CLP 60.352.899 para entradas de inmueble con atributos públicos coincidentes; ambas están fechadas el 04-04-2024. Como los identificadores registrales están reservados, el cotejo no demuestra que sea el mismo predio.[1][2]
- **c3 — seguimiento de diciembre:** la primaria 1287240, del 11-12-2024, publica CLP 62.729.473 para un inmueble que comparte esos atributos visibles.[3]
- **c4 — alcance del oro:** las tres consultas guardadas reproducen las filas y el contexto de la declaración; no establecen identidad registral del predio, valor externo, causa de la diferencia ni realidad económica distinta de lo declarado.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1219673 — InfoProbidad, declaración 1219673
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1219754 — InfoProbidad, declaración 1219754
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1287240 — InfoProbidad, declaración 1287240
