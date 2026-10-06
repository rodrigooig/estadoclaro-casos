# Armando Pablo Flores Jiménez — compras de la EIRL declarada después del cambio de alcaldía

- **ID:** `armando-flores-eirl-post-alcaldia-20261006`
- **Categoría:** compras/relaciones con el Estado; actividad/temporalidad.
- **Estado:** descartada como pista de compras durante el cargo.
- **Fecha de revisión:** 2026-10-06 UTC.
- **Corte del oro:** `meta.build_date=2026-10-06T15:56:08+00:00`; consultas de solo lectura ejecutadas con `ec-gold-sql`.

## Decisión

La declaración primaria de 22-03-2024 informa que Armando Pablo Flores Jiménez, entonces alcalde de Vallenar, tenía el 100% de Armando Pablo Flores Jiménez, Consultora EIRL, adquirido el 30-12-2013.[9]

En el oro, el snapshot más reciente de esta persona es 24-07-2024 y conserva la participación de 100% en esa sociedad; el mismo corte vincula cuatro OCs únicas a su RUT societario entre 28-02-2025 y 21-07-2025, por CLP 29.300.000 nominales (`consultas/armando-flores-eirl-post-alcaldia-20261006-a.sql`, `-b.sql`).

La comprobación primaria confirma fechas, compradores, proveedor y montos de Paihuano y Osorno; sus fichas describen, respectivamente, un plan de emergencia y asesoría ambiental para PACCC.[1][2]
Las fichas de Yungay y Los Álamos describen planes comunales de acción climática.[3][4]

El acta municipal/TER registra que el 06-12-2024 Víctor Manuel Isla asumió como alcalde de Vallenar.[7]
Por tanto, las cuatro OCs ocurren después de ese cambio de autoridad, aunque el modelo de EstadoClaro las etiquete `during` con respecto al snapshot de declaración de julio de 2024.[7]
La consulta por corte y etiqueta reproduce cuatro códigos `during` hasta 21-07-2025 y quince códigos `after_1y` desde 29-08-2025 hasta 20-07-2026; la primera etiqueta temporal no acredita que Flores siguiera en el cargo.[consultas/armando-flores-eirl-post-alcaldia-20261006-c.sql]

**Decisión editorial: no preparar caso.** El requisito temporal y funcional no se sostiene: las compras verificadas son posteriores al cambio de autoridad y los compradores identificados incluyen Paihuano, Osorno y Yungay, no Vallenar.[1][2][3]
La ficha de Los Álamos también identifica a un comprador distinto de Vallenar.[4]
No se infiere intervención individual en esas contrataciones ni irregularidad.

## Mapa de afirmaciones y rutas examinadas — 2026-10-06 UTC

1. **Identidad e interés declarado (fuente primaria + oro).** InfoProbidad identifica el nombre completo y cargo de alcalde de Vallenar; la declaración de 22-03-2024 da cuenta de 100% de participación en la EIRL y fecha de adquisición 30-12-2013.[9]
   La consulta reproducible sobre cinco snapshots entre 31-03-2023 y 24-07-2024 conserva el 100% y la misma fecha de adquisición (`-a.sql`); el RUT personal no se reproduce.
2. **Conteo, ventana y unidad (SQL alternativo).** `-b.sql` deduplica por código primario de OC dentro de `timing='during'`: 4 códigos únicos, CLP 29.300.000 nominales, entre 28-02-2025 y 21-07-2025. No se contó varias veces una OC por snapshots superpuestos.
   `-c.sql` compara snapshots/etiquetas: el 24-07-2024 el artefacto coloca esas 4 órdenes en `during` y otras 15, entre 29-08-2025 y 20-07-2026, en `after_1y`. Es una ventana derivada de declaraciones; no demuestra vigencia del cargo en las fechas de compra.
