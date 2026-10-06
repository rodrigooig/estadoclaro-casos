# Gonzalez Salazar — participación declarada y capacitación al Estado

- **ID:** `jorge-gonzalez-salazar-capacitacion-20261006`
- **Categoría:** patrimonio e intereses; compras/relaciones con el Estado; actividades/cargos/temporalidad.
- **Estado:** evidencia insuficiente; no borrador de caso.
- **Fecha de revisión:** 2026-10-06 UTC.
- **Corte del oro:** `meta.build_date=2026-10-06T15:56:08+00:00` (descarga R2 informada por pre-run). SQL solo lectura con `ec-gold-sql`.

## Decisión

La pantalla de órdenes a proveedores controlados y no ampliamente difundidos encontró una coincidencia no indexada: Jorge Gabriel Gonzalez Salazar, juez del Poder Judicial, declara como controlador el 50% de González y Cía. Ltda. (RUT societario 76.164.688) y el artefacto atribuye a ese proveedor seis órdenes en su ventana declarativa, por CLP 86.875.924 nominales, entre julio de 2024 y mayo de 2026. La declaración vigente de 22-06-2026 mantiene la participación y la registra con giro de capacitación.[1]

La atribución de identidad queda corroborada por nombre completo, cargo declarado y coincidencia exacta del RUT societario entre declaración y Mercado Público.[1][3] El hecho medido no acredita que Gonzalez Salazar haya trabajado personalmente en las prestaciones, intervenido en evaluaciones, solicitado o autorizado compras, ni influido en compradores. Ninguna de las seis órdenes corresponde al Poder Judicial; `n_same_institution=0` en la fila agregada del oro. Las dos licitaciones CONADI 2024 figuran como convocatorias públicas abiertas y cubren formación/patrimonio cultural.[4][5] La compra de Cholchol en 2026 también proviene de licitación abierta y se refiere a talleres psicosociales y actividades de autocuidado.[2][3]

**Decisión editorial:** no redactar caso. La explicación legítima más plausible y compatible con lo revisado es actividad de una empresa declarada de capacitación que participa en compras de formación/cultura de distintos organismos mediante procesos abiertos; las demás órdenes revisadas también describen capacitación o logística. Esto no demuestra por sí solo que todas las adjudicaciones fueran regulares ni descarta un rol individual: los anexos de ofertas y evaluación no se revisaron. No se observó una conexión funcional con el Poder Judicial ni una compra al empleador declarado. Mantener en evidencia insuficiente hasta que aparezca evidencia primaria de intervención personal o un vínculo funcional concreto con una decisión/contrato.

## Mapa de afirmaciones

| Afirmación que se evalúa | Qué la establece / refuta | Resultado | Incertidumbre persistente |
|---|---|---|---|
| Identidad y participación societaria declarada | Declaración InfoProbidad ID 5118662; consulta exacta por nombre completo y serie de declaraciones; coincidencia del RUT societario con el proveedor | La declaración del 22-06-2026 nombra a JORGE GABRIEL GONZALEZ SALAZAR como juez del Poder Judicial, registra 50% y calidad de controlador; la consulta recupera 12 snapshots entre 2017 y 2026 con la misma participación. La fuente primaria no declara fecha de adquisición. | Son declaraciones del titular y snapshots; no prueban titularidad ininterrumpida entre fechas ni auditada. No se publica RUT personal. |
| Órdenes y materialidad atribuible al proveedor declarado | `consultas/...-3.sql`, deduplicada por código de OC; contraste de registros oficiales seleccionados | Seis códigos únicos, CLP 86.875.924 nominales. El artefacto los clasifica `during`; no se sumaron repetidos de snapshots. Una fila agregada marca 5 compradores, 1 trato directo, 3 Compra Ágil, `n_same_institution=0`, similitud de razón social 0,85 y un solo declarante. | No se le atribuye ejecución o participación personal al titular solo por ser controlador declarado. La OC de Lonquimay no se verificó individualmente en ficha primaria durante esta pasada. |
| Naturaleza de dos compras CONADI 2024 | Fichas y OCs oficiales 765-33-LE24 / 765-303-SE24 y 809-35-LE24 / 809-116-SE24 | Ambas licitaciones figuran como públicas, convocatoria abierta; la primera trata sobre Escuelas Patrimoniales de arte y oficio, la segunda sobre formación de cultores mapuche. OCs: CLP 46.000.000 y CLP 20.000.000; el mismo RUT proveedor aparece en la ficha de OC, aunque una muestra una razón social extendida distinta. | No descargué ni revisé las ofertas completas, el acta/anexo de evaluación ni la ejecución contractual. La convocatoria abierta no demuestra por sí sola igualdad efectiva ni ausencia de intervención. |
| Compra de Cholchol 2026 y explicación de capacitación | Ficha oficial 4993-36-LE26 y OC 4993-220-SE26; comparación con el giro de la declaración | Licitación pública abierta, adjudicada el 05-05-2026; OC enviada ese día por CLP 13.750.000, proveedor con RUT coincidente. El objeto de la ficha incluye talleres psicosociales, contención emocional y autocuidado. | Sin ofertas/anexos, no se identifica quién preparó, evaluó o administró el proceso ni quién realizó el servicio. |
| Temporalidad / competencia funcional | Declaración vigente y listado de seis OCs deduplicadas; contraste del comprador con la institución declarada | La declaración consigna juez en Poder Judicial desde 01-04-2001; compradores identificados son CONADI, Municipalidad de Lonquimay, Servicio de Salud Araucanía Sur, Municipalidad de Cholchol y JUNAEB. No aparece compra del Poder Judicial; `same_institution=false` en dos filas y NULL en otras cuatro, que significa no se pudo determinar, no organismo distinto. | No se buscaron expedientes laborales o permisos de actividad privada del juez; las OCs no acreditan intervención individual. No se interpreta si las reglas jurídicas aplican a cada comprador o rol. |

