# Las declaraciones de Dario Sanchez Montenegro consignan CLP 88 millones y CLP 88.520 millones como pasivos hipotecarios (2023–2024)

## Síntesis

La declaración periódica de Dario Sanchez Montenegro del 18-03-2024 consigna un pasivo de categoría «CRÉDITO HIPOTECARIO» con Banco de Chile por CLP 88.520.142.777.[1]
La declaración periódica del 14-03-2023 consigna CLP 88.253.566 en esa categoría y con el mismo acreedor declarado.[2]
En dos documentos distintos de 2022 —una actualización y una rectificación— se consigna CLP 81.457.863 en cada uno; son declaraciones sucesivas, no importes que deban sumarse como pasivos simultáneos.[3][4]

La razón entre los importes consignados en las declaraciones sucesivas de marzo de 2023 y marzo de 2024 es 1.003,02 (diferencia nominal CLP 88.431.889.211), según el cálculo reproducido con `consultas/dario-sanchez-montenegro-pasivos-6.sql` y `consultas/dario-sanchez-montenegro-pasivos-7.sql`. Es una comparación de registros: los documentos no identifican si ambos importes corresponden a la continuidad de un único contrato, y no determinan saldo efectivo ni causa de la diferencia.[1][2]

## Por qué importa

Las dos declaraciones sucesivas consignan montos muy distintos en la categoría «CRÉDITO HIPOTECARIO» y nombran al mismo acreedor; eso no acredita que se trate de una única obligación contractual continua.[1][2]
La pregunta acotada para una revisión documental es qué explica la diferencia entre CLP 88.253.566 consignados el 14-03-2023 y CLP 88.520.142.777 consignados el 18-03-2024, pues los formularios no explican la diferencia ni aclaran si ambos montos corresponden al mismo contrato.[1][2]

## Hechos y cronología

- Las páginas de InfoProbidad de 2023 y 2024 identifican al declarante como DARIO SANCHEZ MONTENEGRO, Director Regional de la Dirección Nacional de Migraciones; la página de 2024 indica asunción el 01-10-2021.[1][2]
- La actualización periódica del 02-04-2022 consigna como monto global y monto adeudado CLP 81.457.863 para un crédito hipotecario con Banco de Chile.[4]
- La rectificación a requerimiento de órgano fiscalizador del 19-12-2022 también consigna CLP 81.457.863 como monto global y adeudado del crédito hipotecario con Banco de Chile.[3]
- La actualización periódica del 14-03-2023 informa CLP 88.253.566 como monto global y adeudado, en la categoría «CRÉDITO HIPOTECARIO», con Banco de Chile como acreedor declarado.[2]
- La actualización periódica del 18-03-2024 informa CLP 88.520.142.777 como monto global y adeudado, en la categoría «CRÉDITO HIPOTECARIO», con Banco de Chile como acreedor declarado.[1]
- En el corte del oro `meta.build_date=2026-10-06T15:56:08+00:00`, la serie enlazada por nombre completo tiene cuatro declaraciones, de 2022 a 2024. En 2024 el panel reporta activos CLP 45.375.045, pasivos CLP 88.520.142.777 y 2.392.398,79 UF de pasivos nominales para esa fecha; son valores derivados del artefacto, no una valoración financiera independiente. La serie y esos importes se reproducen en `consultas/dario-sanchez-montenegro-pasivos-2.sql` y `consultas/dario-sanchez-montenegro-pasivos-4.sql`.

## Método y controles

La identidad se comprobó con coincidencia íntegra de nombre en las páginas primarias consultadas y `declarant.full_name` en la serie; `consultas/dario-sanchez-montenegro-pasivos-2.sql` devuelve un único `person_id` y cuatro declaraciones en el corte.[1][2]
Se reabrieron las cuatro páginas originales y se cotejaron los campos de deuda con las consultas 2, 4 y 7 ejecutadas por `ec-gold-sql` sobre oro de solo lectura con corte 2026-10-06T15:56:08Z; la consulta independiente de filas fuente queda en `consultas/dario-sanchez-montenegro-pasivos-7.sql`.[1][2][3]

