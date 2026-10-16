# Dos declaraciones de Giovanna Paredes del 29 de marzo de 2023 difieren en el valor informado para una misma sociedad

## Síntesis

Dos declaraciones InfoProbidad del mismo día atribuidas a GIOVANNA PAREDES CASTILLO, ambas por su función de consejera regional en el Gobierno Regional del Maule, registran para AGRICOLA LOS DEL MONTE LTDA. el mismo RUT, el mismo valor numérico 2.5 en el campo combinado «Cantidad / Porcentaje» y distinta cifra en el campo «Valor Corriente en plazo o Valor Libro»: 6.288.303 en la actualización periódica y 1.000.000.000 en una rectificación a requerimiento de órgano fiscalizador.[1][2]

La resta aritmética entre las cifras mostradas en el campo «Valor Corriente en plazo o Valor Libro» es 993.711.697; las declaraciones dejan vacío «Tipo de Moneda», por lo que no se atribuye unidad monetaria a esa diferencia.[1][2]

Una rectificación fechada al día siguiente y otra del 2 de abril de 2024 vuelven a mostrar 1.000.000.000 para la misma línea societaria.[3][4]

Esto describe una discrepancia entre registros públicos y la repetición posterior de una de las cifras; no determina por sí mismo qué valor era correcto, qué trámite sustituyó a cuál ni el valor económico real de la participación.[1][2]

La relevancia pública se limita a la trazabilidad y consistencia de la información patrimonial declarada por una autoridad regional; la discrepancia no permite concluir cuál cifra es correcta.[1][2]

## Pregunta para investigación

¿Qué relación existe entre las dos declaraciones fechadas el 29-03-2023 que consignan importes distintos para la misma línea societaria, y qué cifra —si alguna— debía prevalecer en el registro?

## Hechos documentales

- La declaración 1017370 identifica a GIOVANNA PAREDES CASTILLO, fecha 29-03-2023, tipo «Actualización Periódica (Marzo)», cargo «Consejero Regional» y organismo «Gobierno Regional Del Maule».[1]
- La declaración 1017105 lleva el mismo nombre completo, fecha, cargo y organismo, y se titula «Rectificación A Requerimiento De Órgano Fiscalizador».[2]
- En ambas páginas, la línea de AGRICOLA LOS DEL MONTE LTDA. muestra el RUT 76.035.861-4, el valor numérico 2.5 en el campo combinado «Cantidad / Porcentaje» y «NO» en calidad de controlador; el campo de valor publicado difiere: 6.288.303 en 1017370 y 1.000.000.000 en 1017105.[1][2]
- La consulta 1 al oro devuelve una fila de compañía por cada declaración, ambas con nombre completo, RUT numérico coincidente (sin dígito verificador en la tabla), valor 2.5 en el campo combinado, moneda de lectura local, y sin bandera `implausible`.[1][2]
- La consulta 3, construida como comparación independiente por IDs, devuelve una fila por lado y una resta aritmética de 993.711.697 entre los valores mostrados.[1][2]
- La declaración 1023480, fechada 30-03-2023 y tipificada como rectificación, muestra de nuevo para esa sociedad, RUT y el valor numérico 2.5 en «Cantidad / Porcentaje» junto con el valor 1.000.000.000.[3]
- La declaración 1217224, fechada 02-04-2024 y tipificada como rectificación, vuelve a publicar 1.000.000.000 para la misma sociedad, RUT y el valor numérico 2.5 en «Cantidad / Porcentaje».[4]

## Medición reproducible y controles

Corte del artefacto: `meta.build_date=2026-10-09T16:06:27Z`; solo se usó `ec-gold-sql` en modo de solo lectura.

- `consultas/giovanna-paredes-castillo-empresa-20261013-1.sql`: coteja las dos declaraciones del 29-03-2023 en tablas `declaration`, `panel`, `asset` y `company`; resultado: dos filas, sin mezclar snapshots.
- `consultas/giovanna-paredes-castillo-empresa-20261013-2.sql`: reconstruye la serie de la misma compañía por nombre completo y RUT societario; seis filas entre 2021 y 2024. Las dos declaraciones del 29-03-2023 muestran valores distintos para la misma línea.[1][2]

  Documentos posteriores vuelven a registrar 1.000.000.000.[3][4]

  La consulta representa valores declarados, no una valoración independiente de la sociedad o del derecho.[1][2]
- `consultas/giovanna-paredes-castillo-empresa-20261013-3.sql`: compara 1017370 y 1017105 por identificador societario exacto. Devuelve una fila por documento y la resta aritmética de 993.711.697 entre sus cifras mostradas.[1][2]
- Control de identidad: coincidencia completa del nombre en las primarias y en la tabla `declarant`; sociedad cotejada por RUT y nombre.[1][2] No se usó ni publica RUT personal.
- Control de unidades: las páginas dejan vacío «Tipo de Moneda»; el artefacto etiqueta ambas lecturas como CLP/local, una clasificación del procesamiento y no una unidad monetaria explícita de la fuente.[1][2] El texto reproduce las cifras en el campo y no las traduce a valor de mercado, saldo líquido o patrimonio auditado.
- Control de duplicación: se comparan documentos separados por ID; no se suman snapshots ni se presenta la diferencia como cambio económico ocurrido en el día.

