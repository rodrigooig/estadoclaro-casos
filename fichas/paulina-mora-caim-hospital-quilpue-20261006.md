# Paulina Mora Lara — participación declarada en CAIM y compras médicas

- **ID:** `paulina-mora-caim-hospital-quilpue-20261006`
- **Categoría:** patrimonio e intereses; compras/relaciones con el Estado.
- **Estado:** evidencia insuficiente; no preparar caso.
- **Fecha de revisión:** 2026-10-06 UTC.
- **Corte del oro:** `meta.build_date=2026-10-06T15:56:08+00:00`; consultas ejecutadas con `ec-gold-sql` en solo lectura.

## Decisión

La declaración InfoProbidad del 06-03-2024 de **Paulina Alejandra Mora Lara** registra 20% de acciones no controladoras en Centro de Atención Integral para la Mujer SpA (CAIM), RUT societario `77.316.808-3`, con giro declarado de centro médico y fecha de adquisición 23-02-2021.[9]

El oro cruza ese RUT societario con 14 órdenes únicas entre 23-06-2023 y 13-11-2024, por CLP 17.056.200 nominales, a dos compradores: Hospital de Quilpué y Municipalidad de La Calera (`consultas/paulina-mora-caim-hospital-quilpue-20261006-b.sql`, ejecutada 2026-10-06).[4][5][7]
La consulta por comprador devuelve cero códigos con `same_institution=true` y cero con `same_institution=NULL` (`...-c.sql`).
Esto describe el cruce disponible, no descarta otras contrataciones ni prueba el rol individual.

Las fichas oficiales muestran compras de marcaciones radioquirúrgicas/mamografías al Hospital de Quilpué y ecografías ginecológicas al Departamento de Salud de La Calera; identifican al mismo proveedor y RUT societario.[4][5][7]
El sitio de CAIM lo describe como centro médico de imágenes en Quilpué.[2]
Enumera mamografías y ecotomografías.[2]

**No se establece conexión funcional documentada entre la función pública de Mora y esas adquisiciones.**
La fuente oficial la identifica en 2025 como SEREMI de Gobierno de Coquimbo.[3]
Las OCs identifican como compradores al Hospital de Quilpué y la Municipalidad de La Calera.[4][7]
El acto oficial fija el término de su cargo el 11-03-2026.[10]
La identidad y el interés declarado están corroborados; falta evidencia primaria de que haya participado en requerir, cotizar, decidir, administrar o recibir estas compras, o de una atribución de su cargo que las abarque.
No se prepara borrador.

La explicación legítima más plausible, consistente con lo revisado, es que un centro médico vendió servicios de imagenología a compradores públicos de salud en otra región.[2][4][7]
Las fichas disponibles describen las prestaciones y algunas muestran cotizantes; no equivalen a revisar todos los anexos ni identifican a quien tomó la decisión.[5][6][7]
La cercanía temporal entre acciones declaradas y compras es un cruce, no evidencia de intervención o irregularidad.

## Mapa de afirmaciones y rutas examinadas — 2026-10-06 UTC

