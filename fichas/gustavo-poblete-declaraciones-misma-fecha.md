# Tres declaraciones de Gustavo Poblete con diferencias en líneas de inmueble

| Campo | Registro |
|---|---|
| ID | `gustavo-poblete-declaraciones-misma-fecha` |
| Producto | triage; no es caso ni atribución de irregularidad |
| Estado | evidencia insuficiente |
| Pregunta | ¿Las declaraciones 1725592, 1730106 y 1730700 corresponden al mismo inmueble descrito de manera distinta o a más de un derecho/bien? |
| Corte gold | `meta.build_date=2026-10-09T16:06:27+00:00`; consulta solo con `ec-gold-sql` |

Las tres páginas primarias identifican por nombre completo a GUSTAVO POBLETE BUSTAMANTE y muestran fecha 30-03-2026 y tipo «Actualización Periódica (Marzo)».[1][2][3]

En 1725592 aparece una línea «PLENA PROPIEDAD» con avalúo fiscal CLP 297.015.944; en 1730106 y 1730700 aparecen dos líneas cada una, «PLENA PROPIEDAD» y «COMUNIDAD», ambas con ese mismo avalúo.[1][2][3]

Las primarias reservan dirección, número de inscripción y rol de avalúo; por ello no se puede determinar si las líneas corresponden al mismo inmueble.[1][2][3]

| Consulta | Resultado medido |
|---|---|
| `consultas/gustavo-poblete-declaraciones-misma-fecha-20261010.sql` | `ec-gold-sql --max-rows 100`: 5 filas; 1 para 1725592 y 2 para cada una de 1730106/1730700. Panel: CLP 297.015.944 vs. CLP 594.031.888. |
| `consultas/gustavo-poblete-declaraciones-misma-fecha-resumen-inmuebles-20261010.sql` | SQL independiente agrupado: 1/CLP 297.015.944 para 1725592; 2/CLP 594.031.888 para cada una de las otras dos, con tipos COMUNIDAD y PLENA PROPIEDAD. |
| Deduplicación | Sin coincidencia en el índice público de casos ni ficha previa de la bitácora local; el cribado no representa el universo. |
| Alternativas | Podrían ser derechos distintos o entradas del mismo inmueble; avalúo y fecha de adquisición iguales no prueban identidad. |

La comparación documental es reproducible, pero no establece identidad registral ni una pregunta pública suficientemente definida; mantener **evidencia insuficiente** y no redactar caso. Reabrir solo ante identificador registral público, copia oficial que lo exponga o historial/rectificación que explique las líneas; no inferir patrimonio duplicado ni error de la persona.[1][2][3]

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1725592
    > "Forma de propiedad | PLENA PROPIEDAD"
    > "Declaración completa de GUSTAVO POBLETE BUSTAMANTE"
    > "| Fecha | 30-03-2026 |"
    > "| Avalúo Fiscal | $ 297.015.944 |"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1730106
    > "Forma de propiedad | COMUNIDAD"
    > "| Avalúo Fiscal | $ 297.015.944 |"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1730700
    > "Forma de propiedad | COMUNIDAD"
    > "| Avalúo Fiscal | $ 297.015.944 |"