3. **Fichas oficiales de compra y explicación del objeto.** Se abrieron en navegador el 06-10-2026 las fichas Mercado Público 3884-130-SE25 y 2308-20-SE25: confirman Paihuano (CLP 6.800.000) y Osorno (CLP 12.000.000), sus objetos y la razón social/RUT societario del proveedor.[1][2]
   Las fichas 3588-161-AG25 y 3945-586-AG25 confirman Yungay (CLP 5.000.000) y Los Álamos (CLP 5.500.000), sus objetos y el RUT societario; la última identifica a ESTRATEGICA CONSULTORES SPA.[3][4]
   Paihuano y Osorno describen órdenes procedentes de licitación pública.[1][2]
   Yungay indica compra ágil bajo 30 UTM y dos cotizantes; la ficha de Los Álamos también indica compra ágil.[3][4]
   Esto respalda la explicación legítima más plausible —servicios de consultoría contratados por otras municipalidades para planes y servicios comunales—, pero no permite evaluar por sí solo la selección, ejecución o el contenido completo de anexos.[1][2][3]
4. **Temporalidad institucional (registro oficial directo).** El acta de instalación del Concejo 2024–2028 incorpora la proclamación del TER y registra el juramento/asunción de Víctor Manuel Isla el 06-12-2024.[7]
   La página municipal de Transparencia Activa registra que el periodo de Flores termina el 06-12-2024.[6]
   Esto contrasta el indicador temporal del cruce con una fuente oficial de vigencia; no demuestra cuándo Flores dejó la empresa ni el papel que tuvo en cada venta.[6][7]
5. **Falsificación del posible enlace sanitario.** La Superintendencia de Salud identifica al CESFAM Joan Crawford como propiedad de la Municipalidad de Vallenar y una resolución de 2023 registra a Flores como representante legal del prestador municipal.[8][5]
   Esta fuente ofrece una explicación institucional de esa coincidencia nominal en salud; no enlaza el CESFAM con la EIRL proveedora ni con las compras climáticas.[8]
6. **Rutas oficiales/identificadores.** Consultas de la corrida: nombre completo + EIRL; RUT societario exacto `76334863` en `company`/`declared_supply_order`; y los cuatro códigos OC exactos en Mercado Público. Las cuatro fichas cargaron por navegador, aunque web_extract devolvió timeout para las páginas de órdenes; se prefirió el registro primario ya visible y no se usó el fallo de extracción como prueba de ausencia.
   Se verificó adicionalmente en el portal municipal el acta de instalación y la página de transparencia de alcaldes; no se necesitó acceder a expedientes no públicos, CAPTCHA o anexos bloqueados.
7. **Deduplicación y candidatos previos.** Búsqueda por nombre en el índice/fichas de investigación no encontró este nombre ni RUT societario; tampoco coincide con los leads ya indexados. La pista se distingue de candidatos de alcaldía por nombre completo, proveedor y huella temporal; no se atribuyeron empresas de homónimos.
8. **Contraste y límite.** Rutas independientes: (a) declaración/artefacto y consulta SQL guardada; (b) cuatro fichas primarias de compras consultadas por código; (c) acta municipal y TER de cambio de alcalde; (d) Superintendencia de Salud y su resolución para contrastar la coincidencia sectorial; (e) búsquedas web exactas por nombre, RUT societario, códigos OC y Vallenar.
   No hubo segundo revisor. Los anexos completos de las compras no se descargaron; dado que el cambio de alcalde precede a las cuatro OCs, esos anexos no resolverían la brecha temporal central de esta pista tal como está planteada.

## Gate editorial y próxima acción

