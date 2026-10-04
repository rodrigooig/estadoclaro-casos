# Rodrigo Galilea Vial: valoración declarada de Vientos del Sur

- ID: `rodrigo-galilea-vientos-del-sur`
- Estado: `evidencia insuficiente` (2026-10-04). Cribado exploratorio; no es acusación ni borrador de caso.
- Corte: `gold.duckdb`, `meta.build_date=2026-10-02T15:43:07+00:00`; consulta 2026-10-04 mediante `ec-gold-sql`.
- Identidad: el nombre completo coincide en los registros del oro y en la declaración InfoProbidad ID 1193262; esta identifica al declarante como senador.[4] Los resultados pertenecen al mismo nombre completo y cargo, no se atribuyen por homonimia. Se omite el RUT personal.

## Mapa de afirmaciones

**Qué muestran los registros medidos.**

La consulta reproducible `consultas/rodrigo-galilea-vientos-del-sur-1.sql` devuelve para Vientos del Sur (RUT societario 96.832.090-4) una participación declarada de 99,82% y CLP 95.513.462.301 en la declaración senatorial de abril de 2024; CLP 12.039.559.213 en la actualización de marzo de 2025 y su rectificación del 9 de abril; y CLP 134.282.468.902 en la actualización de marzo de 2026 y en la rectificación senatorial del 4 de mayo de 2026.[1][3][4]

La declaración fuente de 2024 expone nombre de sociedad, porcentaje, valor libro y calidad de controlador; InfoProbidad tiene una advertencia explícita de que su resumen no considera patrimonio de empresas controladas y remite a la declaración completa.[4][18]

En el panel del oro, la declaración senatorial de 2026 suma CLP 380.538.216.429 de activos y CLP 246.255.747.527 con bienes implausibles excluidos; lleva `has_outlier=true`, `confidence=low`, y registra 19 sociedades. La segunda consulta desglosa 19 filas empresariales, una sola marcada `implausible`; esa fila es Vientos del Sur, con lectura local en CLP, no una lectura extranjera reconvertida.[1] Son cifras declaradas/procesadas, no una tasación independiente ni patrimonio líquido.

Las declaraciones de Senado y Renovación Nacional del 4 de mayo comparten fecha e importes pero son IDs y registros distintos; para el cotejo principal se usó solo la declaración del Senado ID 1791249, no se sumaron snapshots duplicados.[1]

## Rutas examinadas (2026-10-04)

1. **Serie directa del oro:** `ec-gold-sql consultas/rodrigo-galilea-vientos-del-sur-1.sql`; 20 registros de la serie, con las dos declaraciones de 2026 y los valores 2024–2025 indicados. La consulta usa el RUT societario de Vientos y conserva IDs, fecha, institución, título, moneda y marca de implausibilidad.[1][3][4]
2. **Descomposición independiente del panel:** `ec-gold-sql consultas/rodrigo-galilea-vientos-del-sur-2.sql`; el snapshot senatorial devuelve 19 sociedades; CLP 327.277.676.526 en filas empresariales, una implausible. El panel total y el ajustado difieren porque el valor señalado se excluye del ajustado; esto no identifica por sí solo error en el formulario.[1]
3. **Declaración primaria accesible de contraste:** InfoProbidad ID 1193262 (2024) mostró la participación del 99,8233%, CLP 95.513.462.301 y controlador; la misma página incluye datos del declarante y cargo senatorial.[4]
4. **Declaración histórica completa:** una copia PDF de la declaración 2018 alojada por El Mostrador reproduce la página InfoProbidad de ese período; muestra que Vientos ya era una participación controladora y que el resumen omitía las sociedades controladas.[18] Es copia secundaria de un registro primario anterior, no prueba del valor en 2026.
5. **Pasada alternativa por fuente primaria 2026:** se consultaron los IDs 1791249 y 1779858 mediante web_extract y la página pública de InfoProbidad en navegador; ambos mostraron «Declaración no disponible».[1][2] No se eludieron controles. El sitio cataloga datasets CSV y un endpoint SPARQL como fuentes abiertas; las cuatro descargas públicas ensayadas (declaraciones JSON/SPARQL y acciones-derechos JSON/SPARQL) agotaron el tiempo de espera en los extractores; no se descargó ni se pudo cotejar ese dataset.[22]
6. **Explicación corporativa / contraste secundario:** una nota de La Tercera de 2021 describió Vientos del Sur como matriz de negocios y consignó un valor libro de CLP 81.123 millones; otra reportó después fideicomiso de cartera y su rendición. Aportan contexto para entender que el valor puede variar por activos societarios/financieros, pero no validan el monto 2026 ni su origen.[5][7]
7. **Vínculo sectorial y refutación de inferencia funcional:** el Senado registró que Galilea presentó indicaciones de redacción en un proyecto de escasez hídrica en abril de 2024.[19] El Mostrador reportó en 2023 una relación empresarial histórica de Vientos con sociedades de agua y publicó la explicación del propio senador de que su familia participó en ciertas ventas y él no directamente.[6] La combinación sugiere una pregunta posible sobre temporalidad y alcance de intereses, pero no acredita que una sociedad actualmente declarada estuviera involucrada en una decisión en que él intervino ni demuestra efecto particular.
8. **Deduplicación y prensa previa:** la búsqueda por nombre completo en las fichas del índice y los ficheros de casos no encontró coincidencia. Las notas sobre IVA/construcción, fideicomiso y sociedades panameñas se consultaron como pistas, no como prueba primaria del valor actual.[5][7][8]

