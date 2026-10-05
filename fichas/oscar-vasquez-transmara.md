# Oscar Fernando Vásquez Marín / Transportes Maquinarias y Áridos SpA — pista de compras regionales

- **ID:** `oscar-vasquez-transmara` · **categoría:** patrimonio e intereses; compras/relaciones con el Estado.
- **Estado:** descartada como caso; no se atribuye intervención personal.
- **Fecha de revisión:** 2026-10-05 UTC.
- **Corte del oro:** `2026-10-02T15:43:07+00:00`; copia local sin cambios según el pre-run.
- **Identidad y vínculo declarado:** InfoProbidad identifica al declarante con el nombre completo Oscar Fernando Vásquez Marín, cargo Juez del Poder Judicial y una participación declarada de 7% en Transportes Maquinarias y Áridos SpA (RUT societario 78.654.420-3), con calidad de controlador «NO» [1]. La ficha muestra el corte 2020 y otras declaraciones contemporáneas, por lo que no permite convertir ese 7% en control ni extender automáticamente el dato societario a todos los años de compras [1].

## Resultado medido y mapa de afirmaciones

La consulta de descubrimiento en el oro, con corte 2026-10-02, enlaza por nombre completo al declarante con la sociedad de RUT societario `78654420` y marca `n_same_institution=0`; la consulta canónica devuelve 104 filas para 104 códigos únicos, 53 clasificados como directos, seis compradores y CLP nominales 408.259.396 entre 21-02-2020 y 10-09-2026.[consultas/oscar-vasquez-transmara-1.sql](../consultas/oscar-vasquez-transmara-1.sql) [consultas/oscar-vasquez-transmara-2.sql](../consultas/oscar-vasquez-transmara-2.sql) [1][3]. Esa suma proviene del oro y no se cotejaron las 104 fichas una por una; no se presenta como total periodístico validado por fuente primaria.

La orden 1291-26-SE24 identifica al proveedor por el RUT societario exacto y registra CLP 56.406.000 por suministro de material granular para camino de la comuna de Parral, dentro de la provincia de Linares; la ficha enlazada 1291-7-LE24 describe convocatoria abierta.[6][7]

Otra orden de Vialidad, 1291-21-SE25, identifica la razón social y el mismo RUT, y registra CLP 51.074.800 por 3.700 m³ de material granular; la licitación 1291-18-LP25 aparece adjudicada y con convocatoria abierta.[8][12] La coincidencia entre el producto declarado por la empresa y estos objetos de compra es consistente con su giro comercial, según el perfil comercial secundario; no demuestra quién llevó las gestiones ni quién recibió beneficios personales.[10][12]

La ficha abierta de Retiro 4511-14-LE26 describe un contrato de suministro y acopio de material pétreo para reparaciones de caminos vecinales y otras necesidades comunales; su orden 3013-736-SE26 registra al proveedor por el RUT societario y CLP 4.617.200, con estado «Enviada a proveedor» al 10-09-2026.[9] En contraste, la OC 2047-150-SE23 de la Delegación Presidencial Provincial de Linares se emitió bajo la categoría mostrada por el portal «Emergencia, urgencia o imprevisto» y registra CLP 13.328.000 por rehabilitación de un camino vecinal de Retiro.[11] La categoría y el objeto describen el registro público, no bastan para evaluar su fundamento legal ni su ejecución.[11]

## Rutas independientes examinadas (2026-10-05 UTC)

