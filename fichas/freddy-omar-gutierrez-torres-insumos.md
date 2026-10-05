# Freddy Omar Gutiérrez Torres — participación en proveedor agrícola

- **ID:** `freddy-omar-gutierrez-torres-insumos`
- **Categoría:** patrimonio e intereses; compras con el Estado; actividades/cargos/temporalidad
- **Estado:** descartada
- **Revisado:** 2026-10-05 UTC
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07Z`; sincronizado el 02-10-2026 a las 16:00:45Z. Script de corrida: sin cambios desde esa sincronización.

## Síntesis editorial

La declaración de rectificación de 04-07-2022 identifica por nombre completo a Freddy Omar Gutiérrez Torres, registra su nombramiento como SEREMI MOP de La Araucanía desde 03-09-2021 y una participación de 33,33% en Gutiérrez y Espinoza Hermanos Limitada, sin calidad de controlador.[5] El decreto publicado en el Diario Oficial establece que renunció a contar del 11-03-2022; el decreto que nombra a su sucesor confirma que el cargo quedó vacante ese día.[1][8]

El oro vincula por razón social y RUT societario a la empresa con 321 códigos de compra entre 2020 y 2024, pero el total agregado de ese período no es el hecho material de esta revisión. La consulta temporal, contando códigos únicos de `purchase_order`, encontró 9 órdenes durante el período documentado en el cargo (03-09-2021–11-03-2022), por CLP 12.025.994 nominales, de tres municipalidades: Tirúa, Carahue y Saavedra. La consulta exacta de comprador para “Obras Públicas”, “MOP” y “Vialidad” devolvió cero filas en la tabla del artefacto. Consultas reproducibles `-1.sql` a `-4.sql`; corte indicado arriba.

Dos fichas primarias de Mercado Público de 2021 muestran compras de insumos agrícolas a la sociedad por Tirúa y Carahue: la primera deriva de licitación pública y describe fertilizantes; la segunda es una compra municipal de productos agrícolas. Los montos totales de ficha son CLP 3.311.996 y CLP 1.001.999, respectivamente.[6][7]

Un acta de 2018 —anterior al cargo— documenta una convocatoria abierta y adjudicación por líneas a la misma sociedad para polietileno de invernadero, dentro de una compra municipal para apoyar producción de hortalizas.[3] Una OC de Tirúa de 2024, también posterior al cese, vuelve a describir suministro de semillas.[4]

**Decisión: descartada como pista de posible vínculo contractual con el MOP.** Lo medido acredita participación societaria declarada y ventas públicas de insumos agrícolas, pero las órdenes fechadas durante el cargo que se pudieron individualizar fueron a tres municipalidades y el filtro explícito del comprador no encontró órdenes del MOP/Dirección de Vialidad. No aparece un acto o expediente que vincule a Gutiérrez con decisiones sobre esas compras. La hipótesis legítima más plausible es que la empresa realizaba su giro declarado —venta de insumos agrícolas y ferretería— a compradores municipales y mediante procesos abiertos; las fichas de compra y el antecedente licitatorio son compatibles con ello, aunque no explican cada venta.[3][5][6]

No se afirma que no haya otras compras bajo nombres de unidad distintos ni que las búsquedas prueben ausencia de intervención. No se prepara borrador de caso. Reabrir solo con una fuente primaria que identifique una compra pertinente del MOP a la sociedad durante el cargo o un documento que nombre al declarante en definición, evaluación, autorización, administración o recepción.

## Mapa de afirmaciones

| Hecho por establecer | Fuentes y comprobación | Resultado y límite |
|---|---|---|
| Identidad, cargo y vigencia | Declaración InfoProbidad ID 893512; Diario Oficial, Decreto MOP 55; Decreto MOP 62 en Ley Chile.[1][5][8] | Nombre completo y cargo corroborados. El cese se fecha al 11-03-2022. La declaración de julio es una rectificación, no prueba por sí sola que el cargo siguiera vigente entonces. |
| Participación y entidad proveedora | InfoProbidad y ficha del proveedor de Mercado Público; cotejo societario por identificador empresarial coincidente (se omite aquí por brevedad).[2][5] | 33,33%, giro agrícola/ferretería, no controlador. La ficha del proveedor confirma razón social e identificador. No acredita intervención personal en compras. |
| Órdenes durante el cargo | `consultas/freddy-omar-gutierrez-torres-insumos-2.sql` y `-3.sql`; fichas primarias de Tirúa y Carahue.[6][7] | 9 códigos únicos, CLP 12.025.994 nominales, tres municipalidades, 03-09-2021 a 24-01-2022. Muestras revisadas describen insumos agrícolas; no se infiere el objeto de las otras filas a partir de estas muestras. |
| Relación con el MOP | Filtro literal por comprador en `purchase_order`, consulta `-4.sql`; búsqueda web por nombre de proveedor/identificador y MOP; Diario Oficial y Ley Chile para la fecha del cargo.[1][8] | Cero filas para las variantes explícitas consultadas; búsqueda web exacta no devolvió fuente útil de compra MOP. Es un resultado acotado, no prueba de ausencia bajo cualquier denominación. |
| Explicación alternativa | Actividad y giro declarados; acta de licitación pública 2018; OCs agrícolas 2021 y 2024.[3][5][6] | Actividad comercial ordinaria compatible con los productos y compradores identificados. No se halló evidencia pública del rol personal del declarante en los procesos. |

## Rutas examinadas — 2026-10-05 UTC

1. **Declaración primaria:** InfoProbidad ID 893512; cotejé nombre completo, entidad/cargo, fecha de asunción, tipo rectificatorio, sociedad, participación, giro declarado y condición de controlador.[5]
2. **Nombramiento/cese oficial, dos fuentes:** Diario Oficial, Decreto MOP 55 (publicado 22-06-2022), y Ley Chile, Decreto MOP 62 (promulgado 17-03-2022; publicado 10-08-2022). Ambos sitúan vacancia/cese desde 11-03-2022.[1][8]
3. **Oro, perfil societario:** `-1.sql` enlaza nombre completo, declaración, proveedor y participación; conserva como corte el oro reportado por el script.
4. **Oro, desduplicación temporal:** `-2.sql` cuenta `COUNT(DISTINCT order_code)` por periodos pre cargo/durante/después; `-3.sql` enumera los 9 códigos durante el cargo. No sumé agregados de `declared_supply` junto con las mismas compras.
5. **Oro, refutación por organismo comprador:** `-4.sql` buscó en `purchase_order.buyer_name` las cadenas MOP, Obras Públicas, Dirección de Vialidad y Vialidad para el RUT societario enlazado; resultado: 0 filas. No prueba ausencia si el comprador aparece bajo un alias no consultado.
6. **Mercado Público, expediente/OC de 2021:** ficha primaria 4858-673-SE21 identifica a Tirúa, suministro de insumos agrícolas y licitación 4858-25-LE21; ficha 3516-639-AG21 identifica a Carahue y productos agrícolas.[6][7]
7. **Mercado Público, explicación competitiva:** acta primaria 3485-72-LE18 muestra convocatoria abierta, varias ofertas y adjudicación por línea para insumos de invernadero a productores; es anterior al cargo y se usa solo como contexto comercial.[3]
8. **Contraste temporal posterior:** OC 4858-839-SE24 de 2024 para semillas a Tirúa, posterior al cese.[4]
9. **Búsqueda exacta externa:** cuatro consultas iniciales por nombre completo, razón social/RUT, MOP y OC/tender IDs; y consultas adicionales por los códigos 4858-25-LE21, 3516-639-AG21 y 4858-673-SE21. Los resultados web útiles condujeron a fichas primarias ya citadas; no apareció un documento que lo nombre como interviniente.
10. **Deduplicación:** búsqueda de nombre y razón social en `INDICE.md`, fichas, casos públicos y repositorios de trabajo: no se encontró pista previa con esta identidad/huella.

## Gate editorial

1. **Identidad:** nombre completo y cargo aparecen en la declaración, con nombramiento y cese en actos oficiales.[1][5][8]
2. **Hecho reproducible:** participación declarada, 9 órdenes únicas durante las fechas de cargo y compras primarias identificadas; consultas guardadas.
3. **Relevancia:** no se sostuvo un vínculo con el MOP, que era la institución del cargo; las compras examinadas son municipales y de productos agrícolas.
4. **Error de cruce:** se cotejó la empresa por nombre e identificador societario; el total de órdenes no se mezcló con el conteo por otro grano. El filtro de comprador se conserva literal y limitado.
5. **Alternativa legítima:** giro declarado, contexto de licitación abierta y fichas de productos agrícolas en 2021 y 2024. No hay atribución individual a decisiones de compra.

**Conclusión:** descartada para esta pista. Próxima acción: ninguna sin fuente primaria nueva que establezca compra MOP pertinente o intervención individual. Revisor independiente: no hubo en esta corrida.

## Consultas reproducibles

- `consultas/freddy-omar-gutierrez-torres-insumos-1.sql` — identidad declarativa, sociedad y proveedor enlazado.
- `consultas/freddy-omar-gutierrez-torres-insumos-2.sql` — órdenes únicas por tramo temporal y comprador.
- `consultas/freddy-omar-gutierrez-torres-insumos-3.sql` — órdenes individualizadas durante el cargo.
- `consultas/freddy-omar-gutierrez-torres-insumos-4.sql` — filtro exacto de compradores del MOP/Vialidad.

No se usaron API de EstadoClaro, credenciales ni pipelines; el oro se consultó exclusivamente con `ec-gold-sql` en modo solo lectura.

## Sources

[1] http://www.diariooficial.interior.gob.cl/publicaciones/2022/06/22/43284/01/2145603.pdf — Diario Oficial: renuncia Freddy Gutiérrez Torres
    > "Que, el señor Freddy Omar Gutiérrez Torres, fue nombrado mediante decreto supremo MOP N° 180, de fecha 3 de septiembre de 2021, actualmente en trámite, en el cargo de Secretario Regional Ministerial de Obras Públicas de la Región de la Araucanía, Directivo de exclusiva confianza, grado 3° de la EUS, de la Planta de la Subsecretaría de Obras Públicas, con residencia en la ciudad de Temuco. Mediante carta dirigida al Sr. Presidente de la República, el referido funcionario, presentó su renuncia voluntaria al cargo señalado, a contar del día 11 de marzo de 2022."
[2] https://www.mercadopublico.cl/BID/Modules/PopUps/InformationProvider.aspx?enc=44H3HE0fOtgyIT9cEhd8Ui60wcQOKjVjqqIiOrLQGY10PGlBJABQhsXO7WBTsAWx5Ke23XVDnJ5UzkKYPBNomQ%3D%3D — Mercado Público: proveedor
    > "Razón Social | GUTIERREZ Y ESPINOZA HERMANOS LIMITADA"
    > "Rut | 76.500.119-6"
[3] https://www.mercadopublico.cl/Procurement/Modules/RFB/StepsProcessAward/PreviewAwardAct.aspx?qs=CgTy2WLaf8YccOEHy1fmpF87QBaRcAXP2bPc41E+cQw= — Mercado Público: acta adjudicación
    > "Tipo de Convocatoria | ABIERTO"
    > "76.500.119-6 GUTIERREZ Y ESPINOZA HERMANOS LIMITADA | | $ 42500 | 85 | 3612500 | Adjudicada"
[4] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?qs=B/XXXjS3EsORdVzVlohswQ== — Mercado Público: orden de compra
    > "Orden de Compra. Nº4858-839-SE24 "SUMINISTRO DE SEMILLAS, VARIEDAD DE ESPECIES AÑO 2024""
[5] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=893512 — InfoProbidad: declaración Freddy Gutiérrez Torres
    > "Cantidad / Porcentaje | 33.33"
    > "Tiene Calidad de Controlador | NO"
    > "R.U.T. | 76.500.119-6"
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4858-673-SE21 — Mercado Público: OC Tirúa 4858-673-SE21
    > "Nombre de la Orden de Compra | SUMINISTRO INSUMOS AGRICOLAS"
    > "TOTAL OC | $ 3.311.996"
[7] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3516-639-AG21 — Mercado Público: OC Carahue 3516-639-AG21
    > "Nombre de la Orden de Compra | Adquisición productos agrícolas"
[8] https://www.bcn.cl/leychile/navegar?idNorma=1179873 — Ley Chile: nombra nuevo SEREMI y consigna vacancia
    > "quedando en consecuencia, el cargo vacante a partir de esa fecha."