## Alternativas, límites y decisión

La explicación legítima más plausible es que Vientos del Sur sea una sociedad de inversión cuyo valor declarado en libros refleja una cartera corporativa y puede cambiar entre snapshots. La nota periodística de 2021 informó un valor libro de CLP 81.123 millones y la declaración de 2024 lo registra en CLP 95.513 millones.[4][5][18] Sin estados financieros primarios contemporáneos, no se puede atribuir el salto de 2025 a 2026 a una adquisición, rectificación contable, cambio de método, error de digitación o valor de mercado. La declaración de 2026 que resolvería el detalle no estuvo disponible por la ruta pública probada.[1][22]

El test de moneda no muestra que el monto de Vientos venga de reconvertir USD u otra moneda: el oro marca `currency_reading=local` y `value_clp_alternative` vacío.[1] Esto descarta únicamente ese tipo de error en la fila del artefacto, no valida el valor declarado. La bandera `implausible` describe umbral del modelo y no es un juicio sobre la empresa o su titular.[1]

La noticia institucional del Senado sobre una intervención legislativa en materia hídrica, junto con la cobertura secundaria de antiguas sociedades sanitarias, no basta para construir una relación funcional verificable. Haría falta cotejar la declaración completa vigente, estados financieros/auditoría que expliquen el valor de Vientos y antecedentes primarios de propiedad y vigencia de las compañías de agua; para un caso funcional, además, un acto legislativo o administrativo concreto que enlace una sociedad identificada con una intervención del titular.[6][19]

**Decisión:** `evidencia insuficiente`. No preparar caso ni sostener como hecho el valor de CLP 134.282.468.902 fuera de la caracterización de monto declarado que devuelve el artefacto. La pista no cruza el gate editorial: falta cotejo público de la declaración 2026 completa, evidencia contable primaria, y vínculo concreto entre interés y función. Próximo paso: retomar solo si el PDF o exportación pública oficial de la declaración 1791249/1791283 se vuelve accesible, o aparece un estado financiero primario verificable; revisar el dato y repetir la consulta guardada. Sin revisor humano independiente en esta corrida.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1791249 — InfoProbidad declaración ID 1791249
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1779858
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1393035
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1193262
[5] https://www.latercera.com/pulso-pm/noticia/los-negocios-del-senador-que-reclamo-en-broma-por-el-fin-del-iva-a-la-construccion/7LXBIXMDGBH35OASAG6NR4VAUA
[6] https://www.elmostrador.cl/noticias/sin-editar/2023/03/02/el-millonario-negocio-sanitario-que-convirtio-al-senador-galilea-rn-y-su-familia-en-socios-de-poderoso-consorcio-saudi
[7] https://www.latercera.com/pulso/noticia/los-dineros-del-fideicomiso-que-rodrigo-galilea-encomendo-a-picton
[8] https://interferencia.cl/articulos/vientos-del-sur-ii-la-sa-en-panama-que-el-senador-galilea-no-declaro-ante-contraloria
[18] https://media-front.elmostrador.cl/2020/08/Declaracion-InfoProbidad-Galilea.pdf
[19] https://www.senado.cl/comunicaciones/noticias/despachan-proyecto-que-agiliza-decretos-en-zonas-de-escasez-hidrica
[22] https://www.infoprobidad.cl/DatosAbiertos/DatosAbiertos
