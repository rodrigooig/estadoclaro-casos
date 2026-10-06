# Seguimiento de caso publicado: Nancy Marisol Díaz Reyes y compras de radiodifusión en Los Sauces

- **ID:** `diaz-reyes-municipalidad-de-los-sauces`
- **Vínculo:** seguimiento documental del caso ya publicado en [`casos/autocontratacion/diaz-reyes-municipalidad-de-los-sauces.md`](https://github.com/rodrigooig/estadoclaro-casos/blob/main/casos/autocontratacion/diaz-reyes-municipalidad-de-los-sauces.md); no es una pista nueva ni un borrador adicional.
- **Estado:** requiere humano; no preparar ni duplicar caso.
- **Fecha de esta pasada:** 2026-10-06 UTC.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; copia sincronizada informada sin cambios. Consultas ejecutadas solo con `ec-gold-sql`.
- **Identidad:** nombre completo cotejado entre declaración InfoProbidad 1052265 y `person.full_name`; no se usó ni guardó RUT personal.

## Resultado breve

La declaración oficial de 11-04-2023 registra a Nancy Marisol Díaz Reyes en la Municipalidad de Los Sauces con cargo/función «Otro» y consigna acciones de `EMICIONES NANCY MARISOL DIAZ EIRL`, cantidad 100, adquisición de 11-02-2015, giro de publicidad radial y `Tiene Calidad de Controlador: false`.[8]

El RUT societario de esa declaración coincide con el de la razón social que figura en las órdenes de Mercado Público; no se atribuyen compras a partir de la semejanza del nombre del proveedor, que la ficha muestra como «ROGELIO».[5][8]

La consulta reproducible devuelve diez órdenes únicas de Los Sauces vinculadas a la licitación pública 3705-127-LE22, entre 05-05-2023 y 20-02-2024, por CLP 800.000 nominales cada una y CLP 8.000.000 en total según `purchase_order`.[consultas/diaz-reyes-municipalidad-de-los-sauces-2.sql][consultas/diaz-reyes-municipalidad-de-los-sauces-3.sql]

Las fichas oficiales de muestra de las OC 3705-240-SE23, 3705-378-SE23 y 3705-92-SE24 identifican la razón social y el mismo RUT societario, reportan la prestación mensual de radiodifusión local y muestran CLP 800.000 por OC.[5][12][14]

La ficha primaria de la licitación la describe como pública y de convocatoria abierta, adjudicada el 06-02-2023.[6]

Pondera vigencia de concesión radial (70%), presencia de sucursal en la comuna (15%) y precio (15%).[6]

La ficha identifica a Juan Jiménez Cayul como responsable del contrato, no a la declarante; el campo no informa quién ofertó ni evaluó.[6]

Es una explicación legítima y específica de selección compatible con un servicio local de radiodifusión, pero no demuestra qué puntajes obtuvo la empresa ni el papel de Díaz Reyes en el municipio.[6][13]

Un informe primario de la Fiscalía Nacional Económica, fechado en 2016, documenta una solicitud de transferencia de una concesión radial FM a la empresa individual y consigna entonces a Díaz Reyes como su única socia; es antecedente histórico de actividad radial, no prueba de titularidad o control vigente en 2023.[13]

La combinación de una actividad radial preexistente y un proceso de compra abierto debilita una lectura de contratación «a dedo»; no resuelve si la funcionaria tuvo funciones en adquisiciones, comunicaciones, evaluación, autorización, supervisión o recepción.[6][13]

## Mapa de afirmaciones y rutas revisadas (2026-10-06)

1. **Declaración/origen:** consultada la declaración oficial 1052265; confirma nombre completo, institución, cargo genérico, fecha, sociedad, cantidad declarada y marca de no controladora.[8] La URL formada desde el UUID interno (`ID=a868c616a2283df1803f400eebefca01`) mostró «Declaración no disponible»; la consulta SQL proporcionó `source_id=1052265`, con el que se recuperó la declaración oficial.[8] Esto corrige el intento fallido sin sustituir la fuente primaria.
2. **Reproducción independiente del oro:** [`consultas/diaz-reyes-municipalidad-de-los-sauces-1.sql`](../consultas/diaz-reyes-municipalidad-de-los-sauces-1.sql) reproduce identidad y campos de declaración; la consulta 2 agrega códigos de OC distintos antes de sumar; la consulta 3 lista diez órdenes individuales, estados, comprador, proveedor, licitación, valor fuente, moneda y URL.[5][14]

Se verificó RUT societario exacto, diez códigos únicos, diez montos mayores que CLP 1, suma CLP 8.000.000 y fechas extremas 05-05-2023 / 20-02-2024.[5][14]

No se contaron órdenes duplicadas ni entradas nominales de CLP 1 como montos ordinarios.
3. **Fuentes primarias de compra y documentos del expediente:** las fichas oficiales de cuatro OCs y la licitación 3705-127-LE22 muestran contraparte/servicios y datos de convocatoria, fecha, criterios, responsable del contrato y nómina de documentos anunciada.[5][6][12]

La ficha lista documentos administrativos (`DECRETO`, `BASES`, `ANEXO`) y anexos técnico/económicos; su modal identifica `Image_01013.pdf` como anexo administrativo.[6]

Al activar «Ver» para ese documento, el portal abrió el destino `/Procurement/403.html`; el botón «Acta de adjudicación» del pie también redirigió allí. La extracción alternativa del error devolvió «Upstream forbidden»; no se revisaron contenido del PDF, acta, ofertas ni puntajes, y no se eludió el control.[6]
4. **Identidad societaria y explicación de giro:** revisado el informe FNE ILP 568-16 sobre transferencia de concesión radial a la empresa y los registros públicos de Subtel relativos al concurso de radiodifusión de 2022.[11][13]

El informe FNE es evidencia histórica; no se extrapola a la situación de 2023.[13]
5. **Índice institucional y competencia funcional:** consultado el directorio municipal publicado en «Teléfonos municipales»; incluye una línea para la Unidad de Adquisiciones, pero no es una nómina histórica de 2023 ni prueba quién participó en esta licitación.[4]

Búsquedas exactas del nombre y código de proceso en el dominio municipal no aportaron acta de evaluación, decreto ni constancia del rol de Díaz Reyes.[4]
6. **Rutas secundarias, alternativas y búsqueda exacta:** abierto un perfil agregador de proveedor que reporta tres licitaciones adjudicadas; se conserva como pista secundaria, no se usa para cifras ni atribuciones.[2] El 2026-10-06 se buscaron literalmente `"3705-127-LE22" decreto bases acta adjudicación`, `"Image_01013.pdf" "3705-127-LE22"` y `site:munilossauces.cl "3705-127-LE22"`; no apareció una copia oficial exacta del expediente en los resultados y la consulta municipal exacta no devolvió resultados. La primera búsqueda devolvió páginas no relacionadas de Mercado Público y otros dominios, que se descartaron. Se revisó también el resultado indexado del Fondo de Medios 2023, pero la extracción rechazó esa URL como destino privado/interno; no se eludió el bloqueo ni se usó como hecho.
7. **Deduplicación editorial:** búsqueda literal en `INDICE.md`, fichas de investigación y casos publicados encontró el caso de Nancy Díaz Reyes ya publicado en `casos/autocontratacion/diaz-reyes-municipalidad-de-los-sauces.md`. Esta actualización queda asociada a ese caso; no se crea un caso nuevo ni se modifica `main`.

## Alternativa más plausible, incertidumbre y decisión

La explicación legítima más plausible es que el municipio adquiriera espacios o servicios de radiodifusión local a un proveedor del rubro mediante una licitación pública y abierta, con criterios publicados centrados principalmente en la vigencia de la concesión radial.[6][13]

La evidencia consultada no confirma si otras radios ofertaron, cómo se puntuó a cada postulante, quién representó al proveedor ni si Díaz Reyes intervino o se abstuvo.[4][6][13]

La declaración registra cargo genérico «Otro» y marca la participación como no controladora pese a informar cantidad 100; no se resuelve esa tensión con una inferencia propia.[8] El informe FNE de 2016 no acredita vigencia del vínculo societario ocho años después.[13]

El directorio municipal accesible hoy nombra una encargada de la Unidad de Adquisiciones, pero no permite establecer la función formal de Díaz Reyes al momento de la licitación o de las órdenes.[4]

**Decisión:** `requiere humano`; no hay nuevo caso. La pasada pública amplia confirma el cruce de declaración y órdenes, y fortalece la explicación de una compra de radiodifusión por licitación abierta; el gate de atribución funcional/intervención personal sigue sin cumplirse.

**Gestión humana exacta:** obtener y leer los anexos oficiales de la licitación 3705-127-LE22 (ofertas, acta/informe de evaluación, decreto de adjudicación y convenio), identificar adjudicatario y puntajes; cotejarlo con nombramiento/funciones oficiales de Díaz Reyes en el municipio en 2022–2024 y cualquier constancia de participación o abstención. Si el portal no expone los anexos, una persona autorizada debe acceder por la vía pública ordinaria; no eludir CAPTCHA/login ni solicitar información en esta corrida.

## Sources

[2] https://www.todolicitaciones.cl/proveedor/764902661/emisiones-nancy-marisol-diaz-reyes-eirl — TodoLicitaciones: proveedor
    > "Licitaciones Adjudicadas (3)"
[4] https://www.munilossauces.cl/secciones/5801 — Municipalidad de Los Sauces: teléfonos
    > "Unidad de Adquisiciones | Evelyn Palma Sobarzo"
[5] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3705-240-SE23 — Mercado Público: OC 3705-240-SE23
    > "Fecha de Envío | 05-05-2023"
    > "TOTAL OC | $ 800.000"
    > "Razón Social | EMISIONES NANCY MARISOL DIAZ REYES EIRL"
    > "R.U.T. | 76.490.266-1"
[6] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?qs=Ydfg0AqPNnmX0rBsCcpKHg== — Mercado Público: licitación 3705-127-LE22
    > "Pública-Licitación Pública igual o superior a 100 UTM e inferior a 1.000 UTM (LE)"
    > "Fecha de Adjudicación: 06-02-2023 18:01:46"
    > "1 TIEMPO DE VIGENCIA DE CONCESIÓN RADIAL | SEGÚN PUNTO 7.2 DE LAS BASES | 70%"
    > "2 PRESENCIA DE SUCURSAL EN LA COMUNA | SEGÚN PUNTO 7.3 DE LAS BASES | 15%"
    > "3 Precio | SEGÚN PUNTO 7.1 DE LAS BASES | 15%"
    > "Tipo de convocatoria: ABIERTO"
    > "Las ofertas técnicas serán de público conocimiento una vez realizada la apertura técnica de las ofertas."
    > "Nombre de responsable de contrato: JUAN JIMENEZ CAYUL"
    > "Documentos Administrativos 1.- DECRETO 2.- BASES 3.- ANEXO Documentos Técnicos 1.- ANEXO TECNICO 1.- ANEXO ECONOMICO"
[8] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1052265 — InfoProbidad: declaración 1052265
    > "Cargo o función | Otro"
    > "Nombre o Razón Social | EMICIONES NANCY MARISOL DIAZ EIRL"
    > "R.U.T. | 76.490.266-1"
    > "Tiene Calidad de Controlador | false"
[11] https://www.subtel.gob.cl/wp-content/uploads/2022/01/Memo_2086_22_con_info1_FM_2022_1.pdf — Subtel: memorándum concurso 2022
    > "EMISIONES NANCY MARISOL DÍAZ REYES E.I.R.L."
[12] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3705-378-SE23 — Mercado Público: OC 3705-378-SE23
    > "Fecha de Envío | 04-07-2023"
    > "Razón Social | EMISIONES NANCY MARISOL DIAZ REYES EIRL"
    > "R.U.T. | 76.490.266-1"
    > "TOTAL OC | $ 800.000"
[13] http://www.fne.gob.cl/wp-content/uploads/2016/09/ilpr_057_2016-568-16.pdf — FNE: Informe ILP 568-16
    > "su Unica socia es dofia Nancy Marisol Diaz Reyes."
[14] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3705-92-SE24 — Mercado Público: OC 3705-92-SE24
    > "Fecha de Envío | 20-02-2024"
    > "TOTAL OC | $ 800.000"
    > "Razón Social | EMISIONES NANCY MARISOL DIAZ REYES EIRL"
