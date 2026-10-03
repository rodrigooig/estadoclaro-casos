# Gabriela Isis Juliet Varela Ledermann — aumento de pasivos declarados, sin verificación independiente

- **ID:** `gabriela-varela-ledermann-pasivos`
- **Categoría:** patrimonio y pasivos.
- **Estado:** evidencia insuficiente; sin borrador de caso.
- **Fecha de trabajo:** 2026-10-03.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; consultas de solo lectura con `ec-gold-sql` el 2026-10-03.
- **Identidad:** coincidencia exacta del nombre completo entre la declaración primaria de InfoProbidad y `declarant.full_name`; la ficha consultada consigna Poder Judicial y cargo de juez.[1][2]

## Resultado y mapa de afirmaciones

InfoProbidad publica para la declaración de 31-03-2026 un total de pasivos de CLP 6.872.029.475; en la declaración de 28-03-2025 publica CLP 408.965.623.[1][2] La comparación de las dos instantáneas equivale a 16,80 veces según la consulta guardada; es una diferencia entre montos declarados, no una verificación de saldos con acreedores.[1][2]

El oro de corte 2026-10-02 reproduce ambos totales y, para 2026, 14 filas de pasivos que suman exactamente CLP 6.872.029.475; cinco están clasificadas como créditos hipotecarios a Banco Santander, por CLP 6.777.076.572 en conjunto. La serie local registra 18 filas de pasivos en 2025, total CLP 408.965.623, y cuatro inmuebles en ambas declaraciones. Estos son resultados reproducibles del artefacto, no corroboración independiente de deuda efectiva ni de garantías específicas (consultas guardadas 1–3).

La página pública de 2026 que se pudo extraer muestra el nombre, organismo, cargo y total global, pero no expuso en el texto recuperado los catorce detalles individualizados. Por tanto, el desglose de 2026 queda sustentado aquí por el oro, no por una lectura completa e independiente del formulario original.[1]

**Interés público posible:** cambió sustancialmente el total de pasivos autodeclarados entre dos declaraciones anuales de una jueza; no hay evidencia revisada que permita afirmar cuál era el saldo real ni por qué cambió.[1][2]

## Rutas revisadas y alcance (2026-10-03)

1. **Minería patrimonial del oro:** ranking de declaraciones corrientes con pasivos superiores a activos priorizó esta ficha; el ranking fue una herramienta de descubrimiento, no evidencia del saldo.
2. **Serie temporal y deduplicación:** consulta guardada `gabriela-varela-ledermann-pasivos-serie.sql` agrupa por declaración y usa agregados escalares separados para evitar multiplicación de filas. Devuelve diez documentos entre 2020 y 2026; los totales globales coinciden con el detalle agregado en cada corte. La comparación 2025/2026 y su cociente se guardan en consulta 3.
3. **Detalle por tipo de pasivo:** consulta 1 devuelve 14 filas para el documento 2026: cinco créditos hipotecarios Santander y nueve obligaciones de consumo, tarjetas y línea de crédito. El origen y unidad se mantienen como salen del artefacto; no se reinterpretan ni convierten en una afirmación bancaria.
4. **Fuentes oficiales de declaración:** InfoProbidad 5114130 (31-03-2026) publica el nombre completo, Poder Judicial, cargo juez y total de pasivos CLP 6.872.029.475; InfoProbidad 5097862 (28-03-2025) publica el mismo nombre completo y total CLP 408.965.623.[1][2] El portal de InfoTransparencia se consultó como alternativa institucional; su texto extraído solo presentó encabezados de pasivos y una explicación general de su plataforma, sin exponer datos del perfil ni una corroboración independiente.
5. **Búsqueda exacta/contraria:** consultas web por nombre completo con cargo/Chile, nombre con “hipoteca”, número de declaración 5114130 y búsqueda dirigida a InfoProbidad no localizaron una fuente independiente que explique el cambio; los resultados por el número fueron irrelevantes o ajenos. Es un resultado limitado de esas búsquedas, no prueba de inexistencia de más documentación.
6. **Portal institucional alternativo:** se buscó en dominios del Poder Judicial por el nombre y variaciones; los resultados recuperados no identificaron a la persona ni explicaron sus pasivos. El portal público del Poder Judicial activó una comprobación anti-automatización en una ruta de búsqueda; no se intentó sortearla.
7. **Deduplicación editorial:** el nombre completo no aparece en las fichas existentes de investigación ni en los casos públicos revisados. No se asocia a resultados de homónimos.

## Explicaciones plausibles, límites y decisión

Una explicación legítima compatible con el tipo de registros sería la contratación, refinanciamiento o consolidación de créditos hipotecarios y otras obligaciones; el artefacto clasifica cinco filas hipotecarias a Santander, pero no relaciona cada crédito con uno de los inmuebles declarados ni documenta el origen del aumento. Un error de transcripción/actualización también sigue siendo posible. No hay evidencia obtenida que permita elegir entre esas alternativas.[1]

**Decisión: evidencia insuficiente; no preparar borrador.** La identidad y los dos totales publicados se corroboran en InfoProbidad, y la serie y el detalle agregado se reproducen en el oro. No se obtuvo confirmación independiente de acreedores, saldo efectivo, destino de créditos o garantía; la página recuperada de 2026 no mostró el detalle completo. No se afirma enriquecimiento, irregularidad, infracción ni monto bancario verificado.[1][2]

**Reapertura:** solo con evidencia pública nueva que permita revisar el detalle original completo de 2026 o una rectificación, y distinguir montos declarados de saldos/garantías confirmados. No repetir las búsquedas exactas de esta corrida sin un documento, índice o identificador nuevo; después de esta pasada, rotar a otra pista abierta.

## Consultas reproducibles

- [`consultas/gabriela-varela-ledermann-pasivos-serie.sql`](../consultas/gabriela-varela-ledermann-pasivos-serie.sql): diez declaraciones, total global contra sumas de detalle, con agregados independientes por declaración.
- [`consultas/gabriela-varela-ledermann-pasivos.sql`](../consultas/gabriela-varela-ledermann-pasivos.sql): detalle individual de pasivos en 2026. Para ejecutar el segundo `SELECT` por separado, usar el archivo tal cual con `ec-gold-sql` (la salida muestra el resultado de detalle); no derivar saldos bancarios.
- [`consultas/gabriela-varela-ledermann-pasivos-comparacion.sql`](../consultas/gabriela-varela-ledermann-pasivos-comparacion.sql): cociente 2026/2025 redondeado a dos decimales.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5114130 — InfoProbidad, declaración 5114130
    > "Pasivos Si posee Total $ 6.872.029.475"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5097862 — InfoProbidad, declaración 5097862
    > "Total $ 408.965.623"