## Rutas examinadas — 2026-10-06 UTC

1. **Minería transversal distinta de la pantalla de proveedores repetida:** consulta de actuales con participación controladora, empresa no ampliamente difundida, al menos tres OCs en período y señal de trato directo/Compra Ágil (`...-1.sql`). De 18 filas, el registro de Gonzalez Salazar mostró seis OCs / CLP 86.875.924 / cinco compradores; `name_similarity=0.85`. Se deduplicó nombre completo y empresa/RUT contra INDICE.md y el README de casos: no había ficha ni caso suyo. Las coincidencias más altas de la pantalla ya estaban indexadas/publicadas; no se abrieron.
2. **Origen del dato e identidad:** búsqueda exacta en la declaración primaria ID 5118662; búsqueda SQL exacta del nombre completo en todas las declaraciones (12 snapshots). La página confirma juez, institución, fecha de asunción y la sociedad con RUT societario 76.164.688-5, 50%, controlador y giro CAPACITACION.[1]
3. **Cruce y antídoto al doble conteo:** consulta independiente `...-3.sql` agrupa por `order_code`, no por declaración; obtuvo seis códigos distintos, desde 765-303-SE24 hasta 1802-37-AG26. La suma única reportada por la fila agregada es CLP 86.875.924, no una suma de duplicados de snapshots. Se verificaron primariamente cinco OCs más materiales/relacionadas a procesos localizados (46m, 20m, 13,75m, 3,15m y 2,999999m); no se comprobó individualmente la OC de Lonquimay.
4. **Expediente CONADI y fuente alternativa:** búsquedas exactas por IDs 765-33-LE24 y 809-35-LE24 en fichas oficiales de Mercado Público y sus OCs 765-303-SE24 y 809-116-SE24. Ambas fichas describen licitación pública con convocatoria abierta; la primera fue adjudicada el 23-07-2024 y la segunda el 29-10-2024.[4][5] Las OCs identifican el RUT societario y montos de CLP 46.000.000 / CLP 20.000.000.[9][10] Búsqueda exacta también recuperó el acta de adjudicación de 765-33-LE24 en el buscador, pero no se descargó ni revisó como documento independiente. No se encontró un documento primario que nombre al juez en comité/evaluación.
5. **Compra reciente e hipótesis que la explica:** se abrió ficha y OC oficiales de Cholchol 4993-36-LE26 / 4993-220-SE26. La ficha declara convocatoria abierta, criterios de evaluación (propuesta técnica, precio y otros), objeto de talleres psicosociales y adjudicación el 05-05-2026; la OC al mismo RUT asciende a CLP 13.750.000.[2][3] Esto respalda la explicación ordinaria de capacitación como actividad de la sociedad, sin probar quién la ejecutó ni descartar intervención.
6. **Contraste sectorial e identificador societario:** búsqueda exacta del RUT/proveedor localizó OCs para un taller de cosmovisión mapuche en salud (Servicio de Salud Araucanía Sur, CLP 3.150.000) y logística de capacitación JUNAEB (CLP 2.999.999); ambas son posteriores a la declaración 2025 y anteriores a la vigente 2026, y la sociedad vuelve a aparecer en la declaración de 2026.[1][11][12] La búsqueda exacta de la modificación societaria (CVE 2583835) encontró una referencia secundaria que asocia el RUT societario con «González y Varas Asociados Limitada»; la copia PDF del Diario Oficial no se pudo extraer en esta pasada. En caso de variantes de razón social, prevalece el RUT coincidente y no el nombre aproximado.
7. **Contraste negativo de empleador/intervención:** se buscó en el oro el detalle de las seis OCs y los campos de comprador, `same_institution`, rubro, modalidad, código de licitación y URL; no aparece el Poder Judicial entre compradores. La declaración lista actividades de abogado/juez, pero no vincula la sociedad a su empleo judicial. Esta ausencia solo describe los campos y registros consultados: no demuestra que no haya existido participación no publicada.