| Ruta independiente | Consulta/acción y resultado documentado |
|---|---|
| Cribado amplio | Pantalla de sociedades con órdenes y posible comprador compartido; ranking por nombre completo, institución y RUT societario en oro. `consultas/oscar-vasquez-transmara-1.sql`. |
| Reproducción y deduplicación canónica | Query nuevo en `purchase_order` por RUT societario; comparó filas/códigos, compradores, fechas, modalidad y subtotales. Resultado 104 filas/104 códigos; seis compradores. Los mayores grupos en el oro son Vialidad del Maule (6 órdenes/CLP 211.088.150) y Retiro (91/CLP 168.067.773); agregados, no prueba de intervención personal. `consultas/oscar-vasquez-transmara-2.sql`. Los intentos con columnas no existentes (`buyer_id`, `order_date`, `method_name`, `product_name`) fallaron y no se usaron como evidencia. |
| Declaración original | InfoProbidad, nombre, cargo, fecha, participación, RUT societario y condición de control.[1] |
| Expediente Vialidad 2024 | OC 1291-26-SE24 y licitación 1291-7-LE24 cotejadas por ID, comprador, proveedor/RUT, material, lugar, monto y convocatoria.[6][7] |
| Expediente Vialidad 2025 | OC 1291-21-SE25 y licitación 1291-18-LP25 cotejadas por identificador, proveedor, material, cantidad y proceso abierto.[8][12] |
| Expediente Retiro 2026 | Licitación 4511-14-LE26 y OC 3013-736-SE26 cotejadas por objeto, comuna, RUT, importe, estado y enlace.[9] |
| Orden con etiqueta de emergencia | OC 2047-150-SE23 cotejada por comprador, fecha, proveedor/RUT, objeto, localización y monto.[11] |
| Identidad / Poder Judicial | Intento de acceso a ficha de escalafón directa mostró CAPTCHA; no se eludió. InfoProbidad enlaza nombre completo con cargo judicial, pero su declaración de 2020 no prueba destino ni intervención en años posteriores.[1][2] |
| Registro empresarial y explicación | ChilePymes, perfil secundario por RUT, describe extracción/comercialización de áridos y maquinaria, y da el nombre incompleto «OSCAR VÁSQUEZ» como dueño; no se le atribuye al declarante.[10] Licitados reporta 88 órdenes/$369M, discrepantes con oro (104/CLP 408.259.396) y sin alcance explicado.[3] Los expedientes abiertos de material vial son consistentes con la actividad económica descrita, pero no resuelven la OC de emergencia de 2023.[6][8][11] |
| Deduplicación editorial | Índice completo de investigación, índice y casos publicados revisados por nombre completo, sociedad, RUT societario y huella de la pista; no apareció entrada previa. El negativo se limita a esas búsquedas. |

## Contraste y decisión editorial

La evidencia primaria confirma una participación declarada, no el control de la compañía; las órdenes muestreadas de mayor monto se originan en procesos de convocatoria abierta y corresponden a áridos/material granular para trabajos viales [1][6][8]. Los compradores identificados no son el Poder Judicial y la búsqueda del oro no marca coincidencia de institución [1][6][9]. No apareció evidencia de que Vásquez haya participado en aprobación, evaluación, administración, pago, recepción ni prestación de una compra. Tampoco se halló fuente societaria primaria que permita resolver cómo se relaciona el nombre comercial «Transmara» con los titulares y la administración de la sociedad durante cada compra. Un perfil secundario atribuye a «OSCAR VÁSQUEZ» el cargo de dueño, pero no da nombre completo ni documento primario que permita identificarlo como el declarante; no se usa para atribuir propiedad adicional [10]. El perfil secundario Licitados informa 88 órdenes por $369M, frente a 104 códigos/CLP 408.259.396 en la consulta del oro; su texto no explica el alcance temporal/metodológico y no reemplaza el recuento canónico [3].

La pista se descarta como caso: la participación no controladora, por sí sola, y ventas a organismos de otra función pública no establecen relevancia concreta respecto de su labor judicial [1][6][9]. No se afirma irregularidad, infracción ni conflicto de interés. La búsqueda de la ficha judicial quedó limitada por CAPTCHA; no es una demostración de ausencia de documentos [2]. No se requiere gestión humana para mantener esta decisión, porque aun con confirmación de destino judicial persistiría el vacío de intervención/beneficio personal [1][2].

**Reabrir solo** si aparecen documentos societarios oficiales con una relación de control/administración atribuible al titular y, separadamente, actos primarios que acrediten un rol personal del declarante en un proceso de compra o un vínculo funcional concreto entre sus competencias judiciales y un comprador/contrato específico. No repetir búsquedas generales de proveedor o nombre.

**Revisión independiente:** no hubo revisor independiente en esta corrida.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=8041f895a92c7de6069686a7b2cdac45 — InfoProbidad — declaración de Oscar Fernando Vásquez Marín
[2] https://www.pjud.cl/post/vasquez-marin,-oscar-fernando — Poder Judicial — registro de Oscar Fernando Vásquez Marín
[3] https://licitados.cl/oferente/78654420-3 — Licitados — perfil proveedor por RUT
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1291-26-SE24 — Mercado Público — OC 1291-26-SE24
[7] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=1291-7-LE24 — Mercado Público — licitación 1291-7-LE24
[8] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=1291-18-LP25 — Mercado Público — licitación 1291-18-LP25
[9] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3013-736-SE26 — Mercado Público — OC 3013-736-SE26
[10] https://chilepymes.com/info/transportes-maquinarias-y-aridos-spa-572DBBCCD3E2461B — ChilePymes — perfil secundario Transmara
[11] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2047-150-SE23 — Mercado Público — OC 2047-150-SE23
[12] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1291-21-SE25 — Mercado Público — OC 1291-21-SE25
