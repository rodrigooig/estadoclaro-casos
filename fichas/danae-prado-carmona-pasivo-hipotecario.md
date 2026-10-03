# Una variación muy alta de pasivo hipotecario declarado — Danae Prado Carmona

- **ID:** `danae-prado-carmona-pasivo-hipotecario`
- **Categoría / estado:** patrimonio y pasivos · evidencia insuficiente; no redactar caso.
- **Fecha de trabajo:** 2026-10-03.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; sin cambios desde la sincronización.
- **Identidad:** la declaración fuente 1745780 identifica a DANAE NATALIA PRADO CARMONA como consejera regional del Gobierno Regional Metropolitano de Santiago. La ficha institucional del CORE coincide con el nombre y cargo.[27][31]

## Resultado y mapa de afirmaciones

La declaración de actualización periódica fechada 31-03-2026 informa una obligación tipo «CRÉDITO HIPOTECARIO», acreedor Banco Santander, con monto adeudado CLP 39.668.996.400 y global de pasivos CLP 39.674.996.400.[27] Esto acredita lo declarado en la página oficial, no el saldo que llevaba el banco ni que la obligación tenga ese monto efectivo.

En la actualización del 30-03-2025 el pasivo hipotecario consignado fue CLP 231.188.715.[28] Dos rectificaciones requeridas por órgano fiscalizador, ambas fechadas 30-03-2026, vuelven a mostrar CLP 231.188.715; la actualización periódica del día siguiente muestra CLP 39.668.996.400.[29][30][27]

La consulta guardada [`consultas/danae-prado-carmona-pasivo-1.sql`](../consultas/danae-prado-carmona-pasivo-1.sql) reproduce nueve declaraciones con este nombre completo entre marzo de 2024 y marzo de 2026; los cargos/instituciones y URI de origen están allí.[27][28] En el panel, la deuda figura en 5.944,82 UF en marzo de 2025, 5.802,68 UF en las dos rectificaciones del 30-03-2026 y 995.664,76 UF en la actualización del 31-03-2026; son UF nominales para cada fecha, no una actualización a una misma fecha.[28][29][30] Al comparar esas unidades, el valor del último día equivale a 171,59 veces el de la rectificación del día anterior y 167,48 veces el de la actualización de 2025.[27][28][29] La consulta independiente [`consultas/danae-prado-carmona-pasivo-2.sql`](../consultas/danae-prado-carmona-pasivo-2.sql) lee `liability` y reproduce la moneda, categoría y acreedor reportados; las dos rectificaciones son declaraciones distintas y no se suman como deudas separadas.[29][30] Las consultas 1 y 2 muestran importes reportados en CLP y no reinterpretan instrumentos de moneda extranjera.[27][28][29]

El oro registra para el 31-03-2026 activos CLP 103.141.568, todos atribuidos por la tabla de inmuebles a un inmueble residencial en Macul; la declaración de origen informa avalúo fiscal CLP 103.141.568 y 50% de propiedad.[27] La consulta [`consultas/danae-prado-carmona-pasivo-3.sql`](../consultas/danae-prado-carmona-pasivo-3.sql) separa esta fila inmobiliaria para no multiplicarla al cruzar con pasivos.[27][28] El vínculo entre ese inmueble y la deuda no se prueba más allá de que aparecen en la misma declaración.[27]

## Rutas examinadas y contraste (2026-10-03)

1. **Minería inicial del oro:** Danae Prado apareció en una consulta priorizada de pasivos CLP; no se toma el ranking por monto como hallazgo confirmado.[27]
2. **Serie y conversión temporal:** consulta 1 del panel devuelve fechas, tipos, institución/posición, CLP, UF nominales, URI y `has_outlier=false` para nueve declaraciones entre 2024 y 2026.[27][28] Ese indicador del pipeline no certifica el saldo bancario.
3. **Cotejo de detalle:** consulta 2 lee `liability` y reproduce tipo, moneda CLP y acreedor; consulta 3 separa las filas del inmueble de Macul para no duplicarlas al cruzar tablas.[27][28][29]
4. **Fuente primaria e identidad:** InfoProbidad IDs 1398572, 1729357, 1722006 y 1745780 muestran el nombre completo, el Gobierno Regional Metropolitano de Santiago y el cargo de consejera regional.[27][28][29] Las fechas y rectificaciones ayudan a identificar la serie de la misma declarante, pero no verifican un saldo bancario.[30]
5. **Búsqueda abierta exacta y explicación alternativa:** el 03-10-2026 se consultaron las frases exactas `"39.668.996.400" Danae Prado Carmona` y `"39.668.996.400" "Banco Santander" Chile deuda hipotecaria`, además del nombre con «crédito hipotecario» y «declaración patrimonio». Los resultados devueltos fueron ajenos o generales y no corroboraron el pasivo; esto describe solo esos resultados, no demuestra que no exista otra fuente. Se leyó el perfil institucional del CORE, que confirma nombre/cargo/circunscripción pero no informa préstamos.[31]
6. **Contraste plausible:** una obligación hipotecaria real, refinanciamiento, coobligación o garantía podrían explicar una cifra alta sin probar que sea saldo personal; son hipótesis no confirmadas.[27] La declaración lista un inmueble residencial y un acreedor, pero no enlaza expresamente el crédito a una inscripción específica ni entrega estado de cuenta bancario.
7. **Deduplicación:** se cotejó el nombre completo en el índice y las fichas de investigación existentes el 03-10-2026, sin coincidencia previa para esta huella. No se atribuye a homónimos; no se contactó a la declarante, al banco o a organismos.

## Decisión y condición para reabrir

**Evidencia insuficiente; no preparar borrador.** La cifra grande está publicada en la declaración original y reproducida por el oro; la diferencia entre el valor del 31-03-2026 y el de la declaración/rectificaciones previas es reproducible tras comparar UF, pero no existe verificación independiente del saldo efectivo, origen o alcance del crédito. La propiedad declarada al 50% no permite inferir quién debe qué ni el origen de la diferencia.[27][28]

La relevancia pública posible es la integridad de una declaración de pasivos de una autoridad regional electa, no una conclusión sobre falsedad, patrimonio real o infracción. Reabrir únicamente ante rectificación pública, documento oficial verificable sobre el préstamo o fuente pública que explique el salto; mientras tanto, describir solo lo declarado y fechado, sin atribuir saldo efectivo.

## Sources

[27] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1745780
    > "Monto adeudado en pesos | $ 39.668.996.400"
    > "Avalúo Fiscal | $ 103.141.568"
    > "| Fecha | 31-03-2026 |"
    > "#### Monto global en pesos $ 39.674.996.400"
    > "| Monto adeudado en pesos | $ 39.668.996.400 |"
    > "| Avalúo Fiscal | $ 103.141.568 |"
[28] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1398572
    > "Monto adeudado en pesos | $ 231.188.715"
[29] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1729357
    > "Monto adeudado en pesos | $ 231.188.715"
[30] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1722006
    > "Monto adeudado en pesos | $ 231.188.715"
[31] https://coresantiago.cl/consejeros/danae-prado-carmona
    > "Soy Consejera Regional Metropolitana y represento a las comunas de la Circunscripción Santiago V: La Florida, Macul, San Joaquín, La Granja y Peñalolén."
