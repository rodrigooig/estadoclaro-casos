# Pablo Allard Serrano y el diseño de la Pasarela Lo Curro — comprobación pendiente

- **ID estable:** `pablo-allard-serrano-pasarela-vitacura`
- **Categoría:** compras / relaciones con el Estado
- **Estado actual:** requiere humano; no redactar caso
- **Apertura / última actualización:** 2026-10-02
- **Corte del artefacto:** `meta.build_date = 2026-09-29T15:40:44+00:00`; la copia local no había cambiado desde su sincronización previa. Consulta read-only con `ec-gold-sql` el 2026-10-02.
- **Identidad:** la declaración InfoProbidad 912542 nombra a PABLO ALLARD SERRANO y registra el cargo de Asesor Alcaldía en la Municipalidad de Vitacura. La empresa y la orden se enlazan por identificador societario coincidente en el origen y el artefacto; no se atribuyen compras de homónimos.[16][17]

## Resultado breve

La declaración rectificatoria de 11-11-2022 informa que Allard tenía 20% y calidad de controlador en ALLARD ASOCIADOS SPA, con actividad declarada de asesorías en arquitectura y urbanismo; también consigna una actividad remunerada de director en la empresa desde 2016.[16]

Mercado Público registra una orden aceptada enviada el 02-05-2023 por la Municipalidad de Vitacura a ALLARD ARQUITECTOS ASOCIADOS LIMITADA —el mismo RUT societario que la declaración— para ejecutar el proyecto de arquitectura y espacio público de la Pasarela Lo Curro, por 995 UTM, mediante trato directo.[17]

**Relevancia pública posible:** una municipalidad contrató directamente por 995 UTM a una empresa controlada por quien había declarado desempeñarse como asesor de su alcaldía, para un proyecto municipal de arquitectura y espacio público.[16][17]

Esto sustenta una pista verificable, no que el asesor interviniera en la contratación ni que hubiera irregularidad.[16][17]

No se obtuvo la resolución/decreto adjunto que el propio registro cita como fundamento; sin ella y sin conocer las funciones concretas del asesor en el proceso, no se puede evaluar la selección ni preparar un caso.[17]

## 1. Evidencia reproducible del artefacto

La consulta [`consultas/pablo-allard-serrano-pasarela-vitacura-1.sql`](../consultas/pablo-allard-serrano-pasarela-vitacura-1.sql), ejecutada contra el oro de corte 2026-09-29, devuelve una fila: nombre completo, declaración de 11-11-2022, cargo de asesor en Vitacura, participación declarada de 20% y condición de controlador, sociedad, orden 2659-252-SE23, fecha 02-05-2023, comprador Municipalidad de Vitacura y marca `same_institution = true`.[16][17]

La ficha original de la orden identifica a ALLARD ARQUITECTOS ASOCIADOS LIMITADA como proveedor y muestra el monto contractual en UTM: total 995 UTM.[17] Se conserva la unidad de la fuente primaria; no se presenta como CLP ni se actualiza el valor.[17]

La unión societaria no depende del parecido textual: el oro enlaza la sociedad declarada y el proveedor por su identificador, y la fuente primaria de Mercado Público muestra el mismo RUT y dígito verificador que InfoProbidad.[16][17]

**Comprobación adversarial:** volví a ejecutar la consulta focalizada guardada, y además repetí la lectura directa de la fila de `declared_supply_order` para esa persona y código de orden.

Ambas devuelven una sola orden primaria marcada como mismo organismo; la orden primaria confirma contratante, proveedor, procedimiento y UTM.[16][17]

Esto comprueba el cruce y la fuente, no acredita quién decidió, revisó o autorizó la contratación.[16][17]

## 2. Explicaciones legítimas y contexto contrastado

La Municipalidad describe la Pasarela Lo Curro como parte de su planificación de movilidad sustentable y señala que equipos técnicos municipales comenzaron análisis y evaluación de alternativas en 2020, antes de avanzar el proyecto y su ingeniería.[28] Es una explicación documentada de la necesidad y continuidad del proyecto público; no explica por sí sola por qué se eligió a este proveedor ni mediante qué fundamento jurídico concreto.[17][28]