## Explicaciones y límites

Una explicación legítima posible es un error de transcripción o una diferencia de base de valoración en una de las declaraciones del 29-03-2023.[1][2]

Que el valor 1.000.000.000 reaparezca en documentos posteriores es compatible con que esa cifra haya sido la corregida, pero no lo demuestra.[2][3][4] La etiqueta «Rectificación» no identifica qué campo se rectifica ni dice cuál de los dos registros del 29 de marzo reemplaza al otro.

El campo de origen combina «Valor Corriente en plazo o Valor Libro»; las primarias no explican el método de valoración ni si la cifra se refiere al valor de la participación o a otra base contable.[1][2]

Tampoco verifican el valor real de AGRICOLA LOS DEL MONTE LTDA. o de la participación declarada.[1][2] No se afirma omisión deliberada, falsedad, infracción, control de la compañía ni intervención de la consejera en decisiones públicas.

Las dos primarias muestran los campos descritos, pero no explican la diferencia entre sus cifras ni identifican cuál registro del mismo día debía prevalecer.[1][2]

Documentos posteriores vuelven a mostrar la cifra de 1.000.000.000.[3][4]

## Utilidad para auditoría

Una revisión puede cotejar los formularios originales 1017370 y 1017105, el alcance de la rectificación reflejada en 1023480 y la base documental usada para completar el campo de valor. La relevancia pública se limita a la trazabilidad y consistencia del registro patrimonial presentado por una autoridad regional; no a establecer cuál cifra es correcta.[1][2]

La discrepancia central subsiste si se omiten los documentos posteriores, porque las dos declaraciones del mismo día ya muestran importes distintos.[1][2]

Las publicaciones posteriores solo aportan contexto de cronología y no son confirmación independiente de ninguna cifra.[3][4]

## Matriz de afirmaciones

- **c1 Identidad, fecha y cargo:** ambas declaraciones del 29-03-2023 corresponden al nombre completo GIOVANNA PAREDES CASTILLO, consejera regional del Gobierno Regional del Maule.[1][2]
- **c2 Discrepancia principal:** mismo RUT societario y mismo valor numérico 2.5 en el campo combinado «Cantidad / Porcentaje»; importes diferentes en el campo de valor.[1][2]
- **c3 Reproducción:** dos consultas al oro confirman dos filas en los IDs del 29-03-2023 y la resta aritmética 993.711.697 entre las cifras mostradas; la consulta de serie distingue seis documentos.
- **c4 Contexto posterior:** 1023480 y 1217224 vuelven a publicar 1.000.000.000 para AGRICOLA LOS DEL MONTE LTDA., RUT 76.035.861-4, con el valor numérico 2.5 en «Cantidad / Porcentaje».[3][4]
- **c5 Límites:** las primarias no explican la discrepancia, su base de valoración ni qué formulario prevalece.[1][2]
- La cifra publicada tampoco establece el valor económico real.[1][2]

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1017370
    > "| Valor Corriente en plazo o Valor Libro | 6.288.303 |"
    > "| Fecha | 29-03-2023 |"
    > "| Nombre o Razón Social | AGRICOLA LOS DEL MONTE LTDA |"
    > "Declaración completa de GIOVANNA PAREDES CASTILLO"
    > "| Cargo o función | Consejero Regional |"
    > "| R.U.T. | 76.035.861-4 |"
    > "| Cantidad / Porcentaje | 2.5 |"
    > "| Tiene Calidad de Controlador | NO |"
    > "| Tipo de Moneda |  |"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1017105
    > "| Valor Corriente en plazo o Valor Libro | 1.000.000.000 |"
    > "| R.U.T. | 76.035.861-4 |"
    > "Declaración completa de GIOVANNA PAREDES CASTILLO"
    > "| Tipo | Rectificación A Requerimiento De Órgano Fiscalizador |"
    > "| Cantidad / Porcentaje | 2.5 |"
    > "| Tiene Calidad de Controlador | NO |"
    > "| Tipo de Moneda |  |"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1023480
    > "| Valor Corriente en plazo o Valor Libro | 1.000.000.000 |"
    > "| Fecha | 30-03-2023 |"
    > "| Nombre o Razón Social | AGRICOLA LOS DEL MONTE LTDA |"
    > "| R.U.T. | 76.035.861-4 |"
    > "| Cantidad / Porcentaje | 2.5 |"
    > "| Tipo de Moneda |  |"
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1217224
    > "| Valor Corriente en plazo o Valor Libro | 1.000.000.000 |"
    > "| Fecha | 02-04-2024 |"
    > "| Nombre o Razón Social | AGRICOLA LOS DEL MONTE LTDA |"
    > "| R.U.T. | 76.035.861-4 |"
    > "| Cantidad / Porcentaje | 2.5 |"
    > "| Tipo de Moneda |  |"
