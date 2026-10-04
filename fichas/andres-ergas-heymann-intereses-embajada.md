# Andrés Fernando Ergas Heymann: intereses declarados y patrimonio agregado en la toma de cargo

- ID: `andres-ergas-heymann-intereses-embajada`
- Estado vigente: `descartada` (2026-10-04). Esta pista se limita a comprobar si las cifras agregadas y las sociedades declaradas abren una cuestión verificable sobre su función diplomática; no es una investigación sobre su patrimonio total ni una calificación de conflictos.
- Identidad: coincidencia completa del nombre ANDRES FERNANDO ERGAS HEYMANN en declaración InfoProbidad ID 1791407, cargo Embajador Primera Categoría Exterior, Subsecretaría de Relaciones Exteriores. No se usaron resultados de homónimos. InfoProbidad consigna asunción el 12-05-2026 y declaración de toma de cargo el 04-06-2026.[1]
- Datos: `gold.duckdb`, corte `2026-10-02T15:43:07+00:00`; ejecución 2026-10-04. Salida de consulta reproducible con `ec-gold-sql`; el artefacto local coincide con la sincronización informada por el proceso cron. No se consultó la API.

## Mapa de afirmaciones y rutas

1. **¿El agregado cercano a CLP 1,09 billones es un hecho material independiente o una anomalía/duplicación del cruce?**
   - Medido: `pantalla-wide-outliers-20261004.sql` encontró a Ergas en su declaración de 04-06-2026 entre las 28 filas marcadas como outlier, con activos CLP 1.093.559.990.177, pasivos CLP 2.859.832.917, 72 filas de activos y confianza `no_series`. La suma directa de las 72 filas de `asset` coincide con activos del panel; tres filas clasificadas implausibles son participaciones societarias (Ever Chile, Inversiones Yanteles y Kini). Dos instrumentos aparecen con moneda declarada USD y lectura `already_pesos`, no con conversión repetida. El oro muestra que no es un caso simple de ×900; tampoco valida el valor de mercado de las participaciones.
   - Medido: `company` registra Ever Chile SPA CLP 423.842.850.990, Inversiones Yanteles Ltda. CLP 284.961.720.456 y Kini SpA CLP 283.765.678.916 como controladoras declaradas. No sumar estas participaciones como fortunas independientes: la prensa describe una cadena societaria Kini → Yanteles → Ever, con Ever como titular directa de la participación en Banco de Chile.[8][9]
   - Reportado por el declarante: la declaración señala que los valores libro de las sociedades informadas corresponden a sus estados financieros al 31-12-2025.[1][2] Esto explica el carácter contable/fechado del dato, pero no basta para confirmar valoración externa ni resolver qué activos están incorporados en matrices.
   - Límite: la estimación de CLP 1,09 billones es un agregado del panel y no debe presentarse como patrimonio neto, riqueza líquida ni valor de mercado comprobado.

2. **¿La identidad, el cargo y la relevancia funcional son corroborables?**
   - Medido/reportado: la declaración fuente contiene nombre completo, cargo, organismo, fecha de asunción y 50 sociedades/empresas declaradas.[1] El Ministerio de Relaciones Exteriores anunció su designación en Estados Unidos y describió una extensa trayectoria de dirección privada en sectores financiero, inmobiliario, hotelero, automotriz, turismo y vestimenta.[5]
   - Hecho institucional pertinente: el Ministerio informó que Ergas participó junto al canciller y la subsecretaria de Relaciones Económicas Internacionales en una reunión con gremios empresariales sobre negociación arancelaria con Estados Unidos.[6] Es contexto de función pública y de coordinación público-privada, no evidencia de que una empresa declarada recibiera un beneficio ni de que Ergas interviniera por interés particular.

3. **¿Hay una sociedad declarada identificada como proveedora estatal en el cruce disponible?**
   - Medido: `consultas/andres-ergas-heymann-intereses-oc-20261004.sql` une las 44 sociedades con identificador en la declaración a `company_supply` y `supplier` por declaración/asset y RUT societario. Una coincidencia del artefacto fue Banco de Chile (3 órdenes; CLP 37.847.232 en total; 31-03-2022 a 20-02-2023). Ese rango es anterior a la asunción diplomática y no acredita venta estatal por las sociedades patrimoniales ni a la Cancillería. No hubo coincidencias para las otras sociedades en este cruce.
   - Límite negativo: esto solo cubre registros de Mercado Público representados en el oro al corte, por la llave societaria disponible; no excluye otras modalidades de gasto público ni relaciones indirectas no modeladas.