En enero de 2023, antes de la orden, la prensa informó que la Municipalidad había abierto una licitación para la ingeniería y especialidades de la pasarela, con presupuesto informado de $90 millones.[21]

Ese proceso se refería a ingeniería y especialidades; la orden investigada describe ejecución del proyecto de arquitectura y espacio público.[17][21]

No se tratan como el mismo servicio ni como prueba de competencia por el contrato directo.[17][21]

El propio nombre de la orden cita el Decreto Alcaldicio Sec. 4.ª N.º 10/66, de 02-05-2023, y la Resolución N.º 29, de 10-03-2023, como antecedentes del trato directo.[17] La explicación legítima más plausible documentada hasta ahora es que el contrato formaba parte de un proyecto municipal planificado de movilidad y espacio público; la razón específica de la selección del proveedor sigue sin comprobarse.[17][28]

## 3. Límites, decisión y gestión requerida

- La declaración es autoinformada; por sí sola no acredita intervención de Allard en la decisión, evaluación, autorización, administración del contrato o recepción del servicio.[16][17]
- La coincidencia de institución en el oro se verificó en la orden primaria; no se infiere que la persona estuviera presente o tuviera competencia en la compra.[17]
- Se revisaron las fuentes públicas citadas arriba y se buscaron los números y nombres del decreto y la resolución; no se localizó el texto íntegro de esos actos en esta consulta.[17][21][28]
- Esta búsqueda acotada no prueba que no estén publicados en otro repositorio.[17][21][28]
- La documentación pública accesible explica la finalidad del proyecto, pero no ofrece evidencia suficiente sobre la justificación del trato directo, eventuales cotizaciones/alternativas, deberes de abstención o rol de la persona.[17][21][28]
- Sin esos antecedentes no se satisface el gate editorial de explicación legítima plenamente contrastada.[17]

**Decisión:** mantener **requiere humano**, sin borrador de caso. La relación entre la participación declarada y el proveedor de una compra municipal es reproducible y material para una comprobación periodística; el vínculo no prueba participación personal ni irregularidad.[16][17]

**Gestión exacta requerida:** una persona debe obtener del portal de Mercado Público o mediante solicitud de transparencia a la Municipalidad de Vitacura el expediente/anexos completos de la orden 2659-252-SE23, incluido el Decreto Alcaldicio Sec. 4.ª N.º 10/66 (02-05-2023), la Resolución N.º 29 (10-03-2023), informes técnicos y jurídicos, fundamento del trato directo, cotizaciones o comparación de alternativas, identificación de unidades responsables y constancia de quién participó en la decisión y administración. Comparar el alcance de ese contrato con la licitación de ingeniería 2667-119-LP22 y no asumir que eran prestaciones equivalentes. No contactar a terceros en esta corrida.

Reconsiderar solo con esos documentos: si no permiten establecer el fundamento de la selección y el rol de la persona, mantener evidencia insuficiente o descartar; no convertir una coincidencia societaria en una afirmación de conflicto o conducta impropia.

## Sources

[16] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=912542
    > "PABLO ALLARD SERRANO"
    > "Cantidad / Porcentaje	20
Giro registrado en SII	ASESORIAS EN ARQUITECTURA Y URBANISMO
Fecha de adquisición	08-09-2016
Tipo de Moneda"
    > "Clasificación	REMUNERADA
Nombre o Razón Social	ALLARD Y ASOCIADOS SPA"
[17] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2659-252-SE23
    > "TRATO DIRECTO CON LA EMPRESA ALLARD ARQUITECTOS ASOCIADOS LIMITADA, RUT: 76.598.791-1, PARA CONTRATAR EL SERVICIO DE EJECUCIÓN DEL PROYECTO DE ARQUITECTURA Y ESPACIO PÚBLICO PASARELA LO CURRO, POR UN MONTO TOTAL DE 995 UTM"
    > "TOTAL OC	UTM 995,0000"
[21] https://www.df.cl/df-mas/coffee-break/vitacura-abre-concurso-para-crear-pasarela-y-ciclovia-en-lo-curro
    > "“Ingeniería pasarela peatonal y ciclista, sector Lo Curro” es el nombre de la licitación que abrió la Municipalidad de Vitacura para evaluar un nuevo puente que cruce el río Mapocho."
    > "Cuenta con un presupuesto de $ 90 millones"
