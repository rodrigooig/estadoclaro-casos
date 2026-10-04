# Mónica Valeska Soto Silva y Constructora Santa Monica Limitada — evidencia insuficiente

- **ID:** `monica-valeska-soto-constructora-santa-monica`
- **Categoría:** compras/relaciones con el Estado; patrimonio y actividades.
- **Estado:** evidencia insuficiente; no preparar caso.
- **Fecha de revisión:** 2026-10-04.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; copia local reportada sin cambios desde la sincronización.
- **Identidad:** coincidencia de nombre completo en la declaración de InfoProbidad; esa misma fuente identifica el cargo y el Poder Judicial. La razón social y el RUT societario se cotejaron con órdenes primarias. No se atribuyen registros por nombre parecido.[17][10]

## §0 Veredicto

La declaración de 31-03-2023 registra a Mónica Valeska Soto Silva como jueza del Poder Judicial y titular declarada del 15,38% de Constructora Santa Monica Limitada.[17]

Un extracto societario reproducido de la escritura pública de 06-09-2023, publicado el 14-09-2023, consigna la transferencia total de sus derechos sociales.[5]

En el oro constan 17 órdenes únicas del mismo RUT societario, enviadas entre 26-08-2020 y 18-05-2023, por CLP 401.044.275 nominales en conjunto.

Dos órdenes por CLP 28.753.618 y CLP 38.577.903 se cotejaron con sus fichas primarias.[10][11][15]

Esto documenta compras municipales durante el período cubierto por declaraciones que registran la participación, pero no acredita intervención de la jueza en ofertas, evaluación, adjudicación, ejecución o pago, ni que haya conocido causas relacionadas.

El subtotal CLP 401.044.275 es suma nominal del artefacto, no pago confirmado o ingreso personal; el resto del universo no se validó orden por orden.

Se mantiene **evidencia insuficiente**, sin borrador de caso.

## Mapa de afirmaciones

- **Interés declarado (hecho reportado por declaración):** InfoProbidad, declaración 31-03-2023, consigna el cargo «Juez», organismo «Poder Judicial», razón social «CONSTRUCTORA SANTA MONICA LIMITADA», el RUT societario y cantidad/porcentaje 15,38; fecha de adquisición declarada 14-01-2008. Esto prueba lo informado al portal, no titularidad auditada por un tercero.[17]
- **Cambio societario (hecho reportado por extracto):** la escritura pública de 06-09-2023 consigna la transferencia total de los derechos sociales de Soto Silva; el extracto se publicó el 14-09-2023. El acceso al documento oficial por el portal del Diario Oficial no se completó durante esta pasada; VLex reproduce el texto del extracto, por lo que se trata como fuente secundaria y no como verificación independiente del acto.[5]
- **Declaraciones posteriores:** la declaración 31-03-2024 muestra «No tiene información declarada» en sociedades nacionales; el resumen de la declaración 01-04-2026 también muestra esa condición.[13][18] Se toma como dato del formulario, no como prueba independiente del registro societario.
- **OC anterior a la transferencia:** la OC 3565-145-SE22 fue enviada el 01-04-2022 a Constructora Santa Monica Limitada, RUT societario coincidente, por CLP 28.753.618; la ficha 3565-27-CO22 la clasifica como licitación privada y convocatoria cerrada, para construcción/ampliación/mejoramiento de viviendas en Teodoro Schmidt.[10][11] La ficha identifica que serían dos viviendas nuevas, ampliación de dos y mejoramiento de siete; el título dice «AÑO 2022», mientras una especificación del producto dice «AÑO 2020». Se deja registrada esa discrepancia sin resolverla.[11]
- **Otra OC anterior:** la OC 3935-108-SE23 fue enviada el 18-05-2023 por la Municipalidad de Freire por CLP 38.577.903, al mismo RUT societario, desde la licitación pública y abierta 3935-21-LE23.[15][16] El objeto indicado es construcción y reparación de viviendas del Programa Habitabilidad 2021.
- **Orden posterior al traspaso:** la OC 3836-895-SE23, emitida el 10-11-2023 al mismo RUT societario por CLP 22.649.822, deriva de la licitación pública 3836-29-LE23. Esa licitación se publicó el 28-09-2023 y se adjudicó el 16-10-2023; el llamado y la orden son posteriores a la transferencia reportada del 06-09-2023.[5][8][9] Esta compra societaria posterior no se atribuye a los derechos previamente declarados por Soto Silva.
- **Relevancia posible:** el interés público está en que una jueza declaró una participación en una constructora que contrató con municipalidades mientras aquella participación aún aparece en su declaración; eso no demuestra intervención personal ni relación con causas que ella haya conocido.[17][10][15]

