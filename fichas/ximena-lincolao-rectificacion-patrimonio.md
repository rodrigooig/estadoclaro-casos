# Revisión editorial — rectificaciones patrimoniales de Ximena Fabiola Lincolao Pilquian

> **Ficha de investigación; no es un caso publicable ni una imputación.** Estado: **evidencia insuficiente; sin caso**. Última revisión: 2026-10-04 UTC. RUT personal no consultado ni reproducido.

## §0. Resultado ejecutivo

La pista nació en un cribado amplio de variaciones patrimoniales, pasivos, proveedores compartidos y actividades; la fila de Ximena Lincolao destacaba por un `delta_adjusted_uf` de 49.470,9 UF en la declaración del 20-07-2026. El oro registra cinco declaraciones entre el 10-04 y el 20-07-2026, y clasifica la variación de julio principalmente como revaluación (49.460,4 UF), no como adquisición (10,5 UF). 

El cotejo con declaraciones InfoProbidad del 26-05 y 20-07 muestra que las cantidades nominales en USD de PenFed, Wells Fargo y el inmueble de McLean ya figuraban antes y permanecen iguales en el documento más reciente; cambia su conversión a CLP/UF entre snapshots. La explicación legítima más plausible para gran parte del movimiento del panel es reexpresión de activos denominados en USD en fechas distintas, no una nueva adquisición de ese monto.[1][8]

**Discrepancia de cobertura a revisar:** la declaración primaria incluye una cuenta de ahorro Capital One por USD 400.000, mientras que la tabla `financial_asset` consultada en el oro devuelve solo los instrumentos de PenFed y Wells Fargo para cada una de las cinco declaraciones; esa cuenta no aparece en las filas de activos financieros de este artefacto.[1][8] La SQL de origen `sql/040_assets.sql:1-6,73-88` describe/crea cuatro tablas de activos (inmuebles, bienes muebles, sociedades e instrumentos financieros), sin una tabla de cuentas de ahorro. El extracto de Lincolao en `asset` suma nueve bienes en julio y no incluye esa cuenta.

Además, la declaración de julio registra BuildWithin, una entidad estadounidense, con cantidad 428.036 y valor 428.036 bajo «Valor Corriente en Plaza»; el extracto consultado no presenta una moneda en ese renglón. El artefacto trata 428.036 como CLP (10,48 UF), mientras la prensa atribuye al Ministerio la explicación de que se trata de US$ 428.036 nominales, no valor de mercado. Es una discrepancia material de unidad pendiente de cotejo, no una tasación ni una afirmación de que el valor correcto sea uno u otro.[1][4]

La declaración de julio es una rectificación «a requerimiento de órgano fiscalizador»; Interferencia informa que Contraloría le pidió precisar BuildWithin y recoge la explicación ministerial sobre el carácter nominal de la cifra.[1][7] No se obtuvo el oficio o comunicación original de Contraloría; la secuencia de rectificaciones, por sí sola, no permite calificar jurídicamente la conducta.

## 1. Identidad y evidencia en declaraciones

**Medido en EstadoClaro** contra `gold.duckdb`, corte `meta.build_date = 2026-10-02T15:43:07+00:00` (copia local indicada sin cambios). La consulta 1 devuelve cinco snapshots con coincidencia exacta del nombre completo; InfoProbidad identifica a Ximena Fabiola Lincolao Pilquian como ministra de Ciencia y registra su asunción el 11-03-2026.[2][6]

La declaración primaria de 26-05-2026 identifica USD 56.852.604 en cuotas de fondos mutuos PenFed, USD 1.238.185 en Wells Fargo y una cuenta de ahorro Capital One por USD 400.000.[8] La rectificación primaria del 20-07-2026 mantiene los valores declarados de PenFed y Wells Fargo, la propiedad de McLean por USD 2.030.270 y la cuenta Capital One por USD 400.000; incorpora formalmente BuildWithin con 428.036 unidades, adquiridas el 12-07-2021, en el campo «Valor Corriente en Plaza».[1]