[28] https://vitanew.tchile.com/app/uploads/2024/05/Memoria_trabajo_Pas_Lo_Curro.pdf
    > "Durante el año 2020, se inició un trabajo por parte de los equipos técnicos municipales, que incorporó un análisis del sector, los requerimientos técnicos y evaluación de alternativas, concluyendo en una propuesta preliminar que definió su emplazamiento y trazado, para avanzar en el desarrollo de un proyecto, y posteriormente su ingeniería."

## 4. Profundización y revisión adversarial (02-10-2026)

Se volvió a ejecutar la consulta focalizada contra el oro de corte 2026-09-29: una fila principal para la OC 2659-252-SE23. Una consulta independiente por el RUT societario recuperó otras órdenes vinculadas a Allard Asociados y mostró duplicación de la misma OC en ventanas de declaraciones sucesivas; por eso la OC se cuenta una vez, no como varias compras. La orden principal registra monto original de 995 UTM, estado aceptada, fecha de envío 02-05-2023 y clasificación de servicio especializado bajo 1.000 UTM. El CLP y UF del artefacto son conversiones derivadas; para la afirmación pública debe conservarse la unidad primaria UTM.[16][17]

La lectura directa de InfoProbidad confirma nombre completo, organismo y cargo «Asesor Alcaldía», asunción declarada 01-01-2021, rectificación de 11-11-2022, control y 20% de ALLARD ASOCIADOS SPA, RUT 76.598.791-1, así como actividad remunerada de director de esa sociedad.[16] La orden primaria identifica como proveedor a ALLARD ARQUITECTOS ASOCIADOS LIMITADA con el mismo RUT y a la Municipalidad de Vitacura como comprador.[17] Esta evidencia sostiene la identidad societaria por RUT, pese a la variación de nombre. No prueba que la asesoría ni la participación societaria continuaran vigentes exactamente el 02-05-2023, ni acredita participación personal en la compra.[16][17]

La explicación legítima documentada se fortaleció: la memoria municipal describe un proyecto de movilidad peatonal y ciclista con análisis técnico iniciado en 2020; un aviso municipal de enero de 2023 y una nota de prensa contemporánea documentan además una licitación pública separada para ingeniería y especialidades.[28][29][30] La licitación identificada como 2667-119-LP22 tiene objeto distinto al servicio de arquitectura y espacio público consignado en la OC examinada; no debe presentarse como concurso por el contrato de 995 UTM.[17][29][30] El propósito público del proyecto no explica la causal concreta de trato directo ni la selección de este proveedor.

La ficha de la OC indica «servicios especializados inferiores a 1000 UTM» y menciona como antecedentes el Decreto Alcaldicio Sec. 4.ª N.º 10/66 (02-05-2023) y la Resolución N.º 29 (10-03-2023), pero no se recuperó el texto íntegro ni los anexos en la consulta pública revisada.[17] ChileCompra describe los tratos directos como excepcionales y señala, en su guía vigente, que la causal debe acreditarse y fundamentarse; esa guía se refiere a reglas que entraron en vigor el 12-12-2024, por lo que no se usa aquí para juzgar retroactivamente la contratación de 2023.[31] Sin los actos aplicables en la fecha y el expediente no se evalúa legalidad ni regularidad.[17][31]

**Revisión adversarial independiente:** confirmó nombre, cargo, RUT societario, comprador, proveedor, fecha y monto en UTM. Identificó dos brechas que impiden cerrar: el estado del empleo y de la participación societaria en la fecha de la OC no queda acreditado por una declaración de 2022; tampoco hay evidencia de las funciones de Allard en la selección, autorización, evaluación, administración o recepción. La misma revisión recomendó no preparar un caso público mientras falten esos antecedentes. No se contactó a terceros.[16][17]

**Decisión actualizada:** mantener **requiere humano; sin borrador de caso**. Hay evidencia primaria suficiente para sostener la pista factual y para pedir revisión documental, pero no para sugerir intervención o irregularidad. Reabrir el gate editorial solo con copia verificable del expediente y los actos citados, además de evidencia fechada sobre la continuidad del cargo/participación y el papel (si lo hubo) de la persona en el proceso. Si esa evidencia no aparece, cerrar como coincidencia documentada sin atribución de intervención.[16][17]

