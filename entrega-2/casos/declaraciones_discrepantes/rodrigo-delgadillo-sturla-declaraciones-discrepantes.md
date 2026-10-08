# Dos rectificaciones del 22 de junio de 2022 difieren en una línea de acciones; una posterior coincide con una de ellas

## Síntesis

Dos documentos oficiales de InfoProbidad a nombre de RODRIGO ANDRÉS DELGADILLO STURLA están fechados el 22 de junio de 2022: una rectificación voluntaria y otra a requerimiento de órgano fiscalizador.[1][2] En la línea de SONDA S.A., la primera registra 9.000 acciones y el valor 2.839.860; la segunda, 4.223.340 acciones y 370.000.000.000.[1][2] El campo «Tipo de Moneda» está vacío en ambas líneas: las cifras se reproducen tal como aparecen, sin atribuirles una moneda.[1][2]

Una rectificación posterior, fechada el 21-12-2022, vuelve a registrar para SONDA S.A. 9.000 acciones y 2.839.860, igual que la rectificación voluntaria de junio.[3] Esta secuencia documenta versiones distintas y una coincidencia posterior con una de ellas, pero no prueba que el formulario de diciembre dejara sin efecto formalmente al otro ni cuál documento debía prevalecer.[1][2][3]

La comparación no acredita tenencia, saldo, precio de mercado, valor económico, causa de la diferencia ni actuación individual del funcionario.[1][2][3]

## Relevancia y pregunta de auditoría

La pregunta verificable es de trazabilidad documental: ¿por qué dos rectificaciones publicadas con la misma fecha consignan cantidades y valores distintos para SONDA S.A., y qué relación tiene con la rectificación posterior que coincide con una de esas líneas?[1][2][3] El cargo que aparece en los documentos es consejero del Consejo de Concesiones, en la Subsecretaría de Obras Públicas.[1][2][3] Estas tres páginas no vinculan la posición declarada con una decisión, concesión o actuación individual del funcionario.[1][2][3]

## Hechos y comparación

- La declaración 876774 está fechada el 22-06-2022 y rotulada «Rectificación Voluntaria».[1]
- La declaración 876629 está fechada el 22-06-2022 y rotulada «Rectificación A Requerimiento De Órgano Fiscalizador».[2]
- La declaración 930821, también a requerimiento de órgano fiscalizador, está fechada el 21-12-2022 y registra para SONDA S.A. 9.000 acciones con el valor 2.839.860, igual que la declaración 876774 de junio; su campo «Tipo de Moneda» también aparece vacío.[3]
- En la declaración 876774, la línea de SONDA S.A. registra 9.000 acciones y «Valor Corriente en plazo o Valor Libro» 2.839.860; el campo «Tipo de Moneda» de esa línea aparece vacío.[1]
- En la declaración 876629, la línea de SONDA S.A. registra 4.223.340 acciones y 370.000.000.000 bajo el mismo rótulo; el campo «Tipo de moneda» aparece vacío.[2]
- Una consulta focalizada en el oro registra para SONDA S.A. las dos líneas de junio y una tercera del 21-12-2022: 876774 y 930821 comparten `quantity=9000` y `declared_value=2839860`; 876629 registra `quantity=4223340` y `declared_value=370000000000`. El oro asigna `currency=CLP` a esas filas y `implausible=true` solo a la línea 876629; esos campos describen el artefacto, no fijan la moneda vacía en las primarias ni el valor económico.[1][2][consultas/rodrigo-delgadillo-sturla-sonda-versiones-20261008.sql]

## Método y controles

La identidad se cotejó por nombre completo en las tres declaraciones; no se atribuyen filas a un homónimo.[1][2][3] Se compararon identificadores de fuente (876774, 876629 y 930821), fecha y tipo de declaración.[1][2][3] La consulta guardada contrasta la misma razón social en cada documento; no suma ni mezcla activos de formularios distintos. El oro read-only al corte `meta.build_date=2026-10-08T12:48:32+00:00` replica las líneas de fuente, pero asigna CLP donde los campos primarios «Tipo de Moneda» consultados están vacíos. Esa clasificación se reporta solo como metadato del artefacto, no como unidad comprobada de los formularios.

