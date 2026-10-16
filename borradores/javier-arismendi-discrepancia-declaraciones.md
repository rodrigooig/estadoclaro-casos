# Dos declaraciones de la misma fecha registran valores distintos para las mismas participaciones

## Síntesis

En dos declaraciones de InfoProbidad fechadas el 30-09-2026 y atribuidas al mismo nombre completo, las mismas dos participaciones societarias aparecen en el campo «Valor Corriente en plazo o Valor Libro» con valores numéricos de 100.000.000 en una actualización periódica y de 1.000.000 en una rectificación voluntaria.[5][6] La comparación describe los registros publicados; no determina cuál valor debía prevalecer, qué documento reemplaza al otro ni el valor económico efectivo de las participaciones.

## Hechos documentados

Ambas páginas identifican al declarante como JAVIER IGNACIO ARISMENDI VALENZUELA, a la Municipalidad de Frutillar y el cargo de alcalde; las dos declaran fecha 30-09-2026, una como «Actualización Periódica (Septiembre)» y la otra como «Rectificación Voluntaria».[5][6]

Para MAQUINARIAS JAVIER ARISMENDI VALENZUELA EIRL, ambas muestran cantidad/porcentaje 100; el campo de valor publica 100.000.000 en la actualización y 1.000.000 en la rectificación.[5][6]

Para SOCIEDAD COMERCIAL ARISMENDI Y MICHILLANCA LIMITADA, ambas muestran cantidad/porcentaje 50; el campo de valor publica 100.000.000 en la actualización y 1.000.000 en la rectificación.[5][6]

En las dos páginas, el campo «Tipo de Moneda» de esas líneas aparece vacío; por eso este resumen conserva los valores tal como aparecen y no les asigna CLP ni otra unidad.[5][6]

## Comprobación reproducible

Las consultas `consultas/javier-arismendi-discrepancia-declaraciones-20261013-1.sql` y `...-2.sql` se ejecutaron mediante `ec-gold-sql` sobre `gold.duckdb`, corte `meta.build_date=2026-10-13T17:02:26+00:00`. La primera devuelve las cuatro líneas societarias esperadas, con el mismo nombre completo, fecha, tipo de participación, cantidad/porcentaje y RUT societario entre registros.[5][6] La segunda agrupa antes de comparar por identificador societario y tipo, y reproduce para cada sociedad los pares numéricos 100000000/1000000 y cantidades 50/100 o 100/50, respectivamente.[5][6] Aunque el oro devuelve `currency=CLP`, ese campo procesado no establece la moneda declarada en la fuente: en ambas páginas primarias, el campo «Tipo de Moneda» está vacío.[5][6] La comparación central conserva los valores tal como aparecen en las páginas y no les asigna CLP ni otra unidad.

## Alcance, alternativa y preguntas para auditoría

La fuente denomina al documento 1818514 «Rectificación Voluntaria» y al 1893910 «Actualización Periódica (Septiembre)»; las etiquetas visibles no indican qué campos corrige la rectificación ni si sustituye íntegramente al otro registro.[5][6]

Preguntas acotadas: ¿qué relación de presentación existe entre los documentos 1893910 y 1818514? ¿La rectificación fue aceptada como sustitución íntegra o solo corrigió ciertos campos? ¿Qué unidad correspondía a los valores, que en ambas líneas aparece sin especificar? La evidencia no permite afirmar error, causa, prevalencia, valor real, irregularidad ni intervención individual en una decisión pública.

## Sources

[5] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1818514 — InfoProbidad, declaración 1818514
    > "Valor Corriente en plazo o Valor Libro | 1.000.000"
    > "Nombre o Razón Social | MAQUINARIAS JAVIER ARISMENDI VALENZUELA EIRL"
    > "Nombre o Razón Social | SOCIEDAD COMERCIAL ARISMENDI Y MICHILLANCA LIMITADA"
    > "Tipo de Moneda |"
[6] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1893910 — InfoProbidad, declaración 1893910
    > "Valor Corriente en plazo o Valor Libro | 100.000.000"
    > "Nombre o Razón Social | MAQUINARIAS JAVIER ARISMENDI VALENZUELA EIRL"
    > "Nombre o Razón Social | SOCIEDAD COMERCIAL ARISMENDI Y MICHILLANCA LIMITADA"
    > "Tipo de Moneda |"
