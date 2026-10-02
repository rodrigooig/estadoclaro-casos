# Pablo García González, EGP Consultores y compras públicas — evidencia insuficiente

- **ID estable:** `pablo-garcia-egp-consultores`
- **Categoría:** compras / relaciones con el Estado
- **Estado actual:** evidencia insuficiente; no preparar borrador de caso
- **Apertura / última actualización:** 2026-10-02
- **Corte del artefacto:** `meta.build_date = 2026-10-02T15:43:07+00:00`; consultado en solo lectura el 2026-10-02. La copia sincronizada no había cambiado desde la corrida previa.
- **Identidad:** coincidencia completa de nombre en InfoProbidad y `person.full_name`.

La declaración de 22-08-2020 identifica a Pablo Enrique García González como ministro suplente del TDLC y consigna asunción el 22-06-2020; la declaración de 30-03-2026 consigna el mismo cargo y organismo, pero anota asunción el 18-06-2020. Se conserva esta discrepancia de cuatro días entre snapshots, sin escoger una fecha como definitiva.[1][7]

La sociedad coincide entre la declaración y el proveedor por el RUT societario publicado, no por semejanza de nombres.[1][2][3]

## Resultado breve

La declaración de 30-03-2026 registra que García participa como controlador con 20% de EGP Consultores Ltda. y declara una actividad remunerada de consultor en esa empresa desde 2016.[1]

El artefacto mide 19 órdenes primarias de EGP asociadas a sus ventanas declarativas entre 08-10-2020 y 19-11-2025; suma CLP nominales de 1.638.839.941 en 11 compradores. La consulta independiente, que deduplica por código y compara `declared_supply_order` con `purchase_order`, reproduce los 19 códigos y la misma suma. Son montos de órdenes públicas, no ingresos personales ni beneficio recibido por García.

La fuente primaria confirma dos de las mayores órdenes: SENDA envió el 08-10-2020 una OC por CLP 492.000.000 para un pilotaje de programa basado en evidencia, proveniente de licitación pública; el proveedor figura como EGP Consultores y el RUT societario coincide con el declarado.[2]

SENDA envió el 23-12-2021 otra OC por CLP 479.999.990, también desde licitación pública, para una plataforma online de prevención universal; la ficha registra el mismo proveedor e identificador societario.[3]

La empresa afirma que desde 2016 enfocó su actividad en el sector público y que se adjudicó varias licitaciones gubernamentales.[5]

Esa explicación es consistente con que la mayoría de las órdenes medidas por el artefacto aparece bajo licitación pública; no explica por sí sola las tres órdenes que el artefacto clasifica como trato directo ni acredita cómo se seleccionó al proveedor en cada proceso.

La declaración y las órdenes prueban simultaneidad entre participación declarada y contratos, pero no muestran que García ejecutara los trabajos, interviniera en las compras o recibiera personalmente esos montos.[1][2][3]

**Relevancia pública posible:** la declaración de 2020 identifica a García como ministro suplente del TDLC.[7]

La de 2026 registra su actividad de consultor y control de EGP.[1]

Las órdenes primarias documentan contratos de esa sociedad con organismos públicos.[2][3]

La relación entre esos servicios y sus funciones concretas en el tribunal no está establecida en las fuentes revisadas; por ahora, la coincidencia temporal no basta para un caso publicable.

## 1. Evidencia reproducible del artefacto

La consulta [`consultas/pablo-garcia-egp-consultores-1.sql`](../consultas/pablo-garcia-egp-consultores-1.sql) devuelve 19 órdenes únicas marcadas como `is_primary_for_person = true` y `timing = 'during'`, ligadas por nombre completo, sociedad y el RUT societario `76121832`. El rango que devuelve es 08-10-2020–19-11-2025. El valor CLP del artefacto coincide en estas 19 filas con el campo `amount_clp` de `purchase_order`; la consulta no convierte montos ni cuenta filas espejo `after_1y`.

