# Investigación: Alberto Tacón Clavaín — Cooperativa Calahuala y Valdivia (2023)

## Pregunta decisiva

¿La participación que Alberto Tacón Clavaín declaró en la Cooperativa de Trabajo Calahuala se vinculó con contrataciones materialmente relevantes o funcionalmente conectadas con sus atribuciones como SEREMI del Medio Ambiente de Los Ríos, y hay evidencia de intervención o beneficio distinto del registro societario y las órdenes?

## Hechos comprobados

- El oro (corte `meta.build_date` 2026-11-24T20:08:20+00:00) contiene siete declaraciones de Tacón entre 27-04-2022 y 30-09-2025, bajo el cargo declarado de SEREMI del Medio Ambiente, y asocia a la Cooperativa de Trabajo Calahuala (RUT 76.618.767) una participación de tipo `OTRO`, cantidad declarada 20 en 2022 y 15 en las declaraciones desde marzo de 2023, sin marca de control. El oro asocia dos órdenes de 2023 y otras dos órdenes posteriores fuera de la vigencia indicada en los detalles; las dos durante el cargo son las revisadas aquí. Consulta reproducible: `consultas/alberto-tacon-calahuala-valdivia-2023-1.sql`.
- Mercado Público, OC **2282-113-SE23** (16-06-2023), identifica por RUT 76.618.767-6 a Cooperativa de Trabajo Calahuala Servicios para la Conservación, estado «Aceptada», por **CLP $1.680.000 (46,57 UF)**, proveniente de la licitación pública 2282-233-LE21. La descripción indica aumento del contrato PP 143-2021 para estandarización y diseño participativo de contenidos y piezas gráficas del manual de señalética turística de la ZOIT Valdivia. Fuente primaria: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2282-113-SE23
- Mercado Público, OC **2281-2417-AG23** (30-11-2023), identifica el mismo proveedor/RUT, estado «Recepción Conforme», por **CLP $1.799.998 (49,23 UF)**. La orden se generó por invitación a Compra Ágil 2281-2831-COT23; su causal publicada es «Adquisición igual o inferior a 30 UTM (Debe presentar 3 cotizaciones)». El producto fue cuatro unidades de diseño gráfico para «Servicio de diseños». La ficha publica dos cotizantes, incluido Calahuala, y no muestra demanda ante el Tribunal de Contratación Pública. Fuente primaria: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2281-2417-AG23
- Las dos órdenes suman nominalmente **CLP $3.479.998 (95,80 UF)** según `declared_supply_order`; son montos de órdenes, no prueba independiente de pago. Ambas fueron emitidas por la Municipalidad de Valdivia, no por la Subsecretaría del Medio Ambiente ni por el SBAP. El oro marca `same_institution = false`; el hecho corresponde a distinto organismo comprador. Consulta reproducible: `consultas/alberto-tacon-calahuala-valdivia-2023-2.sql`.
- La ficha pública del Registro Central de Colaboradores identifica a la cooperativa con RUT 76.618.767-6, domicilio en Valdivia y objeto de servicios y asesoría para conservación de áreas protegidas, recursos naturales y desarrollo sostenible: https://registros19862.gob.cl/institucion/76618767/ficha
- La autoridad SBAP informa que Tacón asumió como director regional de Los Ríos el 22-12-2025 y resume su desempeño previo como SEREMI: https://sbap.gob.cl/sala-de-prensa/noticias-y-comunicados/detalle/2025/12/22/servicio-de-biodiversidad-y-areas-protegidas-inicia-instalacion-de-la-direccion-regional-de-los-rios
- La consulta de Servel en el gold no devuelve campañas con el nombre TACON: `consultas/alberto-tacon-calahuala-valdivia-2023-3.sql`. No es una pista de campaña.

## Evidencia primaria no obtenida

El dato de la participación proviene del cruce del gold, no de una reapertura directa de la declaración completa. InfoProbidad ofrece IDs asociados en el gold (por ejemplo, 1003192 para 31-03-2023 y 1552069 para 30-09-2025), pero el sitio no cargó desde este entorno (DNS_PROBE_FINISHED_NXDOMAIN); tampoco web_extract pudo recuperar las páginas. No atribuyo a la declaración una comprobación primaria no realizada. La ficha de Mercado Público sí se reabrió y cotejó íntegramente para ambas órdenes.

## Explicación legítima más fuerte

Son compras municipales pequeñas, no contrataciones con el organismo donde Tacón ejercía. Una orden deriva de licitación pública de 2021 y formaliza un aumento de contrato en 2023; la otra fue Compra Ágil por servicio de diseño gráfico, con dos cotizantes visibles y causal de monto igual o inferior a 30 UTM. El objeto de las compras —señalética turística y diseño gráfico— es compatible con la prestación ordinaria de una cooperativa que declara servicios de conservación y desarrollo territorial, pero las primarias no acreditan que Tacón interviniera en las decisiones, recibiera personalmente los fondos ni que la compra municipal estuviera dentro de una competencia decisoria de su SEREMI.

## Hecho más débil y límites

La participación contemporánea y su cantidad exacta no se verificaron en la declaración primaria de InfoProbidad. Tampoco se accedió a bases/anexos del proceso de 2021 ni a respaldos de los cotizantes. No hay fuente revisada que atribuya a Tacón intervención, gestión o recepción personal de estas compras. Una coincidencia entre sus atribuciones ambientales, la misión general de la cooperativa y servicios contratados por un municipio no establece por sí sola beneficio funcional.

## Decisión

**Descartada.** Falla la relevancia necesaria para un caso de auditoría con la evidencia disponible: dos órdenes pequeñas a un organismo distinto, sin intervención individual documentada ni nexo decisorio concreto con el cargo. La pista no sostiene una afirmación publicable más allá de una participación inferida del gold y dos contratos ordinarios, uno abierto y otro de monto bajo.

Reabrir únicamente si (a) la declaración primaria confirma la participación en la fecha pertinente y (b) un expediente oficial demuestra intervención de Tacón, competencia específica de su cargo respecto de esas compras o un beneficio material/contractual adicional; también si aparecen otras compras materiales conectadas con sus funciones. Si se requiere validar exclusivamente el dato societario, reabrir con acceso oficial descargable a InfoProbidad IDs 1003192/1552069.

## Fuentes y consultas

- Mercado Público, OC 2282-113-SE23: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2282-113-SE23
- Mercado Público, OC 2281-2417-AG23: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2281-2417-AG23
- Registro Central de Colaboradores, ficha Cooperativa Calahuala: https://registros19862.gob.cl/institucion/76618767/ficha
- SBAP, nombramiento y trayectoria de Alberto Tacón (22-12-2025): https://sbap.gob.cl/sala-de-prensa/noticias-y-comunicados/detalle/2025/12/22/servicio-de-biodiversidad-y-areas-protegidas-inicia-instalacion-de-la-direccion-regional-de-los-rios
- InfoProbidad, rutas asociadas: https://infoprobidad.cl/Declaracion/Declaracion?ID=1003192 ; https://infoprobidad.cl/Declaracion/Declaracion?ID=1552069 (no accesibles desde este entorno; no usadas como verificación primaria).
- Consultas reproducibles: `consultas/alberto-tacon-calahuala-valdivia-2023-1.sql`, `-2.sql`, `-3.sql`.
- Oro: `meta.build_date = 2026-11-24T20:08:20+00:00`; Mercado Público hasta la fecha del corte del artefacto.
