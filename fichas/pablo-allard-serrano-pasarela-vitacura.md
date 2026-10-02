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