1. **Identidad, interés y estado de la declaración.** La búsqueda local por nombre completo, sociedad y RUT societario en `INDICE.md` y casos públicos no halló coincidencia nueva.
La declaración primaria InfoProbidad del 06-03-2024 enlaza el nombre completo con CAIM, 20%, carácter no controlador y RUT societario.[9]
Gold (`...-a.sql`) registra ese 20% en snapshots de 30-03-2023, 13-11-2023, 06-03-2024 y 12-12-2024; no lo muestra en los registros de 2025/2026 consultados.
La omisión en snapshots posteriores no demuestra venta ni permanencia.
El ID 1638863 del corte reciente respondió “Declaración no disponible” en InfoProbidad al abrirse en navegador; se usó la declaración primaria de 2024, que sí entregó el detalle.[1][9]
RUT personal no se reproduce.
2. **Medición y deduplicación del oro.** Se guardó y ejecutó `...-b.sql`, agrupando por código de OC antes de sumar.
Resultado: 14 órdenes, 2 compradores, fechas 2023-06-23 a 2024-11-13 y CLP 17.056.200 nominales; las fichas cotejadas corresponden a ese proveedor y compradores.[5][7]
`...-c.sql` desglosa Hospital de Quilpué (13 códigos, CLP 16.336.200) y Municipalidad de La Calera (1, CLP 720.000); los compradores se cotejaron con fichas.[4][7]
La consulta arroja `same_institution=true=0` y `NULL=0`.
Se excluyeron repeticiones de códigos `during`/`after_1y` agrupando por `order_code`; no se sumó dos veces una OC.
Los montos son nominales del artefacto, no ajustados a hoy.
3. **Fichas primarias de compra / comprobación de la coincidencia societaria.** Se revisaron tres OCs de 2023 del Hospital de Quilpué: `4968-1278-AG23`, `4968-1769-AG23` y `4968-1928-AG23`.[5][6][12]
También se revisaron la OC `4968-2866-AG25` del Hospital y la `3561-603-AG24` de La Calera.[4][7]
Las páginas identifican al proveedor CAIM y RUT societario `77.316.808-3`.[4][5][7]
Las fichas de 2023 describen marcaciones radioquirúrgicas/mamografía; la OC de 2025 describe diez marcaciones y mamografía, y la de La Calera describe ecografías transvaginales para mujeres de 45–64 años.[4][5][7]
Las OCs de agosto/septiembre 2023 incluyen RUT de otros cotizantes.[6][12]
Ese dato no permite concluir que el procedimiento completo estuviera exento de problemas.
La ficha de 2025, posterior al período medido por la ventana `during`, se usó solo para verificar el rubro del proveedor, no para ampliar el total.[4]
4. **Explicación del producto/servicio.** El sitio institucional de CAIM consultado el 06-10-2026 lo describe como centro médico de imágenes en Quilpué.[2]
El sitio también enumera mamografías y ecotomografías.[2]
Estos servicios coinciden con los objetos de las órdenes primarias.[4][7]
Esa congruencia es contexto, no prueba de selección correcta ni de ausencia de otros antecedentes.
5. **Cargo, región y temporalidad.** La declaración InfoProbidad de 2024 ubica a Mora en Coquimbo como SEREMI de Gobierno.[9]
El Diario Oficial de 2025 la identifica en ese cargo y región.[3]
El perfil institucional del GORE también la lista como SEREMI de Gobierno.[11]
El Diario Oficial publicó en 2026 la aceptación de su renuncia efectiva desde 11-03-2026.[10]
Estas fuentes confirman la ubicación institucional, pero no detallan su participación en contrataciones.
Las fichas identifican como compradores al Hospital de Quilpué y la Municipalidad de La Calera.[4][7]
6. **Búsqueda de falsificación y vías alternativas.** Consultas web exactas del 06-10-2026 por nombre completo, nombre más SEREMI/Coquimbo, RUT societario y códigos de OC; no apareció documento oficial que nombre a Mora en el proceso de compra.
Se revisaron fichas oficiales de los códigos y se contrastó la lectura de que el producto no fuera un servicio médico con el sitio del proveedor; ambos describen imagenología.[2][4][5]
La ficha del portal muestra “Ver Anexos”, pero los anexos no se descargaron en esta pasada; no se buscó ni obtuvo expediente interno.[4]
No se halló evidencia de intervención, pero esto no prueba que no exista.
7. **Contraste funcional / hipótesis contraria.** La señal que justificaría profundizar es la coincidencia entre acciones declaradas y ventas repetidas al Estado.[9][5][7]
Pero no se acreditó compra a la institución que aparece en las declaraciones ni vínculo funcional personal; las fichas identifican compradores de salud de otra región y las prestaciones médicas descritas coinciden con lo que el proveedor ofrece.[2][4][7]
No se afirma que una SEREMI de Gobierno carezca de toda atribución transversal ni que las ventas fueran necesariamente ajenas a cualquier decisión de Mora; para sostener tal enlace haría falta un acto, expediente o anexo que la nombre o una competencia específica documentada.