## Evaluación adversarial, límites y próxima acción

- **Dato:** declaración de 2026 mantiene 50% controlador en sociedad con giro CAPACITACIÓN; seis OCs vinculadas por RUT societario durante la ventana calculada, CLP 86.875.924 nominales.
- **Hecho derivado:** hubo compras públicas a esa sociedad por cinco organismos, incluidas dos licitaciones CONADI abiertas de formación/patrimonio cultural. La suma cuenta códigos de OC únicos.
- **Inferencia limitada:** la actividad de capacitación es una explicación congruente con el giro declarado y los objetos descritos; procesos abiertos son compatibles con competencia. Ninguno de esos hechos prueba legalidad, desempeño o ausencia de intervención individual.
- **Hipótesis periodística no acreditada:** que la participación societaria haya influido en decisiones públicas relacionadas con la función judicial. No hay evidencia reunida para afirmarla; los compradores revisados no son el Poder Judicial y no se revisaron expedientes nominativos de evaluación/ejecución.
- **Refutación intentada:** las modalidades, fechas, organismos, objetos y convocatoria de los procesos se contrastaron; no se halló vínculo entre comprador y empleador judicial ni intervención personal. No se confundieron ingresos agregados del proveedor con beneficio personal, ni las OCs repetidas entre snapshots con transacciones diferentes.
- **Bloqueos:** no hubo CAPTCHA, login ni barrera que impidiera la pasada principal. El PDF del Diario Oficial con CVE 2583835 no fue recuperable por web_extract; una referencia secundaria devuelve el mismo RUT y título societario, pero no se usa para afirmar el texto jurídico completo. Los anexos de evaluación/oferta de licitaciones no fueron revisados.
- **Gate:** identidad sí; hecho material reproducible y fuentes primarias sí; relevancia funcional explicable insuficiente; error de cruce descartado razonablemente por RUT exacto y OC primaria en muestra; explicaciones legítimas investigadas y compatibles. Falta prueba de papel individual o conexión concreta con el ejercicio del cargo; no procede borrador.
- **Próxima acción concreta:** no repetir búsquedas generales. Reabrir solo si aparece documento primario de un comité/decisión personal, evidencia de vínculo funcional del juez con algún comprador/contrato, o expediente de oferta/adjudicación que plantee una pregunta concreta nueva. Si una futura pasada requiere ver actas/anexos no disponibles públicamente, describir el documento exacto y la vía ordinaria necesaria; nunca inferir desde el cruce.

No hubo segunda revisión independiente en esta corrida. Las consultas se reejecutaron contra el corte consignado; los registros oficiales citados fueron recuperados directamente. Mantener esta ficha como evidencia insuficiente, no como acusación ni conclusión jurídica.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5118662
    > "Fecha | 22-06-2026"
    > "Tiene Calidad de Controlador | true"
    > "R.U.T. | 76.164.688-5"
[2] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=4993-36-LE26
    > "Tipo de convocatoria: ABIERTO"
    > "Fecha de Adjudicación: 05-05-2026 11:57:02"
    > "Descripción de talleres: Ejecución de talleres psicosociales, espacios de contención emocional, actividades de autocuidado, encuentros comunitarios y una jornada de cierre"
[3] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4993-220-SE26
    > "TOTAL OC | $ 13.750.000"
[4] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=765-33-LE24
    > "Tipo de convocatoria: ABIERTO"
    > "Objeto: Diseño e implementación de Escuelas Patrimoniales de arte y oficio"
[5] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=809-35-LE24
    > "Tipo de convocatoria: ABIERTO"
    > "Objeto: Formación de Cultores Mapuche en la IX región"
[9] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=765-303-SE24
    > "Proveniente de Licitación | 765-33-LE24"
    > "TOTAL OC | $ 46.000.000"
[10] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=809-116-SE24
    > "TOTAL OC | $ 20.000.000"
[11] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1175-2054-AG25
    > "TOTAL OC | $ 3.150.000"
    > "TALLER HISTORIA Y COSMOVISIÓN MAPUCHE EN SALUD"
[12] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1802-37-AG26
    > "TOTAL OC | $ 2.999.999"
    > "Adquisición del servicio de organización y logística para jornadas de capacitación de programas Junaeb"