La verificación independiente [`consultas/pablo-garcia-egp-consultores-2.sql`](../consultas/pablo-garcia-egp-consultores-2.sql) usa el conjunto distinto de códigos de orden y suma el registro canónico de `purchase_order`: 19 códigos y CLP 1.638.839.941 en ambos lados. La consulta [`consultas/pablo-garcia-egp-consultores-3.sql`](../consultas/pablo-garcia-egp-consultores-3.sql) ordena los importes primarios y confirma que las dos OCs verificadas son las de mayor monto en el conjunto medido. La agregación del artefacto muestra 11 compradores, 16 órdenes cuya ruta es «Proveniente de licitación pública», tres etiquetadas `is_direct_award = true`, ninguna con `same_institution = true` y tres con `same_institution = NULL`; estas últimas significan «no se pudo determinar», no que se haya probado que el comprador era distinto.

La orden 662237-215-SE20 identifica como proveedor a EGP Consultores, muestra el mismo RUT que InfoProbidad y consigna CLP 492.000.000 en pesos chilenos.[1][2]

La orden 662237-407-SE21 repite el RUT del proveedor y registra CLP 479.999.990, también en pesos chilenos.[3]

El registro de la orden no identifica a quien preparó, evaluó, autorizó o administró el contrato.[2][3]

## 2. Explicación legítima y límites

La explicación legítima más plausible que se pudo documentar es que EGP presta servicios de consultoría al sector público y compite por licitaciones: así lo describe la propia empresa y las dos órdenes principales revisadas remiten a licitaciones públicas.[2][3][5] El artefacto clasifica otras tres órdenes como trato directo, incluidas una prórroga y una compra cuyo registro dice que hubo una licitación previa sin ofertas o con ofertas inadmisibles; no se examinaron los expedientes, bases, evaluaciones ni actos administrativos de esas tres compras.

No se encontró en esta revisión una orden del TDLC a EGP: las órdenes medidas pertenecen a otros organismos. Esto no descarta que exista otra clase de relación institucional ni aclara si los servicios contratados se vincularon con materias vistas por el tribunal. La empresa describe sus áreas como políticas públicas, prevención, infancia, discapacidad, género y evaluación de programas; esa autodescripción no prueba el alcance de cada contrato ni una relación con decisiones del TDLC.[5]

La declaración es autoinformada y puntual. El registro de 30-03-2026 no demuestra por sí solo que la participación o actividad remunerada continuaran sin cambios en cada fecha anterior de compra; las declaraciones previas son parte de la secuencia del artefacto y deben cotejarse con sus páginas originales antes de atribuir continuidad.[1][7] Tampoco se consultaron los anexos completos ni los expedientes de adjudicación para verificar ofertas, puntajes, proveedores alternativos, equipos responsables o medidas de abstención.

## 3. Búsqueda de duplicados, desafío y decisión

- La búsqueda literal del nombre completo no encontró una coincidencia en los casos públicos ni en las fichas de investigación existentes al abrir esta pista. Es una búsqueda acotada, no una prueba universal de ausencia.
- La identidad personal se apoya en el nombre completo y cargo de InfoProbidad. El enlace empresa-proveedor se apoya en el mismo RUT societario publicado en la declaración y en las dos OCs verificadas.[1][2][3]
- La primera consulta devuelve las 19 órdenes primarias; la segunda vuelve a sumar los códigos únicos y coteja sus montos con `purchase_order`. Ambas reproducen CLP 1.638.839.941. No se sumaron filas `after_1y` ni se contaron dos veces códigos de OC.
- La evidencia que más reduce una lectura de selección discrecional en los contratos principales es que ambos identifican su procedencia de licitaciones públicas; la página de EGP describe una trayectoria de adjudicación de licitaciones a entidades gubernamentales.[2][3][5] Esto no acredita que el proceso concreto fuera competitivo en la práctica, ni permite evaluar su resultado.
- No se encontró evidencia de una OC del TDLC a EGP ni de intervención personal de García en las adquisiciones. Las tres filas con `same_institution = NULL` quedan indeterminadas, no se reinterpretan como compradores distintos.

**Decisión:** mantener **evidencia insuficiente** y no redactar un caso. La participación declarada y las ventas durante el período de cargo son reproducibles, y las dos mayores órdenes revisadas son materialmente altas; pero la conexión con las funciones del TDLC, la continuidad societaria exacta en todas las fechas y el papel personal de García en la consultoría o las compras no están establecidos. La documentación accesible favorece como explicación una consultora que presta servicios públicos y participa en licitaciones, pero no se revisó el conjunto de expedientes ni se pudo contrastar la relación funcional entre los servicios y el cargo.

## 4. Avance de seguimiento — 2026-10-02