[29] https://vitacura.cl/noticias/vitacura-informa-licitacion-publica-ingenieria-pasarela-peatonal-y-ciclista-sector-lo-curro/ — Municipalidad de Vitacura, aviso de licitación ID 2667-119-LP22, 09-01-2023.
[30] https://www.df.cl/df-mas/coffee-break/vitacura-abre-concurso-para-crear-pasarela-y-ciclovia-en-lo-curro — Diario Financiero, 20-01-2023.
[31] https://www.chilecompra.cl/trato-directo-comprador/ — ChileCompra; normativa descrita como vigente desde 12-12-2024.

## 7. Seguimiento documental amplio — 2026-10-03

**Nueva evidencia primaria de alcance y contexto.** La ficha primaria de Mercado Público para la licitación 2667-125-LP23 identifica «INGENIERIA Y ESPECIALIDADES PASARELA PEATONAL Y CICLISTA SECTOR LO CURRO» y registra el estado «Desierta (o art. 3 ó 9 Ley 19.886)», con fecha de adjudicación 09-02-2024.[32] La ficha es internamente discordante: el campo «Tipo de licitación» la describe como pública, mientras que su texto de descripción habla de «la presente licitación privada».[32] No resolvemos esa discrepancia. La descripción dice que la ingeniería debía coordinarse con «el proyecto arquitectónico que será desarrollado por una Consultoría de Arquitectura y entregado al consultor por la Municipalidad».[32] Esto confirma que había prestaciones por fases diferenciadas; no establece por sí solo el motivo de la contratación directa de mayo de 2023.

La presentación municipal de devolución del proceso participativo, fechada 28-06-2023, señala que «Se licitará su diseño» para la Pasarela Lo Curro y documenta criterios de trazado, arbolado e información vecinal.[33] La Cuenta Pública municipal 2024, publicada en 2025, informa que durante 2024 se desarrolló el diseño arquitectónico y se licitó Ingeniería y Especialidades, cuya adjudicación fue aprobada por el Concejo en enero de 2025.[34] La ficha primaria de la OC 2659-252-SE23, en cambio, describe el servicio de mayo de 2023 como ejecución del proyecto de arquitectura y espacio público por 995 UTM y conserva «Ver Anexos» como enlace a antecedentes.[35] La secuencia es compatible con etapas distintas, pero el alcance exacto de la consultoría contratada en 2023 y el producto entregado no se verifican sin sus anexos.

**Rutas y comprobaciones de esta pasada (consulta: 2026-10-03).**

- Se volvió a ejecutar la consulta guardada `consultas/pablo-allard-serrano-pasarela-vitacura-1.sql` con `ec-gold-sql` contra el oro de corte `2026-10-02T15:43:07Z`: una fila. Reproduce nombre completo, declaración 11-11-2022, cargo de asesoría en Vitacura, 20% y control declarados, empresa con el identificador societario registrado, OC 2659-252-SE23 del 02-05-2023 y monto CLP derivado del artefacto. La cifra pública sigue citándose solo como 995 UTM, unidad de la ficha primaria.[35] Esto actualiza el corte, no resuelve continuidad del cargo o participación al día de compra.
- Se releyó la OC primaria de Mercado Público: comprador Municipalidad de Vitacura, proveedor Allard Partners/Allard Arquitectos Asociados Limitada, el mismo RUT societario publicado en la declaración, estado aceptada, disponibilidad presupuestaria, unidad UTM, total 995 UTM y enlace «Ver Anexos».[35] Los actos citados en el nombre de la OC siguen sin estar adjuntos en el texto extraído.
- Se consultó la fuente institucional municipal del Plan Pasarelas, que presenta como razón del programa la falta de cruces seguros peatonales y ciclistas sobre el Mapocho.[36] La presentación de participación de junio de 2023 y la Cuenta Pública 2024 aportan hitos temporales y finalidad pública, pero no explican la selección de Allard Partners ni acreditan intervención del asesor en la compra.[33][34]
- Se buscó por separado el número exacto del Decreto Alcaldicio Sec. 4.ª N.º 10/66, la Resolución N.º 29, el código de la OC y el nombre del proveedor en el dominio municipal. Las búsquedas no devolvieron los actos ni anexos; ese resultado acotado no demuestra que no estén publicados en otro canal.
- Se revisó una referencia secundaria a la licitación ID 2667-37-LP24, pero no se encontró su ficha primaria oficial asociada en esas búsquedas.[37] No se usa su supuesto estado ni se confunde con la ficha oficial 2667-125-LP23.[32] La Cuenta Pública 2024 comunica aprobación de una adjudicación en enero de 2025, pero en esta pasada no se obtuvo el acta de Concejo ni una segunda ficha oficial que reconcilie ese hito con la primera licitación declarada desierta.[32][34]
- La explicación legítima más sólida que sí queda documentada es un proyecto municipal de conectividad peatonal/ciclista planificado desde antes de la OC y ejecutado por componentes. Es contexto de necesidad y cronología, no justificación probada del trato directo ni prueba de equivalencia entre diseño arquitectónico e ingeniería especializada.[33][34][36]

