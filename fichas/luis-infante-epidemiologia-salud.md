# Luis Antonio Infante Barros — Epidemiología y Gestión / licitación de brechas

- **ID:** `luis-infante-epidemiologia-salud`
- **Estado:** descartada como pista de caso (2026-10-04); no es conclusión sobre otras denuncias o contratos.
- **Corte del oro:** `meta.build_date=2026-10-02T15:43:07+00:00`; consultas ejecutadas con `ec-gold-sql` el 2026-10-04, artefacto local sin cambios.
- **Identidad:** coincidencia del nombre completo en registros del oro y ficha pública InfoProbidad de 2019; no se publica RUT personal.[10]
- **Deduplicación:** búsqueda textual de nombre completo y razón social en los repositorios de casos publicados e investigaciones locales, 2026-10-04; no halló una ficha/caso con esa huella. Búsqueda web también halló una nota secundaria previa sobre Infante y la sociedad.[3] No se usan sus alegaciones como hechos.[3]

## Mapa de afirmaciones

**Hecho medido en el oro.** La consulta `consultas/luis-infante-epidemiologia-salud-1.sql` retorna siete snapshots para Infante con cargos declarados en el Servicio de Salud Metropolitano Sur Oriente (2017 y 2019) y luego en el Metropolitano Norte (2023–2026), asociados a la sociedad EPIDEMIOLOGÍA Y GESTIÓN LTDA y al RUT societario `77.046.310-6`. El registro de 2019 tiene fecha 03-07-2019; no prueba por sí solo la tenencia en la fecha de contratación.[10]

La página InfoProbidad accesible de la declaración 2019 identifica a Infante como director del Servicio de Salud Metropolitano Sur Oriente, muestra la fecha y registra una sociedad declarada en el resumen, pero el detalle completo no quedó visible en esta pasada.[10]
Las fichas InfoProbidad 1080015 (2023) y 1731126 (2026) muestran «Declaración no disponible» al abrirlas.[9][15] La extracción de 2025 solo devolvió el encabezado del portal; los valores de esos snapshots citados aquí son los del oro, no un cotejo visual de las declaraciones completas.

**Hecho medido en el oro y corroborado en fichas oficiales de compra.** La consulta `consultas/luis-infante-epidemiologia-salud-2.sql` encuentra dos códigos para el proveedor, la licitación `4127-25-LE19` y el comprador Subsecretaría de Redes Asistenciales.[6][7]
La OC `4127-103-SE20`, enviada el 17-12-2020 por CLP 45.000.000, figura «Cancelación solicitada».[6] La OC `4127-145-SE21`, enviada el 11-03-2021 por el mismo monto, figura «Aceptada» y su título señala que reemplaza a la anterior.[7]
No sumo ambos códigos como dos compras concluidas ni trato el monto de la orden como pago probado.[6][7]

La ficha oficial describe la licitación como pública, adjudicada el 24-01-2020, para diseñar una metodología de estimación de brechas de médicos y odontólogos para 2020–2030.[14] También publica cinco criterios ponderados de evaluación.[14]
El comprador fue la Subsecretaría de Redes Asistenciales, no el Servicio de Salud Metropolitano Sur Oriente que aparece en la declaración de 2019 ni el Metropolitano Norte de las declaraciones desde 2023.[7][10][14]

**Hecho societario posterior, con límite de fuente.** Una copia alojada por Litoralpress de un extracto identificado como Diario Oficial, publicado el 05-06-2025, informa que una modificación de 26-05-2025 dejó a Infante con 40% y a dos familiares con 30% cada una.[2]
Esto es posterior a las órdenes 2020–2021 y no prueba el porcentaje ni control de Infante en esas fechas.[2]
No se pudo extraer la URL directa del Diario Oficial en esta pasada; se cita la copia, no una verificación independiente de su firma electrónica.[2]

## Rutas examinadas (2026-10-04)