La consulta 7 cuenta una fila de pasivo por cada una de las cuatro declaraciones; las dos observaciones de CLP 81.457.863 pertenecen a documentos distintos y no se suman como pasivos simultáneos. La consulta 6 calcula la razón entre los importes CLP de las dos declaraciones más recientes; no combina UF de distintas fechas ni reexpresa pesos. El oro señala `implausible=false`, lo que no verifica la exactitud del dato autodeclarado. Las consultas están guardadas en `consultas/dario-sanchez-montenegro-pasivos-7.sql`, `consultas/dario-sanchez-montenegro-pasivos-6.sql`, `consultas/dario-sanchez-montenegro-pasivos-2.sql` y `consultas/dario-sanchez-montenegro-pasivos-3.sql`.

## Explicaciones alternativas y límites

Un cambio real en una obligación, una nueva obligación, una modificación o refinanciamiento, una garantía u obligación compartida, o un error de digitación/actualización son posibilidades compatibles con la diferencia de registros, pero ninguna queda establecida por las declaraciones de 2023 y 2024.[1][2] No se consultó un estado de cuenta del banco ni un certificado registral.

Este texto describe importes consignados en formularios oficiales. No afirma que CLP 88.520.142.777 fuera el saldo bancario, el monto originalmente prestado o una deuda efectiva; tampoco infiere falsedad, infracción o conducta impropia.[1]

## Preguntas para investigador/auditor

1. ¿Qué antecedente documental explica que la actualización del 18-03-2024 consigne CLP 88.520.142.777 cuando la actualización del 14-03-2023 había consignado CLP 88.253.566?[1][2]
2. ¿El valor de 2024 corresponde a saldo, monto original, modificación de la obligación, una garantía/coobligación u otro dato ingresado? ¿Qué respaldo permite distinguirlo?[1]
3. ¿Existe una rectificación o declaración posterior pública que cambie el monto? La serie disponible en el oro consultado llega a marzo de 2024; eso no prueba que no haya otro documento fuera del corte. Véase `consultas/dario-sanchez-montenegro-pasivos-2.sql`.

## Matriz de afirmaciones

- **c1 — Identidad y función declaradas:** las declaraciones de 2023 y 2024 consignan el nombre DARIO SANCHEZ MONTENEGRO, cargo Director Regional y Dirección Nacional de Migraciones; la página de 2024 informa asunción 01-10-2021.[1][2]
- **c2 — Montos y cronología, 2022–2023:** CLP 81.457.863 (02-04-2022), CLP 81.457.863 (19-12-2022) y CLP 88.253.566 (14-03-2023), cada monto global y adeudado bajo categoría hipotecaria con Banco de Chile declarado como acreedor.[2][3][4]
- **c2 — Monto de 2024:** CLP 88.520.142.777, monto global y adeudado bajo categoría hipotecaria con Banco de Chile declarado como acreedor, consignado el 18-03-2024.[1]
- **c3 — Comparación cuantitativa:** la consulta 6 divide los dos montos más recientes; la consulta 7 confirma moneda CLP y una fila de pasivo por documento. El resultado compara cifras declaradas, no un saldo bancario. Consultas: `consultas/dario-sanchez-montenegro-pasivos-6.sql` y `consultas/dario-sanchez-montenegro-pasivos-7.sql`.
- **c4 — Límite y explicaciones:** los formularios muestran lo declarado, pero no explican por sí solos la variación ni verifican saldo u origen. Las alternativas se mantienen como posibilidades, no como hechos.[1][2]

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1144876 — InfoProbidad, declaración 1144876 (18-03-2024)
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=969843 — InfoProbidad, declaración 969843 (14-03-2023)
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=926505 — InfoProbidad, declaración 926505 (19-12-2022)
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=846768 — InfoProbidad, declaración 846768 (02-04-2022)