**Desafío y decisión.** La nueva fuente primaria sobre la licitación de ingeniería fortalece la hipótesis de fases distintas y reduce el riesgo de comparar contratos de alcance equivalente.[32] A la vez, la diferencia entre la OC arquitectónica de 2023, el proceso de ingeniería de 2023–2024 declarado desierto y la aprobación de una adjudicación en enero de 2025 deja una brecha documental concreta.[32][34][35] No se acredita el rol personal de Allard en evaluación, autorización, administración o recepción, ni continuidad de la función y participación societaria al 02-05-2023.[16][17] Se mantiene **requiere humano**, sin borrador público.

**Gestión exacta para reabrir:** descargar desde la ficha primaria de la OC los anexos y actos, especialmente Decreto Alcaldicio Sec. 4.ª N.º 10/66 (02-05-2023) y Resolución N.º 29 (10-03-2023); obtener la ficha oficial y el acta del Concejo asociadas a la adjudicación de Ingeniería y Especialidades informada para enero de 2025; cotejar bases, alcance, responsable municipal y rol del asesor. No enviar solicitudes ni contactar personas en esta corrida. Si el portal vuelve a bloquear los anexos, una persona autorizada debe entregar los documentos públicos identificados; hasta entonces no evaluar la legalidad ni atribuir intervención.

[32] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?qs=++cY/0pn51VJeVVPrx9CiQ== — Mercado Público, licitación 2667-125-LP23; consultada 2026-10-03. Extractos: «Estado: Desierta (o art. 3 ó 9 Ley 19.886)»; descripción: «el proyecto arquitectónico que será desarrollado por una Consultoría de Arquitectura y entregado al consultor por la Municipalidad».
[33] https://vitacura.cl/descargas/vecinos/participacion_ciudadana/PPT_DEVOLUCION_28.06.2023.pdf — Municipalidad de Vitacura, devolución del proceso participativo, 28-06-2023. Extracto: «Se licitará su diseño».
[34] https://vitacura.cl/app/uploads/2025/04/CP24-VIT_Final.pdf — Municipalidad de Vitacura, Cuenta Pública 2024, consultada 2026-10-03. Extracto: «En 2024 se desarrolló el diseño arquitectónico y se licitó el proyecto de Ingeniería y Especialidades, cuya adjudicación fue aprobada por el Concejo Municipal en enero de 2025».
[35] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2659-252-SE23 — Mercado Público, OC 2659-252-SE23, consultada 2026-10-03. Extracto: «TOTAL OC | UTM 995,0000».
[36] https://vitacura.cl/municipalidad/planificacion-urbana/planes-de-movilidad-sustentable/plan-pasarelas/ — Municipalidad de Vitacura, Plan Pasarelas, consultado 2026-10-03. Extracto: «se proyecta un sistema de Pasarelas para peatones y ciclos».
[37] https://www.todolicitaciones.cl/licitacion/2667-37-LP24/ingenieria-y-especialidades-pasarela-peatonal-y-ciclista-sector-lo-curro — fuente secundaria consultada 2026-10-03; se trata solo como pista de búsqueda, no como estado verificado.