4. **¿Hubo una separación temporal de cargos en una entidad financiera?**
   - Fuente primaria institucional consultada: el registro de la CMF para Banchile Administradora General de Fondos indica cargo de director desde 24-03-2025 hasta 12-03-2026.[10] El fin informado precede a la asunción diplomática del 12-05-2026.[1] No se halló en esta pasada un documento oficial que pruebe una relación posterior con ese directorio; participación accionaria declarada y cargo directivo son hechos distintos.

5. **Rutas de refutación y explicación legítima:**
   - Consultas independientes del oro: (a) pasivos superiores a CLP 1.000 millones; (b) filas `has_outlier`; (c) sociedades proveedoras en `same_institution`; (d) actividades remuneradas recientes; (e) proveedores propios de la institución; además de consultas específicas a las 72 filas de activos, 44 sociedades, 8 actividades y cruce de proveedores. El screen de actividades pagadas produjo cero filas en los casos consultados. Los cinco screens no revelan una coincidencia adicional apta para atribución individual.
   - Declaración origen: InfoProbidad y PDF completo con corte de valores libro al 31-12-2025; búsquedas exactas de folio 165674/2026, ID 1791407 y nombre completo.[1][2]
   - Fuentes de función y actividad: designación y reunión gremial publicadas por MINREL; ambas verifican que el nombramiento y la interlocución pública son hechos oficiales, pero no muestran una decisión sobre una empresa suya.[5][6]
   - Fuentes de estructura empresarial: dos notas de La Tercera informan la cadena de sociedades y valores ligados a la participación en Banco de Chile; sirven como contexto/explicación alternativa, no sustituyen la declaración ni un registro societario primario.[8][9]
   - CMF: búsqueda por nombre completo en el registro de sociedades/directorios confirma cesación del cargo de Banchile AGF antes de asumir la embajada.[10]
   - Búsqueda de prensa exacta sobre «Ergas embajador» y «fideicomiso» halló comentarios/opiniones sobre administración de intereses, no una resolución de autoridad ni prueba de beneficio particular. No se emplean como conclusión factual.
   - Intento de ruta Mercado Público por búsquedas web de sociedades/nombre llevó solo a la portada/API general de ChileCompra, sin resultado específico verificable; se prefirió el cruce local reproducible. No se eludieron límites, CAPTCHA ni accesos.

## Decisión y condición de reapertura

`Descartada` como pista de caso a partir de este agregado: el alto total contable procede de participaciones societarias declaradas y una estructura corporativa públicamente descrita; además, la declaración fecha el valor libro. No hay en la evidencia revisada un contrato estatal pertinente, una decisión diplomática individual favorable a una sociedad identificada, ni prueba de que las tres sociedades matrices sean activos no superpuestos. No presentar CLP 1,09 billones como patrimonio validado o enriquecimiento, ni inferir irregularidad de la reunión con gremios.

Reabrir solo si aparece evidencia primaria nueva que relacione a una empresa identificada en la declaración con una medida/negociación concreta en la que Ergas intervino, o registros corporativos/documentación contable primaria que resuelvan una inconsistencia material independiente del simple agregado. Se revisaron fuentes públicas; no hubo revisor humano independiente en esta corrida.

## Fuentes

[1] InfoProbidad, declaración ID 1791407, presentada 04-06-2026.[1]
[2] Declaración completa folio 165674/2026, copia PDF consultada 04-10-2026.[2]
[5] Ministerio de Relaciones Exteriores, designación de embajadores, 15-04-2026.[5]
[6] Ministerio de Relaciones Exteriores, reunión con gremios sobre aranceles, 2026.[6]
[8] La Tercera, estructura de sociedades y activos declarados, consultado 04-10-2026.[8]
[9] La Tercera, valores declarados y sociedades controladoras, consultado 04-10-2026.[9]
[10] CMF, reporte de sociedades/directorios, fecha de consulta 04-10-2026.[10]

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1791407
[2] https://media-front.elmostrador.cl/2026/08/Lea-la-declaracion-del-embajador-Andres-Ergas.pdf
[5] https://www.minrel.gob.cl/sala-de-prensa/presidente-jose-antonio-kast-designa-nuevos-embajadores-en-estados-unidos-y
[6] https://www.minrel.gob.cl/sala-de-prensa/cancilleria-se-reune-con-gremios-empresariales-para-coordinar-estrategia-conjunta-ante-nuevo-arancel-de-eeuu
[8] https://www.latercera.com/pulso/noticia/las-galerias-comerciales-en-el-centro-de-santiago-del-embajador-chileno-en-estados-unidos-andres-ergas
[9] https://www.latercera.com/pulso/noticia/el-abultado-patrimonio-del-embajador-chileno-en-estados-unidos-andres-ergas
[10] https://www.cmfchile.cl/institucional/mercados/detalle_reporte_ejecutivos.php?rut=6920717&nombre=ANDRES%20FERNANDO%20ERGAS%20%20HEYMANN&mercado=V