## Pasada amplia y rutas examinadas (2026-10-04)

1. **Deduplicación:** se buscó el nombre completo, la empresa y el RUT societario en `INDICE.md`, fichas existentes y casos publicados; no apareció un registro de esta pista. La revisión no sustituye búsquedas por variantes desconocidas ni prueba ausencia absoluta.
2. **Minería del oro:** se guardaron cuatro consultas. La consulta 1 reproduce nueve declaraciones de 2017–2023 con una participación reportada de 15,38%; la consulta 2 devuelve 21 filas de OC ligadas a la persona, de las cuales 17 preceden al 06-09-2023; la consulta 3 agrupa por RUT societario y fecha, y entrega para esas 17 órdenes únicas un nominal agregado del artefacto de CLP 401.044.275, seis compradores, 15 licitaciones y fechas entre 26-08-2020 y 18-05-2023. La comprobación adicional de cada código contra `purchase_order` devolvió una fila por orden y los mismos importes individuales; esto solo descarta duplicación en esa tabla, no acredita pagos. La consulta 4 separa `same_institution`: 0 verdaderos, 14 falsos y 3 NULL; el filtro por texto de comprador registra 0 nombres con «PODER JUDICIAL». El campo `route` en las 17 filas marca 15 licitaciones públicas, una privada y una adquisición hasta 30 UTM; son etiquetas del cruce, no revisión de cada expediente.
3. **Identidad, actividad y serie de declaraciones:** InfoProbidad se revisó para 31-03-2023 y 31-03-2024, y para el resumen de 01-04-2026.[13][18]

El formulario de 2023 registra el 15,38%; los posteriores revisados no listan esa sociedad.[17][18]

La ficha noticiosa del Poder Judicial identifica a Mónica Soto Silva como jueza del Juzgado de Letras del Trabajo de Temuco.[14]
4. **Origen societario y traspaso:** búsqueda exacta por razón social, CVE 2377230, RUT societario y fecha de escritura. Se abrió la página oficial del Diario Oficial y su verificador: la ruta PDF directa redirigió a portada y el verificador exigió captcha; no se eludió ese control. VLex reproduce el extracto societario, pero no constituye una verificación independiente del acto.[5]
5. **Fichas primarias de contratación:** se cotejaron las OCs 3565-145-SE22 y 3935-108-SE23; sus fichas confirman razón social/RUT y montos reportados.[10][15]

Se revisaron las licitaciones asociadas; la ficha de 3565-27-CO22 dice privada/cerrada y el texto revisado no explica el motivo de esa convocatoria.[11][16]

La OC de Toltén es posterior al traspaso y la ficha 3836-29-LE23 describe una convocatoria pública/abierta.[8][9]
6. **Rutas exactas y portales alternativos:** se buscaron en web códigos 3565-27-CO22, 3935-21-LE23 y 3836-29-LE23 junto a la razón social; también «Mónica Valeska Soto Silva» junto a la razón social/RUT y búsquedas restringidas a `pjud.cl` por nombre y sociedad. Las consultas indexadas no devolvieron actas nominativas que vinculen a la jueza con la preparación, evaluación o administración de esos contratos. Esto solo describe los resultados de búsqueda del 04-10-2026: no demuestra que esos documentos no existan en anexos o en otros expedientes.
7. **Explicación legítima más plausible y contraste:** las licitaciones de Freire y Teodoro Schmidt describen obras de vivienda y registran convocatoria abierta.[11][16]

La ficha de Teodoro Schmidt, en cambio, clasifica el proceso como privado/cerrado; el texto revisado no explica el motivo ni identifica a quiénes invitaron.[11]

La hipótesis alternativa es actividad comercial ordinaria de la sociedad, seguida por una transferencia antes de la orden de Toltén emitida en noviembre de 2023.[5][8]

Las fuentes revisadas no documentan intervención de la jueza en las compras anteriores.
8. **Cobertura judicial y límites:** la noticia oficial consultada identifica a Mónica Soto Silva como jueza del Juzgado de Letras del Trabajo de Temuco; no fue una búsqueda exhaustiva del historial de causas. No se halló una coincidencia indexada exacta con la empresa en las búsquedas señaladas. No se infiere que nunca haya conocido una causa con partes relacionadas.[14]

## Evaluación adversarial y gate editorial