## 8. Seguimiento amplio — adjudicación de ingeniería y contraste de fases (2026-10-03)

**Hallazgo nuevo en fuente primaria:** la ficha oficial y el acta de adjudicación de Mercado Público para la licitación 2667-138-LQ24 muestran que el proceso de Ingeniería y Especialidades de la Pasarela Lo Curro fue adjudicado el 05-02-2025 mediante Decreto Alcaldicio 3/371. El acta individualiza como adjudicatario a JORGE PIDDO Y COMPAÑÍA LIMITADA por CLP netos 166.865.546; indica que LEN Y ASOCIADOS INGENIEROS CONSULTORES LTDA. fue declarado inadmisible por no cargar antecedentes administrativos, técnicos y económicos. El acta también cita el Acuerdo 7547 del Concejo Municipal, Sesión Ordinaria 1187, del 15-01-2025.[38]

La misma ficha define la licitación adjudicada como desarrollo de ingenierías y especialidades, coordinado con un proyecto arquitectónico que sería desarrollado por una consultoría de arquitectura y entregado por la Municipalidad.[38] Esto aporta evidencia primaria a la separación de fases sugerida por las fuentes municipales: no es el mismo objeto que la OC 2659-252-SE23, que en mayo de 2023 contrató a la sociedad ligada por RUT a Allard para ejecución del proyecto de arquitectura y espacio público por 995 UTM.[35][38] La secuencia y los objetos descritos son compatibles con prestaciones diferenciadas; no permiten identificar aquí a la consultora de arquitectura de la fase posterior ni establecer si el trabajo de 2023 fue entregado, cómo se seleccionó a Allard Partners, o si Allard intervino en esa compra.

**Rutas de esta pasada (2026-10-03):**

1. **Oro EstadoClaro:** se reejecutó `consultas/pablo-allard-serrano-pasarela-vitacura-1.sql` con `ec-gold-sql` contra el corte `2026-10-02T15:43:07Z`. Devuelve una fila para la OC 2659-252-SE23, la persona y el proveedor enlazados por el RUT societario; el monto que aparece en CLP es conversión del artefacto. La afirmación contractual se conserva en UTM según la fuente primaria. La reejecución confirma el cruce, no la vigencia del cargo en mayo de 2023 ni una intervención individual.
2. **Mercado Público, ficha primaria de 2667-138-LQ24:** apertura directa de la ficha oficial y lectura de objeto, estado adjudicada, cronograma, monto estimado y enlace al acta. El objeto describe ingeniería y especialidades coordinadas con una consultoría de arquitectura municipal; la ficha sola no identifica en el resumen quién desarrolló el diseño arquitectónico.
3. **Mercado Público, acta oficial enlazada desde esa ficha:** el acta permite verificar el Decreto 3/371, el nombre del proveedor de ingeniería, CLP netos 166.865.546, la oferta inadmisible, los fundamentos consignados y el Acuerdo 7547 del Concejo. La ficha de adjudicación muestra tres anexos (declaración jurada de ausencia de conflictos, decreto de adjudicación e informe/acta de evaluación) pero la tabla de anexos no expuso enlaces utilizables en el texto público extraído; el formulario de descarga ofrecía «Generar nuevo código» y un campo de imagen. No se intentó resolver ni eludir ese control. El acta pública sí proporciona el resultado y cita antecedentes, pero no sustituye el contenido íntegro de los anexos listados.
4. **Documentación institucional municipal:** se releyeron la Cuenta Pública 2024 y la página del Plan Pasarelas. La primera afirma que la adjudicación de ingeniería fue aprobada por el Concejo en enero de 2025; el Plan explica la finalidad comunal de cruces peatonales y ciclistas sobre el Mapocho.[34][36] Esto es consistente con el Acuerdo 7547 y contextualiza la obra, pero no justifica la elección del proveedor de arquitectura de la OC 2023.
5. **Búsqueda exacta de actos de la OC 2023:** nuevas consultas por el Decreto Alcaldicio Sec. 4.ª N.º 10/66, la Resolución N.º 29, la OC 2659-252-SE23 y la razón social en el dominio municipal no recuperaron los textos íntegros. No apareció una copia municipal indexada en esta pasada; eso no demuestra que no exista en otro repositorio.
6. **Rutas secundarias y cruce con primaria:** el buscador remitió a una ficha secundaria de 2667-138-LQ24 que la describía como adjudicada; se utilizó solo como pista y se contrastó el estado y adjudicatario en el acta oficial.[38] La referencia secundaria a la licitación anterior 2667-37-LP24 ya registrada en la sección 7 se mantuvo como secundaria; no se usa para establecer su estado.