El PDF de julio indica que fue presentado el 20-07-2026 y certificado por la Contraloría General el 01-09-2026; el archivo leído es una copia alojada por Interferencia, mientras que el resumen de InfoProbidad ID 1808441 enlaza nombre, cargo e institución.[1][2]

## 2. Variación reproducida y límites del artefacto

La consulta 1 reproduce el salto de 49.470,9129 UF en julio, con 49.460,4333 UF en `delta_revaluation_uf` y 10,4796 UF en adquisición; el nivel `confidence` es medium y la serie no presenta huecos. No interpreto el delta como patrimonio neto: el modelo mide activos declarados. `docs/metodologia/modelo-de-datos.md:79-100` explica esa limitación y que los valores en otra moneda se convierten antes de compararlos.

La consulta 2 compara los registros de activos del oro para el 26-05 y el 20-07: identifica montos fuente constantes en USD para PenFed, Wells Fargo y el inmueble en McLean, aunque sus `value_clp`/`value_uf` cambian; añade BuildWithin como compañía en CLP 428.036 (10,48 UF). La explicación ministerial reportada por El Periodista dice que el valor nominal de BuildWithin sería USD 428.036, y el campo de la declaración no explicita moneda; no resuelvo la discordancia. Por ello, ni ese registro ni el delta agregado respaldan una cifra de nueva riqueza sin aclarar unidades.[1][4]

La consulta 3 muestra dos instrumentos financieros (PenFed y Wells Fargo) por declaración, en cinco fechas; Capital One no aparece en `financial_asset`. La comparación con las declaraciones originales de abril y mayo confirma que la cuenta ya estaba consignada junto con ambos instrumentos en el origen. Esto indica que no debe leerse el total de activos de EstadoClaro como un inventario exhaustivo de esa declaración sin aclarar el alcance de las cuentas de ahorro.[9]

La consulta 4 une compañías y actividades, por lo que multiplica filas cuando coexisten tres actividades reservadas; no se usa para contar sociedades o estimar patrimonio. Solo confirma que el oro incorpora Innova Nehuén SpA en snapshots de mayo y registra BuildWithin e Innova Nehuén en julio; los campos de actividad aparecen reservados. No infiero vigencia de la participación ni atribuyo su situación a partir de esa unión.

## 3. Rutas independientes examinadas (2026-10-04)

1. **Cribado amplio del oro.** Revisé candidatos por compras al mismo organismo, pasivos declarados, outliers, grandes variaciones ajustadas, nuevas/adjudicadas participaciones societarias y actividades remuneradas recientes. Los principales resultados de compras eran valores ampliamente transados o pistas ya presentes en el índice; el filtro de actividades remuneradas de los últimos doce meses devolvió cero en el universo consultado, por lo que no se interpretó como ausencia general. Las filas de pasivos más altos coincidían con leads ya indexados o montos con advertencias de interpretación. La pasada seleccionó esta secuencia de rectificaciones para comprobar un cambio patrimonial llamativo, no para presumir conducta irregular.
2. **Serie longitudinal de panel.** Consulta 1 escrita para esta pista y ejecutada con `ec-gold-sql`; reproduce cinco fechas, nivel de confianza, delta descompuesto, conteo de bienes y brechas. La serie del artefacto no tiene huecos, pero es un derivado, no una fuente independiente del documento original.
3. **Detalle de bienes en el oro.** Consulta 2 contrasta rectificaciones de mayo y julio por categoría, llave, moneda y monto. Consulta 3 interroga la tabla canónica `financial_asset` por separado. La tabla confirma los activos financieros que sí contiene y, estrechamente, que no devuelve Capital One para estos snapshots.
4. **Origen de identidad y declaración.** Consulté InfoProbidad por los IDs 1755014, 1795599 y 1808441; cotejé los resúmenes del portal con la declaración extensa en PDF alojada por Interferencia. Los documentos muestran nombre/cargo, rectificaciones, activos USD y cuenta de ahorro.[1][2][8]
5. **Contraste periodístico y explicación alternativa.** Diario Financiero (13-04-2026) describe los activos en el extranjero y la cuenta Capital One; Mala Espina (14-04-2026) también indica que la cuenta es USD 400.000 y sitúa las inversiones y propiedades en Estados Unidos.[3][5] Interferencia (27-09-2026) y El Periodista (27-09-2026) reportan el requerimiento de Contraloría y la explicación ministerial sobre el carácter nominal de BuildWithin; son fuentes secundarias para ese intercambio, no el acto fiscalizador primario.[4][7]
6. **Contexto oficial y contraste adverso.** La ficha institucional de MinCiencia confirma identidad, cargo y trayectoria empresarial en Estados Unidos, contexto compatible con inversiones anteriores a la función ministerial; no acredita origen, valor de mercado o titularidad económica auditada de cada activo.[6] El extracto en línea de julio marca «NO» en el campo de control de BuildWithin; Interferencia, en cambio, reporta que fue declarada como controladora. Dejo la discrepancia expresamente abierta porque las fuentes consultadas se contradicen sobre ese campo.[1][7]
7. **Deduplicación.** Búsqueda exacta por nombre completo y variante “Lincolao” en `INDICE.md`, 24 fichas disponibles y el contenido de `estadoclaro-casos` no encontró ficha o caso previo con esta huella al 04-10-2026. No se atribuyen resultados de homónimos.