Los ejemplos anteriores transcriben los valores literales del campo «Valor Corriente en plazo o Valor Libro»; en las tres líneas de SONDA consultadas, el campo «Tipo de Moneda» está vacío.[1][2][3] El oro registra esos campos como `declared_value` y `value_clp`, y asigna `currency=CLP`; es una lectura del artefacto, no una moneda confirmada en las fuentes primarias.[consultas/rodrigo-delgadillo-sturla-sonda-versiones-20261008.sql] La bandera `implausible` es una señal técnica de revisión, no una verificación del valor subyacente.[consultas/rodrigo-delgadillo-sturla-sonda-versiones-20261008.sql] Las fuentes autodeclaradas no certifican tenencia actual, saldo, precio de mercado ni valor económico de los instrumentos.[1][2][3]

## Explicaciones posibles y límites

Las etiquetas documentales —rectificación voluntaria y rectificación a requerimiento— describen trámites distintos y pueden explicar que se publicaran más de una versión, pero no establecen la relación formal entre ambos documentos de junio.[1][2] La rectificación del 21-12-2022, también a requerimiento, coincide en la línea de SONDA con la rectificación voluntaria de junio; ese dato hace menos sostenible describir el valor distinto de la otra línea como una serie persistente, pero no prueba por sí solo cuál documento fue sustituido ni por qué.[1][2][3] Un error de ingreso, una diferencia en el contenido del trámite o una corrección posterior son posibilidades; las fuentes reabiertas no permiten escoger entre ellas.

No se afirma que el titular haya poseído realmente valores por los importes reportados, que las cifras constituyan riqueza efectiva, ni que exista una incompatibilidad o irregularidad. Tampoco se investigó una decisión concreta del Consejo de Concesiones vinculada a esos valores.

## Preguntas útiles para investigador/auditor

1. ¿Qué acto, antecedente o trámite dio origen a cada rectificación del 22-06-2022, y cuál dejó sin efecto o sustituyó a la otra?
2. ¿Los valores publicados en las líneas de acciones corresponden al campo exigido por el formulario y a la unidad monetaria declarada en cada documento?
3. ¿Existe una versión oficial posterior, anotación del expediente o respuesta institucional pública que aclare la diferencia?

## Matriz de afirmaciones

- **c1 — Identidad, fecha y tipo documental:** las tres declaraciones 876774, 876629 y 930821 identifican al mismo titular; las dos primeras datan del 22-06-2022 y la tercera del 21-12-2022. Sus tipos y la fecha/cargo se reabrieron en las fuentes oficiales citadas.[1][2][3]
- **c2 — Línea de acciones y moneda publicada:** las fuentes primarias muestran los datos de SONDA transcritos; 876774 y 930821 coinciden en cantidad y valor publicado, mientras 876629 difiere. El campo moneda está vacío en las tres fuentes; CLP es una lectura del artefacto, no una moneda confirmada por los formularios.[1][2][3]
- **c3 — Comparación reproducible:** una consulta focalizada compara la línea de SONDA entre los tres IDs sin sumar declaraciones distintas; los valores y flags del oro están explícitamente separados de los importes originales sin unidad.[consultas/rodrigo-delgadillo-sturla-sonda-versiones-20261008.sql]
- **c4 — Límite interpretativo:** documentos y artefacto acreditan lo publicado/registrado, no la realidad económica, la causa ni cuál rectificación prevaleció.[1][2][3]

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=876774
    > "RODRIGO ANDRÉS DELGADILLO STURLA"
    > "Cargo Consejero/A Consejo De Concesiones Subsecretaria De Obras Publicas"
    > "Fecha 22-06-2022 Tipo Rectificación Voluntaria"
    > "Nombre o Razón Social SONDA S.A. Cantidad / Porcentaje 9000 Tipo de Moneda Valor Corriente en plazo o Valor Libro 2.839.860"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=876629
    > "RODRIGO ANDRÉS DELGADILLO STURLA"
    > "Cargo Consejero/A Consejo De Concesiones Subsecretaria De Obras Publicas"
    > "Fecha 22-06-2022 Tipo Rectificación A Requerimiento De Órgano Fiscalizador"
    > "Nombre o Razón Social SONDA S.A. Cantidad / Porcentaje 4223340 Tipo de moneda Valor Corriente en plazo o Valor Libro 370.000.000.000"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=930821
    > "RODRIGO ANDRÉS DELGADILLO STURLA"
    > "Cargo Consejero/A Consejo De Concesiones Subsecretaria De Obras Publicas"
    > "Fecha 21-12-2022 Tipo Rectificación A Requerimiento De Órgano Fiscalizador"
    > "Nombre o Razón Social SONDA S.A. Cantidad / Porcentaje 9000 Tipo de Moneda Valor Corriente en plazo o Valor Libro 2.839.860"