- **Identidad:** nombre completo corroborado en InfoProbidad; la coincidencia societaria tiene el identificador exacto en declaración y fichas.[9][1][2]
- **Hecho reproducible:** cuatro órdenes únicas por CLP 29.300.000 medidos y comprobados ficha por ficha; montos nominales en CLP, no UF ni cifras actualizadas.[1][2][3]
La cuarta ficha confirma que la orden de Los Álamos corresponde al mismo RUT societario.[4]
- **Relevancia pública:** el interés declarado vendió servicios a entidades estatales, pero los compradores examinados no incluyen Vallenar.[1][2][3]
Las cuatro órdenes son posteriores a la fecha oficial de cambio de alcalde.[6][7]
- **Error del cruce/heurística:** la etiqueta `during` es una ventana de declaraciones y no debe leerse como prueba de empleo activo; `-c.sql` la contrasta con la fecha oficial de cambio de alcaldía.[6][7]
- **Explicación legítima:** encargos municipales de consultoría para emergencia/planificación climática, según los objetos de compra.[1][2][3]
Los objetos y la licitación/cotización que muestra cada ficha son contextuales, no validación integral del proceso.[2][3][4]
- **Próxima acción:** mantener descartada esta pista de compras durante el cargo. Reabrir solo ante una orden primaria anterior al 06-12-2024 o evidencia documental concreta de intervención posterior atribuible a una función pública vigente; no repetir búsquedas generales.

## Sources

[1] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3884-130-SE25
    > "Fecha de Envío"
    > "SERVICIO DE ELABORACIÓN PLAN DE EMERGENCIA COMUNAL"
    > "Razón Social Armando Flores Jiménez EIRL R.U.T. 76.334.863-6"
    > "Fecha de Envío 28-02-2025"
[2] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2308-20-SE25
    > "Fecha de Envío"
    > "Servicios de asesoría de ciencias medioambientales"
    > "Razón Social Armando Flores Jiménez EIRL R.U.T. 76.334.863-6"
[3] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3588-161-AG25
    > "Fecha de Envío"
    > "Servicio de Consultoría para Obtención del Plan de Acción Comunal de Cambio Climático de Yungay"
    > "Razón Social Armando Flores Jiménez EIRL R.U.T. 76.334.863-6"
[4] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3945-586-AG25
    > "PLAN DE ACCION COMUNAL PARA EL CAMBIO CLIMATICO (PACCC) DE LA COMUNA DE LOS ALAMOS"
    > "Razón Social ESTRATEGICA CONSULTORES SPA R.U.T. 76.334.863-6"
    > "Fecha de Envío 21-07-2025"
[5] https://www.superdesalud.gob.cl/app/uploads/2023/11/articles-26156_recurso_1.pdf
    > "Armando Pablo Flores Jiménez, en su calidad de Representante Legal del prestador institucional denominado "CENTRO DE SALUD FAMILIAR JOAN CRAWFORD""
[6] http://transparencia.vallenar.cl/index.php/component/content/article/2852
    > "| 2024 | Diciembre | Alcalde | Flores | Jimenez | Armando Pablo | Región de Atacama | Elección Popular | Acta | Acta de Instalación | N°1 | 28-06-2021 | [Descargar](/dmdocuments/Eleccion%20Popular/ACTA%20DE%20INSTALACI%C3%93N%20Y%20PROCLAMACION%20DEL%20CONCEJO.pdf) | 28/06/2021 | 06/12/2024 |"
[7] http://transparencia.vallenar.cl/dmdocuments/actas/2024/Concejo%20Ordinario/ACTA%20DE%20INST.%202024-2028.pdf
    > "don Víctor Manuel Isla Luu quien luego de jurar, procede a asumir la Presidencia del Concejo legalmente investido."
[8] https://www.superdesalud.gob.cl/registro/centro-de-salud-familiar-joan-crawford
    > "Propietario del Prestador | Ilustre Municipalidad de Vallenar"
[9] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1150997
    > "| Nombre o Razón Social | ARMANDO PABLO FLORES JIMÉNEZ, CONSULTORA EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA |"
    > "| Cantidad / Porcentaje | 100 |"
    > "| Fecha de adquisición | 30-12-2013 |"