La revisión de fuentes públicas añadió una pista funcional que no estaba documentada en la búsqueda anterior: el CV profesional de Pablo García publicado por EGP lo presenta como socio fundador desde 2010 y director general a tiempo completo desde 2016; además describe, entre los trabajos de EGP, estudios, asesorías e implementaciones para entidades públicas e informes económicos presentados ante el TDLC y la FNE. Fuente primaria/autodescripción: [CV profesional publicado por EGP](https://www.egp.cl/img/CV_Pablo_Garci%CC%81a.pdf), consultado el 2026-10-02. El sitio institucional de EGP también describe su foco en organismos públicos desde 2016 y en materias que incluyen libre competencia ([Nosotros, EGP](https://www.egp.cl/nosotros)).

Por separado, [el perfil institucional del TDLC](https://www.tdlc.cl/miembros-tdlc/pablo-garcia-g-economista-periodo-2020-2026) identifica a García como ministro suplente durante 2020–2026 y [la ficha del Informe 26/2022](https://www.tdlc.cl/tdlc-informes/informe-n-26-2022-solicitud-de-informe-de-agrosuper-s-a-y-otras-respecto-de-las-bases-de-licitacion-para-la-contratacion-del-manejo-de-residuos-con-terceros-y-de-las-reglas-y-procedimientos-p) registra su participación en el asunto e indica su voto disidente sobre bases de licitación de gestión de residuos. Esto acredita que el tribunal atendió materias de licitación y libre competencia durante su período; **no** acredita que EGP o García hayan intervenido profesionalmente en ese expediente, ni conecta ese asunto con las órdenes a EGP. La coincidencia entre las áreas autodescritas de EGP y la función del TDLC constituye una hipótesis de relevancia que requiere verificar expedientes concretos, no un hecho de intervención ni un conflicto.

El PDF se pudo extraer, pero el comando del ledger de citas bloqueó su URL por detectar caracteres no ASCII en la ruta; por esa limitación no se le asigna número de cita en este registro. Se conserva la URL directa arriba y el texto extraído en `tmp/pablo-garcia-egp-web-evidence-2026-10-02.txt`. No se usa esa limitación como motivo para afirmar que se revisaron causas específicas de EGP.

**Decisión actualizada:** sigue **evidencia insuficiente**. El nuevo material hace alcanzable una comprobación pública más concreta: localizar en el buscador/expedientes públicos del TDLC presentaciones de EGP o informes económicos firmados por García durante 2020–2025 y cotejar sus roles/fechas con las causas en que actuó como ministro suplente. Si esa búsqueda exige CAPTCHA, acceso autenticado o gestión ante una persona, detenerse y marcar «requiere humano» con la gestión exacta. Mantener en paralelo el cotejo de las declaraciones originales y las bases/actas de las compras directas; no inferir continuidad o intervención personal a partir de los montos ni del CV.

**Próxima comprobación:** buscar y cotejar documentos públicos de causas del TDLC (presentaciones, informes, comparecencias y decisiones) para establecer si existe un solapamiento concreto entre trabajos identificados de EGP y asuntos en que García participó como ministro; después revisar las bases y actos de las tres órdenes clasificadas como trato directo. No abrir borrador público sin cerrar identidad, hecho material, relevancia, descarte de error del cruce y explicaciones legítimas.



## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5113268
    > "| Cargo o función | Ministro Suplente |"
    > "| Fecha de Asunción en el cargo | 18-06-2020 |"
    > "| R.U.T. | 76.121.832-8 |"
    > "| Cantidad / Porcentaje | 20 |"
    > "| Tiene Calidad de Controlador | true"
    > "Rubro o Área o Tipo de actividad | CONSULTOR"
    > "Fecha inicio | 04-01-2016"
[2] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=662237-215-SE20
    > "Fecha de Envío | 08-10-2020"
    > "Total OC | $ 492.000.000"
[3] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=662237-407-SE21
    > "Fecha de Envío | 23-12-2021"
    > "Total OC | $ 479.999.990"
[5] https://www.egp.cl/nosotros
    > "Desde el 2016 los desafíos se focalizaron en el sector público, adjudicándonos varias licitaciones con distintas instituciones gubernamentales."
[7] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5046322
    > "Ministro Suplente Tribunal De Defensa De La Libre Competencia"
    > "Asume el cargo: 22-06-2020"