1. **Cribado transversal del oro:** repetición de cuatro consultas amplias previamente guardadas (mismo organismo/proveedor, actividad pagada reciente, pasivos altos, outliers). No apareció otra pista nueva tras deduplicar resultados contra el índice existente.
2. **Proveedor y licitación en el oro:** búsqueda por RUT societario normalizado y por `tender_code`; dos códigos, un comprador, mismo rubro/monto y secuencia cancelación solicitada → reemplazo aceptado.[6][7] Se verificó por separado con consulta de códigos únicos; no se sumaron snapshots de declaración.
3. **Fichas de órdenes y licitación en Mercado Público:** consulta por ambos códigos y por el identificador exacto `4127-25-LE19`; comprador, proveedor, fecha, monto, estado, objeto y mecanismo coinciden con el oro. Las fichas enlazan a anexos, pero esta pasada no accedió ni examinó la evaluación nominada ni el contrato firmado.[6][7][14]
4. **Declaraciones primarias InfoProbidad:** página 2019 visible en navegador, con nombre, cargo y fecha; página 2023 y página de cese 2026 muestran «Declaración no disponible» en web.[9][10][15] La extracción no recuperó el contenido de la ficha 2025. No se eludió ningún control.
5. **Registro societario/Diario Oficial:** se buscó el CVE del extracto de 2025; la copia de Litoralpress fue accesible y la URL directa oficial falló en extracción. La copia consigna el RUT empresarial, fecha de escritura, composición societaria posterior y administración.[2]
6. **Cargo y temporalidad:** Decreto 141 publicado en BCN acredita una designación suplente en 2014, limitada por el propio texto a un plazo máximo de seis meses desde el 02-10-2014; no establece el cargo de Infante en 2020–2021.[5] Una reseña histórica oficial apareció en la búsqueda, pero su URL entregó 404 al abrirla; no se usa como prueba temporal.
7. **Rutas secundarias y refutación:** búsquedas exactas por nombre, sociedad, RUT societario y códigos de compra hallaron un reportaje secundario anterior que plantea un contexto más amplio.[3]
Se usó solo como pista, no para adoptar afirmaciones sobre intervención, relaciones o irregularidades.[3]
La explicación legítima más plausible para esta contratación concreta es un estudio de planificación de dotaciones adjudicado en licitación pública; el código de compra indica que la segunda orden sustituyó a la primera.[7][14]
8. **Búsqueda de intervención personal:** la ficha de licitación y las órdenes revisadas no nombran a Infante como requirente, evaluador, adjudicador, responsable de contrato o receptor.[6][7][14] No se halló aquí un acta de evaluación/contrato que lo vincule personalmente; esto describe las fuentes revisadas, no demuestra que no haya otros documentos.

## Alternativas, límites y decisión

El nexo medido es entre una sociedad declarada en snapshots de Infante y un proveedor que recibió una OC de CLP 45.000.000 bajo una licitación pública de la Subsecretaría de Redes Asistenciales.[7][10][14]

No es una compra al Servicio de Salud Metropolitano Sur Oriente/Norte identificada en las declaraciones y no hay evidencia revisada de que Infante interviniera en la licitación.[7][10]
La coincidencia del sector salud y la titularidad en snapshots separados no basta para atribuirle una decisión o continuidad de propiedad en 2020–2021.[7][14]

La secuencia de dos órdenes, el mismo monto, la marca «Cancelación solicitada» de la primera y el texto «REEMPLAZA» de la segunda refutan contar CLP 90.000.000 como dos contratos concluidos.[6][7]
La contratación pública abierta y el objeto de estimar necesidades de especialistas son compatibles con una compra ordinaria de política sanitaria; no prueban por sí mismos cómo se evaluó la oferta ni quién la ejecutó.[7][14]

**Decisión:** `descartada` como pista de caso para EstadoClaro. No cruza el gate: falta tenencia societaria primaria en la fecha del proceso, relación funcional probada con la unidad compradora y documento de intervención personal. El contrato es material, pero la cifra agregada previa duplicaría una orden reemplazada y el vínculo disponible no es individual.

**Reapertura concreta:** solo con un acta/anexo oficial legible que nombre a Infante en la preparación, evaluación, autorización, administración o recepción del contrato, o con un registro societario/declaración primaria contemporánea que permita reevaluar su condición en 2019–2021. No repetir búsquedas generales ni trasladar a este hallazgo las alegaciones de prensa.

**Revisión adversarial:** consultas de oro separadas para snapshots societarios y órdenes; contraste con fichas primarias de Mercado Público y fuente legislativa BCN. No hubo revisor humano independiente en esta corrida.

## Sources

[2] https://www.litoralpress.cl/SimbiuPDF/2025/06/05/5951199.pdf — Diario Oficial, modificación Epidemiología y Gestión
[3] https://factos.cl/2025/10/06/el-matrimonio-del-poder-sanitario-los-contratos-cruzados-del-director-del-ssmn-y-la-directora-del-isp — Factos, reportaje 6-10-2025
[5] https://www.bcn.cl/leychile/navegar?idNorma=1073245 — BCN Decreto 141 de 2015
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4127-103-SE20
[7] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4127-145-SE21
[9] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1080015
[10] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=402865
[14] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=4127-25-LE19 — Mercado Público licitación 4127-25-LE19
[15] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1731126 — InfoProbidad declaración de cese 2026