## 4. Mapa de afirmaciones, alternativas y límites

- **Hecho que se quería probar:** aumento patrimonial reciente de gran magnitud. **Fuente primaria necesaria:** declaraciones sucesivas. **Resultado:** la variación del panel se concentra en revaluación de USD convertidos; los valores nominales de los instrumentos y la vivienda ya aparecen en mayo. El indicador no prueba por sí mismo ingreso, adquisición o aumento económico real.[1][8]
- **Hecho de cobertura:** una cuenta de ahorro de USD 400.000 figura en las declaraciones de abril, mayo y julio, pero no aparece en las filas de `financial_asset` consultadas. `sql/040_assets.sql` no crea una tabla para esa sección; es una diferencia de alcance/modelado por verificar, no una conclusión sobre omisión de la declarante.[1][8][9]
- **Explicación legítima más plausible:** los activos USD existían en fechas anteriores según las declaraciones y el valor CLP/UF del artefacto cambia por conversión y fecha; esta alternativa es compatible con la magnitud y composición del delta.[1][8]
- **Hipótesis contraria examinada:** un nuevo activo real de ~49.471 UF en julio. La única nueva línea incorporada en `asset` que aparece en el comparativo es BuildWithin, y su valor modelado es 10,48 UF; la fuente periodística dice que el monto nominal informado no es tasación de mercado.[1][4]
- **Límites pendientes:** no accedí a resolución o comunicación original de Contraloría, ni a estados de cuenta o tasaciones independientes. No se buscó información privada ni se contactó a persona alguna; no se eludieron accesos. Los valores son autodeclarados y no están auditados por el análisis.

## 5. Gate editorial y decisión

- Identidad: **sí**, nombre completo y cargo en InfoProbidad; sin atribución por homonimia.[1][2]
- Hecho material reproducible y fuente primaria: **parcial**. La declaración y el delta del panel son reproducibles, pero la comparación muestra que el delta no es evidencia de crecimiento económico; además hay diferencia entre las cuentas de ahorro declaradas y las tablas modeladas.[1][8]
- Relevancia pública explicable: **sí**, la integridad/completitud de un dato patrimonial publicado sobre una ministra merece aclaración metodológica; no habilita una conclusión sobre probidad personal.
- Error de dato/cruce/heurística: **no descartado** para cifras agregadas, porque el panel refleja conversión monetaria y el esquema no incorpora la cuenta de ahorro en `financial_asset`.
- Explicación legítima: **buscada y documentada**; los principales activos USD ya estaban en snapshots anteriores y la explicación ministerial sobre BuildWithin fue recogida por dos medios.[1][4][7]