## Gate editorial, límites y próxima acción

- **Identidad:** coincidencia completa del nombre en declaración primaria y fuentes oficiales de cargo; no se atribuyó registro de homónimo.[3][9]
- **Hecho reproducible:** interés societario y cruce de 14 OCs respaldados por declaración y consultas SQL guardadas; las fichas primarias identifican proveedor/compradores. Para una historia publicable faltan los anexos/actos que expliquen selección e intervención.[4][7][9]
- **Relevancia pública:** potencial acotado por ventas de un interés declarado a compradores públicos; el vínculo funcional con el cargo conocido no está establecido.[3][4][7]
- **Error de datos/cruce:** RUT societario coincidente en declaración y fichas, conteo por código único; se preservan montos nominales y no se suman etiquetas temporales superpuestas.[4][7][9]
- **Alternativa legítima:** prestación de imagenología a compradores de salud; respaldada por los objetos de OC y el sitio del prestador, sin que ello verifique por sí solo cotizaciones o selección.[2][4][7]
- **Contraste independiente:** no hubo segundo revisor. Reejecuté consultas de persona/snapshot y de RUT/proveedor por vías separadas; la ficha no atribuye compras agregadas a Mora.
- **Próxima acción:** mantener `evidencia insuficiente`; no repetir búsquedas generales. Reabrir únicamente si se obtiene por vía pública ordinaria un anexo/acta que nombre a Mora en la solicitud, cotización, decisión o administración de una OC, o una fuente primaria que documente competencia concreta sobre estos compradores/procesos. No se requiere gestión humana con la evidencia actual.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1638863 — InfoProbidad declaration ID 1638863
    > "Declaración no disponible"
[2] https://caim.cl — CAIM clinic website
    > "Centro Médico Imágenes en Quilpué"
[3] https://www.diariooficial.interior.gob.cl/publicaciones/2025/05/17/44151/01/2644335.pdf — Diario Oficial SEREMI Government roster 2025
    > "Paulina Mora Lara"
    > "Secretaria Regional Ministerial de Gobierno Región de Coquimbo"
[4] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?qs=ph95N3Lz2bw4oCddjTDrKA== — Mercado Público OC 4968-2866-AG25
    > "TOTAL OC | $ 2.965.000"
    > "R.U.T. | 77.316.808-3"
[5] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4968-1278-AG23 — Mercado Público OC 4968-1278-AG23
    > "TOTAL OC | $ 1.029.150"
    > "R.U.T. | 77.316.808-3"
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4968-1769-AG23 — Mercado Público OC 4968-1769-AG23
    > "Número de la Orden de Compra | 4968-1769-AG23"
    > "Proveedor | CAIM"
[7] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3561-603-AG24 — Mercado Público OC 3561-603-AG24
    > "ECOGRAFIAS TRANSVAGINAL EN DEPENDENCIAS DEL DEPARTAMENTO DE SALUD DE LA CALERA."
    > "Proveedor | CAIM"
[9] https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=e7ca5c2a6768b5d001448ba87f842856 — InfoProbidad searched declaration record
    > "Tiene Calidad de Controlador | false"
    > "Cantidad / Porcentaje | 20"
    > "R.U.T. | 77.316.808-3"
    > "Fecha | 06-03-2024"
[10] https://www.diariooficial.interior.gob.cl/publicaciones/2026/06/12/44473/01/2819293.pdf — Diario Oficial resignation decree June 2026
    > "Acéptase, a contar del día 11 de marzo de 2026, la renuncia voluntaria de doña Paulina Mora Lara"
[11] https://www.gorecoquimbo.cl/autoridades/seremis/paulina-mora-lara — GORE Coquimbo Paulina Mora official authority page
    > "Secretario Regional Ministerial de Gobierno"
[12] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4968-1928-AG23 — Mercado Público OC 4968-1928-AG23
    > "Número de la Orden de Compra | 4968-1928-AG23"
    > "Proveedor | CAIM"
