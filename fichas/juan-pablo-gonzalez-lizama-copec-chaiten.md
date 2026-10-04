# Juan Pablo Gonzalez Lizama — acciones en Copec y compras de combustible en Chaitén

- **ID:** `juan-pablo-gonzalez-lizama-copec-chaiten`
- **Categoría:** compras/relaciones con el Estado; salud pública; patrimonio e intereses.
- **Estado:** evidencia insuficiente; sin borrador de caso.
- **Fecha de trabajo:** 2026-10-04 UTC.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; copia local sin cambios; consultas solo lectura mediante `ec-gold-sql`.
- **Identidad:** coincidencia de nombre completo y cargo en la declaración primaria de InfoProbidad ID 1598862. Se redacta todo RUT personal; el identificador societario de Copec se usa solo para reproducir el cruce.

## §0. Veredicto

La pista surgió en una pantalla amplia de sociedades declaradas que aparecen como proveedoras de la propia institución. La pantalla devolvió 21 combinaciones tras filtrar más de una orden, participación en compras del mismo organismo, máximo diez declarantes de la sociedad y más de CLP 1 millón agregado; el candidato de Chaitén estaba entre ellas.[consultas/juan-pablo-gonzalez-lizama-copec-chaiten-1.sql]

La declaración rectificatoria de 10-02-2026 identifica a Juan Pablo Gonzalez Lizama como jefe del Departamento de Salud de la Municipalidad de Chaitén, con asunción declarada el 21-07-2025. Registra 33 acciones de COPEC, adquiridas el 21-06-2024, valor corriente/libro de 7.339 y sin calidad de controlador; el campo «Tipo de Moneda» está vacío.[6]

El oro de corte 2026-10-02 mide 40 órdenes Copec del comprador I Municipalidad de Chaitén dentro de las ventanas de declaración que examinó la consulta, entre 22-09-2025 y 25-09-2026. El resultado se deduplica por código de orden y se conserva como señal del artefacto, no como evidencia de intervención personal ni como total de ventas a la unidad de salud.[consultas/juan-pablo-gonzalez-lizama-copec-chaiten-3.sql]

Se verificaron en Mercado Público dos fichas primarias de esas órdenes: la OC 3284-1101-CM25 es de combustible diésel para habilitación y mantención de caminos rurales, y la OC 4939-497-CM26 es para petróleo de vehículos escolares y nombra al Departamento de Educación Municipal como unidad compradora.[2][3] Ninguna de estas dos fichas identifica al Departamento de Salud como unidad compradora ni a Gonzalez Lizama como decisor, usuario o beneficiario.

**Decisión:** evidencia insuficiente para un caso. Hay coincidencia entre una participación accionaria declarada como no controladora y compras de la empresa proveedora por el municipio donde él dirige el Departamento de Salud, pero no se acreditó una compra de la unidad de salud ni un rol personal en las compras. La propiedad declarada precede a la asunción del cargo.[6]

## 1. Mapa de afirmaciones y consultas al oro

| Afirmación | Fuente necesaria | Resultado y límite |
|---|---|---|
| Identidad, cargo, fecha de asunción e interés en COPEC | Declaración primaria vinculada por nombre completo | InfoProbidad ID 1598862 confirma nombre, Municipalidad de Chaitén, cargo, asunción 21-07-2025, 33 acciones, adquisición 21-06-2024 y valor declarado 7.339; el campo de moneda aparece vacío en la ficha.[6] El oro mapea ese valor a CLP, pero la fuente primaria consultada no especifica moneda; no se presenta como monto en pesos. El documento es una declaración, no auditoría independiente del activo. |
| El cruce no es solo por nombre comercial | RUT societario en declaración y Mercado Público | La declaración y las órdenes revisadas asocian COPEC/COPEC S.A. al mismo RUT societario; no se publica ni atribuye un RUT personal.[6][2][3] |
| Número de órdenes del organismo dentro de la ventana del declarante | Oro con rango temporal y deduplicación de OC | La consulta por `company_supply` y `purchase_order`, acotada por `window_start`/`window_end` y `DISTINCT order_code`, devolvió 40 códigos únicos para el comprador municipal, 22-09-2025 a 25-09-2026. El campo comprador es municipal y no prueba por sí mismo que fueran compras del Departamento de Salud.[consultas/juan-pablo-gonzalez-lizama-copec-chaiten-3.sql] |
| Existencia de compras identificadas específicamente con Salud en el campo comprador | Campo de unidad compradora en órdenes del oro y fichas primarias | Una búsqueda literal por comprador que contenga a la vez «CHAITEN» y «SALUD» devolvió cero en el oro durante el período 21-07-2025 a 01-10-2026.[consultas/juan-pablo-gonzalez-lizama-copec-chaiten-4.sql] Es un filtro textual; no descarta registros cuya unidad aparezca solo en otra sección de la ficha. |
| Naturaleza de dos compras que ilustran el cruce municipal | Fichas primarias de Mercado Público | La OC 3284-1101-CM25, del 24-09-2025, indica mantención de caminos rurales, diésel, municipio comprador y Convenio Marco; la OC 4939-497-CM26, del 15-09-2026, indica petróleo para vehículos escolares y unidad de Educación Municipal.[2][3] Son dos de 40 filas, no revisión primaria exhaustiva de todas ellas. |