- **Identidad:** coincidencia exacta del nombre completo, cargo y organismo en la declaración; coincidencia de RUT societario en la participación y en fichas de OCs. Sin atribución por homonimia.[17][10][15]
- **Temporalidad:** al menos dos OCs primarias revisadas anteceden al traspaso; la tercera seleccionada es posterior y no se atribuye a los derechos societarios anteriores de la declarante. El artefacto cuenta 17 órdenes pretraspaso por CLP 401.044.275 nominales; no se contrastó individualmente todo ese monto contra fichas primarias.
- **Error de cruce:** el cotejo de las tres OCs por razón social y RUT societario respalda los vínculos específicos. No se afirma que las 17 estén individualmente verificadas.
- **Explicación alternativa:** la actividad comercial de la constructora comprende obras de vivienda para municipalidades; dos licitaciones revisadas constan como abiertas.[11][16] Otra licitación fue privada/cerrada, y las fuentes consultadas no explican el motivo de esa convocatoria.[11] No se infiere legalidad o ilegalidad a partir de estas etiquetas.
- **Vacío decisivo:** no hay documento revisado que ubique a la jueza en las decisiones municipales de compra, ni que vincule contratos a un acto de su función judicial. `same_institution` entrega 0 `true`, 14 `false` y 3 `NULL` en los 17 registros pretraspaso; NULL se conserva como «no se pudo determinar», no se convierte en falso. Tampoco aparece comprador Poder Judicial en el filtro textual revisado.
- **Contraste independiente:** no se obtuvo un revisor humano que no haya escrito la ficha; la falsificación realizada aquí separó órdenes por la fecha del traspaso y recontó por tabla canónica de compras, pero no reemplaza una revisión externa.

**Decisión:** mantener **evidencia insuficiente**, no declarar conflicto, infracción ni intervención y no preparar caso. El gate falla por no contar con relevancia funcional o intervención individual demostrada; la cifra agregada de órdenes no está contrastada en su totalidad con las fichas primarias. No se solicita gestión humana ahora: el vacío no impide documentar el límite ni hace necesario superar el captcha societario para esta decisión.

**Reapertura concreta:** solo ante un documento público que nombre a la jueza en la presentación/evaluación/recepción de un contrato mientras tenía la participación, una causa judicial identificada donde se plantee un vínculo pertinente, o acceso público verificable a los anexos de la licitación privada que cambie la valoración. Si nada de eso aparece, no repetir las búsquedas ya agotadas ni tratar nuevas compras posteriores al traspaso como actividad personal.

## Sources

[5] https://vlex.cl/vid/constructora-santa-monica-limitada-942944656 — Extracto Diario Oficial CVE-2377230, reproducido en VLex
    > "vende, cede y transfiere la totalidad de sus derechos sociales a don IVAN ANGEL LEONARDO FUENTEALBA CERON"
    > "por escritura pública fecha seis de septiembre del año dos mil veintitres"
[8] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3836-895-SE23 — Mercado Público, orden 3836-895-SE23
    > "TOTAL OC | $ 22.649.822"
    > "Fecha de Envío | 10-11-2023"
[9] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=3836-29-LE23 — Mercado Público, licitación 3836-29-LE23
    > "Fecha de Publicación: 28-09-2023 13:10:34"
    > "Fecha de Adjudicación: 16-10-2023 11:35:02"
[10] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3565-145-SE22 — Mercado Público, orden 3565-145-SE22
    > "TOTAL OC | $ 28.753.618"
    > "R.U.T. | 76.007.279-6"
    > "Fecha de Envío | 01-04-2022"
[11] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=3565-27-CO22 — Mercado Público, licitación privada 3565-27-CO22
    > "Tipo de convocatoria: CERRADO"
[13] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5114840 — InfoProbidad, declaración 01-04-2026
    > "No tiene información declarada"
    > "Fecha | 01-04-2026"
[14] https://www.pjud.cl/prensa-y-comunicaciones/noticias-del-poder-judicial/117863 — Poder Judicial, noticia sobre jueza del Juzgado de Letras del Trabajo de Temuco
    > "La jueza Mónica Soto Silva"
[15] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3935-108-SE23 — Mercado Público, OC 3935-108-SE23
    > "TOTAL OC | $ 38.577.903"
    > "Fecha de Envío | 18-05-2023"
    > "R.U.T. | 76.007.279-6"
[16] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=3935-21-LE23 — Mercado Público, licitación 3935-21-LE23
    > "Tipo de convocatoria: ABIERTO"
[17] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5077544 — InfoProbidad, declaración 31-03-2023 de Mónica Valeska Soto Silva
    > "Cantidad / Porcentaje | 15.38"
    > "Cargo o función | Juez"
    > "Nombre o Razón Social | CONSTRUCTORA SANTA MONICA LIMITADA"
    > "R.U.T. | 76.007.279-6"
    > "Fecha | 31-03-2023"
[18] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5087197 — InfoProbidad, declaración 31-03-2024 de Mónica Valeska Soto Silva
    > "No tiene información declarada"
    > "Fecha | 31-03-2024"