**No pasa el gate para borrador de caso.** Próxima acción: revisión interna de alcance de `financial_asset`/`composition` frente a la sección «Cuentas de Ahorro» en la declaración; luego confirmar con el dueño del modelo si se excluye deliberadamente o si hay un dato no ingerido. Para describir el requerimiento fiscalizador como hecho primario, localizar el oficio/resolución de Contraloría por el ID 1808441 o el folio 173810/2026. No repetir las búsquedas generales mientras no haya una fuente nueva. No es una solicitud de publicar ni una gestión ante terceros.

## Sources

[1] https://interferencia.cl/sites/default/files/dip_ximena_lincolao.pdf — InfoProbidad DIP de Ximena Lincolao, rectificación 20-07-2026 (copia publicada por Interferencia)
    > "Tipo de Declaración RECTIFICACIÓN A REQUERIMIENTO DE ÓRGANO FISCALIZADOR"
    > "Cantidad / Porcentaje 428036. Fecha Adquisición 12/07/2021."
    > "Tipo Moneda USD. Monto 400000."
    > "Valor Corriente en Plaza 2.030.270. Porcentaje que posee 100. Tipo Moneda USD."
    > "Artículo 99° de la Ley N° 18.045) NO"
    > "CUENTAS Y/O LIBRETAS DE AHORRO. Razón Social CAPITAL ONE. País ESTADOS UNIDOS DE AMERICA. Fecha Adquisición 10/03/2020. Tipo Moneda USD. Monto 400000."
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1808441 — InfoProbidad declaración 1808441
    > "Asume el cargo: 11-03-2026."
[3] https://www.df.cl/df-lab/tech-empresas/ministra-lincolao-declaro-tener-un-fondo-mutuo-por-casi-us-57-millones-en — Diario Financiero, declaración patrimonial y activos en EE.UU.
    > "cuotas de fondos mutuos por US$ 56,8 millones en la cooperativa de crédito federal Pentagon Federal Credit Union (PenFed). A ello se suma una cuenta de ahorro por US$ 400 mil en Capital One."
[4] https://www.elperiodista.cl/2026/09/contraloria-exigio-a-ministra-lincolao-corregir-declaracion-patrimonial-e-informar-valor-de-su-participacion-en-startup — El Periodista, rectificación exigida por Contraloría y participación en BuildWithin
    > "El Ministerio de Ciencia explicó a Interferencia que los US$428.036 consignados corresponden al monto nominal de esa participación y no a una valorización de mercado de BuildWithin."
[5] https://www.malaespinacheck.cl/politica/2026/04/14/el-patrimonio-de-ximena-lincolao-inversiones-por-mas-de-us58-millones-y-propiedad-por-us2-millones-en-ee-uu — Mala Espina, revisión de declaración de patrimonio
    > "ya se encuentra disponible a través de transparencia activa en el sitio web de su ministerio."
    > "La ministra mantiene una cuenta de ahorro en Capital One por US$400.000, también en Estados Unidos."
[6] https://minciencia.gob.cl/el-ministerio/autoridades — Ministerio de Ciencia, ficha oficial de autoridades
    > "Ministra de Ciencia, Tecnología, Conocimiento e Innovación"
[7] https://interferencia.cl/articulos/ministra-lincolao-rectifico-su-declaracion-de-patrimonio-otra-vez — Interferencia, rectificación patrimonial de julio 2026
    > "En julio, la ministra de Ciencia, Tecnología, Conocimiento e Innovación, Ximena Lincolao, presentó su quinta declaración de patrimonio en cuatro meses. Esta vez no fue voluntaria: la Contraloría General de la República se lo exigió."
    > "declarando como controladora."
[8] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1795599 — InfoProbidad declaración 1795599, rectificación voluntaria 26-05-2026
    > "| Nombre o Razón Social del emisor | CAPITAL ONE |"
    > "| Monto | 400.000 |"
    > "| Tipo de moneda | USD |"
    > "| Valor corriente en plaza | 1.238.185 |"
    > "| Valor corriente en plaza | 56.852.604 |"
[9] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1755014 — InfoProbidad declaración 1755014, primera declaración 10-04-2026
    > "| Tipo | Primera Declaración (Por Asunción De Cargo) |"
    > "| Cantidad que representa | 56852604 |"
    > "| Monto | 400.000 |"
