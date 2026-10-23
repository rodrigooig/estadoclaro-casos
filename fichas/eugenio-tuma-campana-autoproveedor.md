# Eugenio Tuma Zedan — gasto de campaña a sociedad de participación declarada

**Estado:** borrador listo para revisión editorial  
**Categoría propuesta:** negocios_estado  
**Pregunta:** ¿El reporte definitivo de Servel registra un gasto pagado de la campaña senatorial 2025 de Eugenio Tuma Zedan al RUT que él había declarado controlar poco antes, y qué fundamenta el rechazo?

## Hechos verificados

- La declaración InfoProbidad ID 1504762, presentada el 19-08-2025 para su candidatura a senador, registra que Eugenio Tuma Zedan declaró 92,5% y calidad de controlador de INMOBILIARIA E INVERSIONES NUEVAS RAICES S.A., RUT 76.445.700-5. La propia declaración no acredita por sí sola vigencia societaria posterior.
- El reporte definitivo de Servel 2025 incluye en la hoja «FORMULARIO 87 Y 88» una línea de gasto de la candidatura de Tuma: Formulario 103 n.º 55, fecha 14-09-2025, $1.500.000, proveedor RUT 76.445.700-5, clasificación «Gasto rechazado» y detalle «Registro de Vehículos».
- En la hoja «FORMULARIO AUXILIAR 103», la línea asociada a la candidatura figura «pagado» por $1.500.000 al mismo RUT, descrito como «inmobiliaria e inversiones nuevas raíces ltda». El sufijo societario en el auxiliar difiere de «S.A.» en InfoProbidad; la identidad de RUT coincide, pero no se verificó en esta corrida la razón social/forma jurídica registral al momento del gasto.
- El resumen final de la campaña dice «Aprueba con observaciones». En el oro, la campaña tiene $175.402.864 de gastos, $4.641.201 rechazados, de los que $1.500.000 corresponden a autosuministro; el proveedor agregado aparece como INMOBILIARIA E INVERSIONES NUEVAS RAICES S.A. La línea individual equivale a 37,84 UF según `campaign_expense.amount_uf`.
- Servel describe de modo general que los gastos deben acreditarse con comprobantes y documentos tributarios válidos. No se localizó fundamento narrativo público específico para el rechazo de esta línea; «Registro de Vehículos» es el detalle registrado, no una explicación de por qué fue rechazada.

## Pregunta pública y explicación legítima

La pregunta acotada es por qué la campaña registró como pagado un gasto a una sociedad que Tuma había declarado controlar, y qué fundamento tuvo el rechazo de Servel. La explicación legítima más fuerte es un servicio real de vehículos para la campaña cuyo respaldo o requisito documental no fue considerado suficiente, o un motivo administrativo distinto. La documentación abierta consultada no permite decidir entre esas posibilidades.

## Controles y límites

- Identidad de sociedad por RUT con DV verificado en el oro; no se atribuye por semejanza de razón social.
- La declaración es una foto del 19-08-2025: no demuestra titularidad/control al 14-09-2025.
- «Pagado» proviene del auxiliar; el reporte final clasifica el gasto como rechazado. No prueba beneficio personal.
- No se afirma infracción, irregularidad, falsedad, intervención indebida ni que Servel haya aprobado esta línea. El estado global de campaña es «Aprueba con observaciones».
- La diferencia «S.A.» / «Ltda.» entre declaración y auxiliar impide afirmar forma jurídica concreta sin comprobación registral adicional; el RUT común sí acredita que ambos registros se refieren al mismo identificador tributario.

## Decisión

**Borrador listo para el editor.** La línea individual, el pago asentado, el rechazo y la coincidencia exacta de RUT están documentados en una fuente primaria; la declaración cercana en el tiempo aporta un nexo de control autodeclarado. La pieza expone explícitamente los límites esenciales y la explicación legítima más plausible, sin atribuir motivo ni conducta indebida.

## Fuentes

1. InfoProbidad, declaración ID 1504762: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1504762
2. Servel, reporte definitivo 2025 XLSX: https://www-doc.servel.cl/2026/09/Reporte%20Ingresos%20y%20Gastos%20Electorales%202025%20-%20Definitivas%20Presidenciales%20y%20Parlamentarias.xlsx
3. Servel, Control de la contabilidad electoral: https://www.servel.cl/campanas-electorales-introduccion/control-de-la-contabilidad-electoral/
4. Oro EstadoClaro (corte `2026-10-21T19:32:15+00:00`): consulta adjunta; la UF se expresa según `campaign_expense.amount_uf`.
5. Servel, noticia de publicación de datos electorales 2025: https://www.servel.cl/2026/01/23/ingresos-y-gastos-de-campana-de-las-elecciones-parlamentarias-y-presidenciales-2025-ya-son-publicos/

## Decisión editorial (2026-10-23): publicado

Publicar en autocontratación. Verifiqué InfoProbidad 1504762 (19-08-2025): Eugenio Tuma Zedan declara 92,5% y control de la sociedad con RUT 76.445.700-5; el reporte definitivo de Servel registra en Formulario 103 n.º 55 un gasto de $1.500.000 el 14-09-2025 a ese RUT, con resultado «Gasto rechazado», y el auxiliar lo marca pagado. Servel no publica en el reporte el fundamento individual del rechazo; «Registro de Vehículos» es el detalle, no su causal. La coincidencia es por RUT, no acredita control vigente al gasto ni beneficio personal o infracción; el borrador conserva esos límites.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/180
