# Dos declaraciones de Paulina Arriagada asignan valores fiscales distintos a un mismo inmueble

## Síntesis

Dos declaraciones patrimoniales de InfoProbidad, ambas fechadas el 22 de septiembre de 2026, identifican como el mismo inmueble una propiedad de plena propiedad en Chillán Viejo: coinciden en su rol de avalúo 3201-33, inscripción 8689, fojas 12613 y fecha declarada de adquisición, 5 de septiembre de 2018. La declaración por asunción de cargo informa un avalúo fiscal de CLP 27.409.390.988; la actualización periódica fechada ese mismo día informa CLP 27.390.988 para esos mismos campos de identificación.[1][2]

El oro de EstadoClaro replica ambas cifras en dos registros separados, con la misma fecha y el mismo identificador registral. La diferencia nominal calculada es CLP 27.382.000.000; el valor de la primera declaración es 1.000,67 veces el de la actualización.[consultas/paulina-arriagada-sepulveda-declaraciones-discrepantes-3.sql] Esto documenta una inconsistencia entre dos importes publicados, no determina cuál es correcto ni acredita valor de mercado, patrimonio efectivo, error deliberado o infracción.[1][2]

## Relevancia pública acotada

La pregunta de interés público es documental: que dos declaraciones atribuidas a una autoridad informen valores distintos para el mismo bien limita la posibilidad de leer y cotejar su información patrimonial pública; por sí sola, la discrepancia no prueba incumplimiento ni conducta impropia.[1][2]

## Hechos documentales y cronología

InfoProbidad identifica a Paulina del Pilar Arriagada Sepúlveda como secretaria regional ministerial en la Subsecretaría de Salud Pública y registra la fecha de asunción del cargo como 7 de julio de 2026.[1][2]

La declaración ID 1852043 está rotulada «Primera Declaración (Por Asunción De Cargo)» y fechada 22 de septiembre de 2026. En el inmueble de Chillán Viejo individualizado como rol 3201-33, inscripción 8689, fojas 12613 y año 2018, consigna avalúo fiscal de CLP 27.409.390.988, plena propiedad y adquisición el 5 de septiembre de 2018.[1]

La declaración ID 1852198 está rotulada «Actualizacion Periodica (Septiembre)» y también fechada 22 de septiembre de 2026. Para un inmueble con el mismo rol, inscripción, fojas, año, comuna y fecha de adquisición, consigna avalúo fiscal de CLP 27.390.988 y plena propiedad.[2]

Una consulta reproducible por nombre completo devuelve las dos declaraciones y confirma que el oro conserva por separado sus tipos y montos; la consulta de bienes inmuebles encuentra el mismo identificador registral y calcula la diferencia descrita.[consultas/paulina-arriagada-sepulveda-declaraciones-discrepantes-3.sql][1][2]

## Qué se puede y no se puede concluir

**Hecho medido:** dos formularios oficiales atribuidos al mismo nombre completo y fechados el mismo día informan avalúos fiscales distintos para un inmueble que comparten los campos registrales consultados.[1][2]

**Reproducción en EstadoClaro:** el artefacto conserva los dos documentos por separado; el valor de cada fila del oro coincide con el que muestra el documento de origen. La señal `has_outlier` del panel no se usa como prueba y no sustituye el cotejo de los formularios.[consultas/paulina-arriagada-sepulveda-declaraciones-discrepantes-1.sql][consultas/paulina-arriagada-sepulveda-declaraciones-discrepantes-2.sql][consultas/paulina-arriagada-sepulveda-declaraciones-discrepantes-3.sql]

**Límite:** las dos declaraciones no explican por qué difieren los importes ni establecen cuál refleja el avalúo fiscal aplicable.[1][2] Una equivocación de ingreso o una actualización/rectificación del registro son posibilidades, no hechos probados.[1][2] No se consultó un certificado del SII ni un antecedente del Conservador que permita decidir entre ellas.

Los documentos denominan estos importes «Avalúo Fiscal»; no aportan una tasación de mercado ni establecen por sí solos patrimonio neto auditado.[1][2] Este texto no afirma que la cifra mayor sea riqueza efectiva, que la menor sea correcta, ni que la diferencia responda a una conducta impropia.[1][2]

## Preguntas acotadas para una revisión profesional

- ¿Qué documento o versión del sistema originó cada uno de los dos formularios fechados el 22 de septiembre de 2026?
- ¿Hubo una rectificación posterior o una explicación formal del valor informado para el rol 3201-33?
- ¿Qué avalúo fiscal oficial correspondía al bien para el período pertinente y cómo se trasladó a cada formulario?

Resolver esas preguntas permitiría aclarar la inconsistencia documental; no es necesario presumir de antemano que alguno de los valores sea correcto o incorrecto.[1][2]

## Matriz de afirmaciones

- **c1 — Identidad, cargo, organismo y fecha de asunción:** InfoProbidad, IDs 1852043 y 1852198.[1][2]
- **c2 — Fecha, tipo y valor CLP 27.409.390.988 de la primera declaración:** InfoProbidad ID 1852043.[1]
- **c3 — Fecha, tipo y valor CLP 27.390.988 de la actualización periódica:** InfoProbidad ID 1852198.[2]
- **c4 — Coincidencia de los identificadores registrales y fechas de adquisición entre formularios:** ambas declaraciones; control de oro con consulta 3.[1][2][consultas/paulina-arriagada-sepulveda-declaraciones-discrepantes-3.sql]
- **c5 — Diferencia de CLP 27.382.000.000 y razón 1.000,67:** cálculo reproducible en consulta 3, cuyas filas de entrada se cotejaron con las dos declaraciones primarias.[1][2][consultas/paulina-arriagada-sepulveda-declaraciones-discrepantes-3.sql]
- **c6 — Límites sobre causa, corrección y valor efectivo:** los documentos publican campos distintos y no contienen una explicación de la diferencia; ninguna conclusión ulterior se atribuye como hecho.[1][2]

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1852043
    > "Avalúo Fiscal | $ 27.409.390.988"
    > "Rol avalúo | 3201-33"
    > "Fecha | 22-09-2026"
    > "Tipo | Primera Declaración (Por Asunción De Cargo)"
    > "N° de inscripción | 8689"
    > "Fojas | 12613"
    > "Fecha de adquisición | 05-09-2018"
    > "Porcentaje que posee | 100"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1852198
    > "Avalúo Fiscal | $ 27.390.988"
    > "Rol avalúo | 3201-33"
    > "Fecha | 22-09-2026"
    > "Tipo | Actualizacion Periodica (Septiembre)"
    > "N° de inscripción | 8689"
    > "Fojas | 12613"
    > "Fecha de adquisición | 05-09-2018"
    > "Porcentaje que posee | 100"