**Desafío adversarial y decisión.** El acta primaria refuerza la interpretación de que ingeniería fue un proceso público y separado del servicio de arquitectura/espacio público consignado en 2023. También corrige la brecha de seguimiento sobre el hito de enero de 2025: se localizó la adjudicación oficial y el acuerdo del Concejo. Esto reduce el riesgo de presentar la licitación de ingeniería como si hubiese competido por la OC de 995 UTM. No cambia, sin embargo, el vacío central sobre los actos y anexos de la compra directa de 2023, la continuidad temporal del cargo y de la participación declarada, y el papel personal de Allard. La necesidad pública de una pasarela es una explicación plausible para el proyecto en general, no la justificación específica de la selección de ese proveedor.

**Decisión: requiere humano; no preparar borrador.** El acta de la fase de ingeniería no cumple el gate para la OC de arquitectura. Gestión humana acotada: obtener por vía autorizada los anexos/actos de la OC 2659-252-SE23 —en especial Decreto 10/66 y Resolución 29— y evidencia fechada sobre el alcance, responsable municipal y participación (si la hubo) del asesor en la compra/recepción. La adjudicación de ingeniería de 2025 ya no requiere búsqueda: su acta oficial está localizada. No volver a buscar el mismo hito sin documento o evidencia nuevos.

[38] https://www.mercadopublico.cl/Procurement/Modules/RFB/StepsProcessAward/PreviewAwardAct.aspx?qs=mHOt9ZRVpKqWRit2DWowzQ== — Mercado Público, Acta de Adjudicación de la licitación 2667-138-LQ24, consultada el 2026-10-03.
    > "Acuerdo N°7547, correspondiente a la Sesión Ordinaria N°1187, del Concejo Municipal de Vitacura, de fecha 15 de enero de 2025."
    > "Por consiguiente, se propone a la Sra. Alcaldesa, adjudicar la presente Licitación Pública, al oferente JORGE PIDDO Y COMPAÑÍA LIMITADA, RUT 87.786.100-7"
    > "Monto Neto Adjudicado $ 166.865.546"

## 9. Revisión adversarial ampliada — 2026-10-05

**Nuevas fuentes oficiales y corrección temporal.** Se reabrió la declaración completa de InfoProbidad 912542 y se confirmó: nombre completo PABLO ALLARD SERRANO; cargo declarado Asesor Alcaldía de Vitacura; declaración rectificatoria de 11-11-2022; participación de 20% y condición de controlador en ALLARD ASOCIADOS SPA, RUT 76.598.791-1; actividad remunerada como director en esa sociedad.[16][39] La ficha primaria de la OC 2659-252-SE23 fue reabierta directamente: enviada el 02-05-2023, comprador Municipalidad de Vitacura, proveedor Allard Partners / Allard Arquitectos Asociados Limitada, RUT 76.598.791-1, servicio de ejecución del proyecto de arquitectura y espacio público Pasarela Lo Curro, procedimiento de trato directo y total 995 UTM.[17] La coincidencia societaria se basa en el RUT idéntico pese a la variante de razón social.

La planilla oficial de honorarios de febrero de 2021 lista «ALLARD SERRANO PABLO», pero la fila indica fecha de inicio 01-01-2020 y término 31-12-2020, y observa que el pago de febrero cubre la boleta de diciembre de 2020.[40] Esto corrige la lectura de que esa prestación individual seguía activa en 2021 y no prueba continuidad en mayo de 2023. La ficha refiere funciones temáticamente vinculadas con diseño urbano, espacio público, vialidad y anteproyectos de movilidad sobre el cauce del Mapocho, según el texto indexado del PDF municipal; no se encontró documento que asigne a Allard el diseño concreto de esta pasarela.[40]