Las consultas reproducibles están guardadas en [`consultas/juan-pablo-gonzalez-lizama-copec-chaiten-1.sql`](../consultas/juan-pablo-gonzalez-lizama-copec-chaiten-1.sql) a [`-4.sql`](../consultas/juan-pablo-gonzalez-lizama-copec-chaiten-4.sql). La primera screen encontró 21 filas en total; las demás reproducen la declaración societaria, las 40 órdenes municipales únicas y el filtro literal de comprador/salud, respectivamente. La cifra de 40 no se generaliza a compras de Salud ni a una intervención del declarante.

## 2. Rutas independientes revisadas — 2026-10-04

1. **Deduplicación.** Revisé `INDICE.md`, las fichas y el contenido de `/root/work/estadoclaro-investigacion`, además del repositorio de casos. La búsqueda por el nombre completo «GONZALEZ LIZAMA» no encontró una pista/caso homónimo de esta misma persona. Es una búsqueda textual acotada a esos repositorios.
2. **Pantalla amplia de compras propias.** La consulta guardada 1 filtró `declared_supply` por mismo organismo, al menos dos órdenes, a lo sumo diez personas declarantes y monto agregado superior a CLP 1 millón; devolvió 21 filas. La mayoría de las filas eran compañías con muchas declaraciones, candidatos ya indexados o compras con pertinencia funcional no evidente. Se abrió esta pista para comprobar identidad, temporalidad y unidad compradora, no por magnitud aislada.[consultas/juan-pablo-gonzalez-lizama-copec-chaiten-1.sql]
3. **Identidad, temporalidad y participación.** La declaración de InfoProbidad ID 1598862 coincide en nombre completo con el panel. La consulta focalizada al oro devuelve sus dos snapshots (02-09-2025 y 10-02-2026) y cinco emisores; COPEC figura con 33 acciones no controladoras y fecha de adquisición anterior al cargo.[6][consultas/juan-pablo-gonzalez-lizama-copec-chaiten-2.sql]
4. **Órdenes/identificador y deduplicación.** Consulté el RUT societario de COPEC en `company_supply` y `purchase_order`, limitando cada OC a las ventanas declaradas y deduplicando por `order_code`: 40 órdenes al comprador municipal, desde 22-09-2025 hasta 25-09-2026. Una búsqueda separada con el predicado literal del comprador `CHAITEN` + `SALUD` devolvió cero filas. La consulta no demuestra que la municipalidad no comprara para salud; el campo canónico agrupa órdenes bajo el municipio y puede no codificar la unidad ejecutora.[consultas/juan-pablo-gonzalez-lizama-copec-chaiten-3.sql][consultas/juan-pablo-gonzalez-lizama-copec-chaiten-4.sql]
5. **Fichas oficiales de compras y contraste adversarial.** Abrí dos fichas primarias, elegidas por temporalidad y unidad descrita: la OC 3284-1101-CM25, para diésel destinado a caminos rurales, y la OC 4939-497-CM26, para vehículos escolares. En ambas el proveedor es COPEC S.A.; la segunda identifica como unidad de compra Educación Municipal.[2][3] Esto contradice una lectura automática de que todas las órdenes municipales del cruce pertenecen a Salud, pero no responde qué describen las 38 restantes ni quién las autorizó.
6. **Procedimiento/contexto de compra.** ChileCompra describió en 2022 el Convenio Marco de combustibles como mecanismo para compras de diésel y gasolina de vehículos institucionales y emitió recomendaciones de control de uso.[7] En abril de 2024 publicó una licitación pública (ID 2239-3-LR24) para descuentos regionales en combustible de vehículos institucionales; la ficha de 2025 revisada indica que procede de Convenio Marco y lista ese catálogo.[2][10] Es una explicación de modalidad estándar, no una prueba de la razón de cada compra de Chaitén ni del procedimiento de nombramiento del proveedor.
7. **Contraste de funciones.** Las bases municipales del concurso para jefe del Departamento de Salud asignan administración y supervisión de establecimientos de salud primaria rural; no se obtuvo evidencia de que el cargo de este declarante incluyera decisión, evaluación o uso de las órdenes revisadas.[9] El sitio municipal actual no se utilizó como fuente: la extracción devolvió contenido ajeno al organismo, indicio de contaminación del dominio o del índice.

## 3. Explicación legítima, límites y gate editorial

La explicación legítima más plausible es que la declaración describe una tenencia personal de 33 acciones, adquiridas antes de asumir el cargo y declaradas sin calidad de controlador, y que las compras de combustible identificadas son adquisiciones operativas municipales mediante un Convenio Marco, para finalidades que incluyen caminos y transporte escolar. Esta lectura se apoya en el carácter no controlador y monto declarado de las acciones, las fichas primarias consultadas y el contexto público del Convenio Marco.[6][2][3]

ChileCompra describe ese mecanismo como suministro para vehículos institucionales.[7][10] No prueba que el interés sea inocuo en cualquier contexto, ni descarta compras del Departamento de Salud.

- **Identidad completa y declaración enlazada:** corroboradas.[6]
- **Hecho reproducible y fuente primaria:** participación declarada y compras de Copec por el municipio corroboradas; solo dos fichas primarias de órdenes fueron revisadas.[6][2][3]
- **Relevancia pública explicable:** potencial, por la función de jefe de Salud; el nexo funcional concreto con órdenes de combustible no se acreditó.[9]
- **Error de cruce/duplicación:** controlado en la consulta guardada 3 mediante límites temporales y `DISTINCT order_code`; los 40 son códigos únicos del artefacto dentro del filtro, no 40 actos atribuidos a la unidad de salud.[consultas/juan-pablo-gonzalez-lizama-copec-chaiten-3.sql]
- **Alternativa legítima:** buscada y documentada; tenencia declarada no controladora, adquirida antes del cargo, y compras de combustible por Convenio Marco son consistentes con la evidencia revisada.[6][2][3]
- ChileCompra define ese marco para compras de combustible de vehículos institucionales.[7][10] No se halló una fuente que explique cada adquisición ni el papel interno de quienes las tramitaron.

No se encontró evidencia que permita afirmar conflicto de interés, intervención personal, beneficio personal o irregularidad; tampoco se concluye que no existieran. No se consultó información privada, no se contactó a personas y no se eludieron controles. No hubo segundo revisor humano independiente en esta corrida.

**Próxima acción / reapertura:** no repetir búsquedas genéricas de Copec o Chaitén. Reabrir solo si una ficha primaria de una orden identifica al Departamento de Salud como unidad requirente/compradora, o si un acto público vincula a Gonzalez Lizama con la necesidad, autorización, evaluación, supervisión, recepción o beneficio de una compra concreta. Si surge una OC pertinente, verificar el expediente y sus actos primarios antes de reconsiderar el gate.

## Sources

[2] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3284-1101-CM25
    > "Fecha de Envío | 24-09-2025"
    > "Nombre de la Orden de Compra | Operaciones / Habilitacion y mantencion caminos rurales y comunitarios FET"
    > "Unidad de Compra | I MUNICIPALIDAD DE CHAITEN"
    > "Proveedor | COPEC S.A."
    > "TOTAL OC | $ 15.000.000"
    > "R.U.T. | 99.520.000-7"
    > "ESTACIÓN DE SERVICIO DIESEL - REGIÓN DE LOS LAGOS DESCUENTO PESOS POR LITRO"
[3] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4939-497-CM26
    > "Unidad de Compra | DEPARTAMENTO DE EDUCACION MUNICIPAL"
    > "TOTAL OC | $ 4.000.000"
    > "Fecha de Envío | 15-09-2026"
    > "Proveedor | COPEC S.A."
    > "R.U.T. | 99.520.000-7"
[6] https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=ec0ab2bd694261a7d7e14c40147cc6d3
    > "Cargo o función | Jefe De Departamento De Salud"
    > "Fecha de Asunción en el cargo | 21-07-2025"
    > "Nombre o Razón Social | COPEC"
    > "Cantidad / Porcentaje | 33"
    > "Fecha de adquisición | 21-06-2024"
    > "Valor Corriente en plazo o Valor Libro | 7.339"
    > "Tiene Calidad de Controlador | false"
    > "Tipo de Moneda |"
    > "R.U.T. | 99.520.000-7"
[7] https://www.chilecompra.cl/2022/12/chilecompra-refuerza-las-recomendaciones-para-organismos-publicos-sobre-el-buen-uso-del-convenio-marco-de-combustible
    > "El Convenio Marco de Combustibles (ID 2239-14-LR2) siempre ha tenido por objetivo el facilitar un buen uso y mayor control por parte de los organismos públicos en la compra de combustible Diesel y Gasolina para sus vehículos institucionales, accediendo a descuentos sobre los precios de pizarra de las estaciones de servicio."
[9] https://www.municipalidadchaiten.cl/wp-content/uploads/2024/08/BasesJefeSalud-2024-V3.pdf
    > "Asumir la dirección administrativa de los establecimientos de Salud Municipal, en conformidad a las disposiciones vigentes."
[10] https://www.chilecompra.cl/2024/04/licitacion-cm-combustibles
    > "Suministro de combustible en estaciones de servicio (EDS) para los organismos del Estado en las subcategorías gasolina y diesel."
    > "La Dirección ChileCompra publicó este 18 de abril la licitación del nuevo Convenio Marco de suministro de combustible ID 2239-3-LR24"