Se revisó de extremo a extremo el archivo oficial de honorarios municipales de mayo de 2023; una búsqueda exacta de «ALLARD SERRANO PABLO» y «PABLO ALLARD SERRANO» no halló una fila del titular. El archivo contiene algunas personas llamadas Pablo con otros apellidos, que no se atribuyen a Allard.[41] Este resultado solo cubre esa nómina/mes: no descarta otro régimen contractual o nombramiento, y no prueba por sí solo el cese del cargo declarado en InfoProbidad en 2022.

La memoria municipal de la Pasarela Lo Curro dice que equipos técnicos iniciaron análisis del sector y evaluación de alternativas durante 2020.[42] El acta oficial de la licitación de ingeniería 2667-138-LQ24 documenta su adjudicación en 2025 a un proveedor distinto y describe ingeniería/especialidades coordinadas con un proyecto arquitectónico; corresponde a una fase/objeto diferente, no a la licitación del contrato de arquitectura descrito por la OC de 2023.[38] La finalidad municipal de la pasarela es una explicación legítima del proyecto y su cronología, pero no identifica quién produjo el diseño contratado en 2023, no justifica el trato directo por sí sola y no acredita el papel de Allard.

**Revisión independiente.** Un revisor ajeno a esta ficha confirmó el carácter incompleto del vínculo personal y recomendó mantener hold. Su búsqueda exacta no recuperó la OC, por lo que no certificó esos campos en su propia sesión; no se interpreta su resultado negativo como inexistencia. Los datos de la OC en esta ficha proceden de la extracción directa de la página oficial de Mercado Público.[17]

**Vías y vacíos.** Se revalidaron declaración de origen, proveedor/RUT, contraparte, fecha, procedimiento, objeto y unidad primaria del monto; se inspeccionaron dos nóminas oficiales municipales con fechas distintas, la memoria del proyecto y el acta de la fase posterior de ingeniería; se buscaron por número exacto el Decreto Alcaldicio Sec. 4.ª N.º 10/66 (02-05-2023), la Resolución N.º 29 (10-03-2023), la OC y la razón social en fuentes municipales, sin recuperar copias íntegras. La ficha de la OC remite a «Ver Anexos». No se eludió CAPTCHA ni login y no se contactó a terceros.[17][40][41]

**Decisión actual: requiere humano; no preparar borrador público ni PR a `main`.** La declaración de noviembre de 2022 y la OC de mayo de 2023 sustentan una coincidencia de interés societario, institución compradora y materia de arquitectura/espacio público. El honorario municipal que mejor documenta el ámbito de función terminó en diciembre de 2020; la nómina de honorarios de mayo de 2023 no muestra el nombre completo, sin descartar otro tipo de vínculo. No hay evidencia de que Allard interviniera en selección, autorización, evaluación, administración o recepción, ni se recuperó el fundamento íntegro del procedimiento. Reabrir únicamente con el expediente/actos y anexos de la OC, evidencia fechada de la situación municipal al 02-05-2023 y documentación sobre quién definió, seleccionó, administró y recibió el servicio y si hubo participación o abstención de Allard. Si no aparece evidencia de su papel personal, mantener el hecho como coincidencia documentada sin atribución de intervención o conducta impropia.[16][17][38][39][40][41][42]

[39] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=912542 — InfoProbidad, declaración completa, consultada 2026-10-05.
[40] https://transparencia.vitacura.cl/resources/descargas/transparencia/pdf/regimen/2021/personal_municipal_honorarios_febrero_2021.pdf — Municipalidad de Vitacura, Personal Municipal Honorarios febrero 2021; fila de Allard, prestación 01-01-2020 a 31-12-2020, pago de boleta diciembre 2020.
[41] https://bucket.vitacura.cl/transparencia/pdf/regimen/2023/3.-personal_municipal_honorarios_mayo_2023.pdf — Municipalidad de Vitacura, nómina de honorarios mayo 2023, consultada directamente; búsqueda exacta de nombre completo sin coincidencia.
[42] https://vitacura.cl/app/uploads/2024/05/Memoria_trabajo_Pas_Lo_Curro.pdf — Municipalidad de Vitacura, memoria de trabajo Pasarela Lo Curro; análisis municipal del sector iniciado en 2020.
