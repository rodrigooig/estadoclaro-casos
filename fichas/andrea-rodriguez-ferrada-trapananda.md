# Andrea Valeria Rodríguez Ferrada — Trapananda Ltda.

- **ID:** `andrea-rodriguez-ferrada-trapananda`
- **Categoría:** compras/relaciones con el Estado; patrimonio e intereses
- **Estado:** evidencia insuficiente
- **Revisado:** 2026-10-05
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07Z`; copia local de 229 MB, sincronizada 2026-10-02T16:00:45Z. No hubo cambios desde la sincronización de esta corrida.

## Síntesis editorial

La declaración de intereses de marzo de 2026 vincula por nombre completo y RUT societario exacto a la jueza del Poder Judicial Andrea Valeria Rodríguez Ferrada con un derecho del 5% en Trapananda Ltda., adquirido —según la propia declaración— el 02-06-2021; la declaración de 2025 también consigna ese derecho.[1][10] La declaración de 2024 registra igualmente la sociedad y la participación.[11] En el oro al corte indicado aparecen 229 órdenes por CLP nominales 138.912.991 para 17 claves de comprador, entre 2022-04-01 y 2025-11-24; ninguna quedó marcada como compra de la institución de la declarante (`n_same_institution=0`). (Reproducible en `consultas/andrea-rodriguez-ferrada-trapananda-2.sql` y `-3.sql`; verificación independiente por RUT en `purchase_order` en `-3.sql`.)

La concentración principal observada es el Servicio Nacional de Salud Hospital de Coyhaique: 162 códigos, CLP nominales 109.367.280, según el cruce guardado en `consultas/andrea-rodriguez-ferrada-trapananda-4.sql`. Dos órdenes consultadas directamente identifican a Trapananda y al Hospital Regional Coyhaique como comprador: una de materiales de PVC por $70.491, enviada el 09-06-2025, y otra de una silla de escritorio por $179.928, enviada el 13-11-2025.[3][4] Otra orden primaria, enviada el 24-11-2025, corresponde a la División de Bienestar de Coyhaique y enumera artículos eléctricos y de uso corriente por $675.317.[5]

Estos documentos acreditan una participación societaria declarada y ventas del proveedor a instituciones públicas distintas del Poder Judicial; no muestran que Rodríguez Ferrada haya intervenido, autorizado, evaluado o administrado esas compras. El filtro de identidad societaria se apoya en el RUT de la persona jurídica y no en la similitud del nombre. La ficha no concluye conflicto de interés, infracción ni irregularidad.

**Decisión:** evidencia insuficiente para un borrador de caso. La conexión con compras públicas es verificable, pero la evidencia revisada no establece vínculo funcional de la jueza con los compradores ni intervención personal en los contratos. Mantener la pista cerrada a búsquedas generales; reabrir solo si aparece una fuente primaria que documente intervención, competencia concreta o una decisión relacionada con una compra específica.

## Mapa de afirmaciones y evidencia

| Hecho que se quiere establecer | Fuente primaria necesaria | Resultado en esta pasada | Incertidumbre pendiente |
|---|---|---|---|
| Identidad, cargo e interés societario | Declaraciones InfoProbidad asociadas al nombre completo | Las fichas 2024, 2025 y 2026 contienen el nombre completo y la sociedad, con 5%, tipo `DERECHO`, adquisición declarada 02-06-2021 y no controladora.[1][10][11] | Las fichas son declaraciones del titular, no auditoría registral; no se obtuvo el instrumento original desde un repositorio oficial. |
|| Transferencia societaria y contraparte | Escritura y extracto del Registro de Comercio/Diario Oficial | La reproducción secundaria localizada atribuye un extracto de modificación de Trapananda a una escritura de 02-05-2021 y señala la transferencia del 5% a Rodríguez Ferrada; declara el precio de $200.000.[2] | No se localizó el PDF oficial del Diario Oficial a partir de las búsquedas por fecha, RUT societario y CVE/ruta probable; el precio y la literalidad del acto descansan aquí en reproducción secundaria. La autodeclaración independiente corrobora que la titular declaró la misma participación y fecha de adquisición.[1] |
| Existencia, número y monto de compras | Mercado Público por RUT societario y códigos individuales; oro para búsqueda reproducible | Gold `declared_supply_order`: 229 códigos distintos, 17 buyer keys, CLP nominales 138.912.991, 2022-04-01 a 2025-11-24; 198 códigos marcados como trato directo y 63 como Compra Ágil (categorías que pueden superponerse). La suma y el intervalo se cotejaron por separado en `purchase_order`, mismo RUT y fechas: 229 códigos, 17 claves, mismo total e intervalo. Consultas `-2.sql`, `-3.sql` y detalle `-4.sql`. | Gold termina en 2026-10-02 y la última compra asociada es de noviembre de 2025. Los agregados no revelan quién decidió o participó en cada compra. Montos son CLP nominales del artefacto; no se infiere beneficio personal. |
| Comprador y objeto de compras muestreadas | Fichas primarias de órdenes | Las OC 1691-1630-TD25 y 1691-3218-TD25 muestran proveedor, comprador, fecha, artículos y total.[3][4] La OC 838101-68-AG25 muestra otro comprador público, artículos eléctricos/equipamiento de uso corriente y total.[5] | No se descargaron actos/anexos subyacentes de las OCs; el detalle de Mercado Público no acredita intervención de la declarante. |
| Conexión entre la jueza y los compradores/actos | Nombramiento y descripción oficial de funciones, expediente, resolución o anexo contractual que identifique rol individual | El oro devuelve `n_same_institution=0`; las compras más numerosas son a Hospital de Coyhaique, no al Poder Judicial. Consultas exactas por nombre en el sitio del Poder Judicial no aportaron una fuente que la vincule con estos compradores o contratos. | No se identificó un acto o documento público que nombre a la declarante en la compra, evaluación, autorización, administración o recepción. Un cero del filtro institucional no demuestra ausencia de cualquier relación personal o funcional. |
|| Alternativa comercial legítima | Ficha empresarial de actividad y detalle de los productos/órdenes | Como pista secundaria, ChilePymes lista venta mayorista de materiales de construcción y ferretería; su ficha indica revisión al 28-06-2025.[9] | Es una explicación comercial plausible y compatible con los bienes descritos en las OCs citadas anteriormente, no una explicación documentada de la selección de cada proveedor ni de los fundamentos de los tratos directos. |

## Rutas ejecutadas (2026-10-05)

1. **Declaraciones de origen — InfoProbidad:** revisión de las fichas 26-03-2026 (ID 5112295), 28-03-2025 (ID 5098318) y 28-03-2024 (ID 5086708); se verificaron identidad, interés, participación, fecha declarada de adquisición y campos de cargo. Se observa variación en la denominación del cargo: la ficha de 2024 dice “Juez”, la de 2025 “Relator” y la de 2026 “Juez”; la ficha de 2025 también consigna asunción 25-02-2025, mientras que 2024 y 2026 consignan 07-06-2019.[1][10][11] La diferencia no permite inferir por sí sola un cambio irregular; falta una fuente institucional que explique el cargo/fecha. No es necesaria para atribuir las compras al Poder Judicial, pues los compradores cotejados son otras instituciones.
2. **Cruce cuantitativo reproducible — oro local:** consulta del cribado (`-1.sql`), consulta por persona/sociedad y métricas de coincidencia (`-2.sql`), resumen de periodo y contraste en tabla canónica (`-3.sql`), y distribución por comprador (`-4.sql`). Se verificó una vez cada `order_code` principal; la consulta independiente por RUT societario devolvió el mismo total y ventana temporal. No se consultó la API del producto ni se accedió a datos por rutas prohibidas.
3. **Fichas primarias de órdenes — Mercado Público:** revisión por código de 1691-1630-TD25, 1691-3218-TD25 y 838101-68-AG25; la ficha de la primera enlaza al proceso `1691-816-FTD25` y etiqueta la orden “Emergencia, urgencia o imprevisto”. Se probó además la ficha 1691-771-TD25 como contraste: pertenece a JFV SpA, no a Trapananda, por lo que se excluye del cruce.[6]
4. **Documentos del organismo comprador:** se revisó el protocolo público del Hospital Regional Coyhaique para adquisición de equipamiento médico y el registro de prestadores de la Superintendencia de Salud. El protocolo regula equipamiento médico; no demuestra el procedimiento aplicable a las compras de tuberías, mobiliario o artículos generales aquí muestreados.[7][8] La ficha de Mercado Público de 1691-1630-TD25 mostró “Ver Anexos”, pero el DOM consultable no expuso enlaces de anexos; abrir el identificador del proceso asociado devolvió la portada actual de Mercado Público, sin el expediente histórico. No se eludieron controles.
5. **Sociedad y explicación comercial:** consulta por nombre legal, RUT societario y fecha en buscadores; se halló una reproducción secundaria del extracto societario y un perfil comercial secundario. Se buscó la versión oficial del extracto en el Diario Oficial por fecha/CVE/nombre, sin lograr localizar un PDF oficial coincidente; el PDF oficial abierto con una ruta de publicación tentativa no contenía el extracto. El sitio secundario queda etiquetado como tal y no sustituye la escritura original.[2][9]
6. **Búsqueda funcional adversarial:** búsquedas exactas por nombre completo en el dominio del Poder Judicial no identificaron una resolución o acto relativo a Trapananda, Hospital de Coyhaique o las OCs revisadas. Algunas páginas del PJUD muestran verificación anti-bot; no se intentó superar el control. Resultado acotado a las búsquedas y páginas consultadas, no prueba de que no exista documentación.

## Contraste y explicación alternativa

La hipótesis de mayor plausibilidad compatible con lo observado es que una sociedad comercial provee bienes a varios organismos públicos dentro de su actividad de venta mayorista/minorista, y que el cruce no guarda relación funcional con el trabajo judicial de la titular. La pluralidad de compradores y la variedad de productos cotidianos son compatibles con esa lectura.[3][5] La ficha comercial secundaria también lista venta mayorista de materiales de construcción y ferretería.[9] Esto no explica por sí solo los fundamentos de cada procedimiento ni descarta otros hechos no consultados. La lectura contraria —que existiría una intervención personal o una conexión entre su cargo y las compras— no está apoyada por las fuentes revisadas.

**Contraste independiente:** no hubo revisor humano independiente en esta corrida. La verificación cuantitativa se hizo con dos rutas del oro: `declared_supply_order` y `purchase_order`, comparando códigos únicos, RUT societario, fechas, buyer keys y montos.

## Gate editorial

1. **Identidad corroborada:** sí, por nombre completo, institución declarada y sociedad con RUT societario coincidente.[1]
2. **Hecho material reproducible y fuente primaria:** participación declarada y órdenes reproducibles; dos órdenes individuales fueron cotejadas en Mercado Público.[3][4] Una tercera OC fue cotejada para un comprador público distinto.[5]
3. **Relevancia pública explicable:** posible interés de una titular del Poder Judicial en empresa proveedora del Estado; en este caso no se acreditó relación con la institución de la titular ni intervención en contratos de los compradores.
4. **Descartar error de datos/cruce:** nombre societario más RUT legal coinciden entre declaración y OC; conteo de códigos y monto cotejados de forma independiente. La reproducción de una OC con un RUT distinto (1691-771-TD25) se descartó expresamente.[3][6]
5. **Explicaciones legítimas buscadas:** actividad comercial declarada en fuente secundaria, naturaleza corriente de los productos y pluralidad de compradores revisadas; no se halló una justificación primaria de los expedientes de trato directo.

**Conclusión del gate:** no se alcanza el estándar de borrador. Falta el hecho central que haría periodísticamente relevante este cruce: evidencia primaria de vínculo funcional o intervención personal de la declarante en una decisión/compra, o una compra a su propia institución. La siguiente acción es no repetir búsquedas generales; reabrir solo con esa evidencia o una ruta pública nueva. No se solicita gestión humana por ahora.

## Consultas reproducibles

- `consultas/andrea-rodriguez-ferrada-trapananda-1.sql` — cribado amplio.
- `consultas/andrea-rodriguez-ferrada-trapananda-2.sql` — identidad, declaración y relación del oro.
- `consultas/andrea-rodriguez-ferrada-trapananda-3.sql` — agregación independiente, ventana temporal y muestra de OCs.
- `consultas/andrea-rodriguez-ferrada-trapananda-4.sql` — distribución por comprador y concentración.

Consultadas con `ec-gold-sql` sobre el oro de solo lectura; sin build ni ejecución del pipeline. Registro de esta revisión: 2026-10-05.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5112295 — InfoProbidad declaración de Andrea Rodríguez Ferrada, 26-03-2026
    > "Comercializadora, Constructora, Ingeniería y Maquinarias Trapananda Ltda."
    > "Fecha de Asunción en el cargo"
    > "Cantidad / Porcentaje 5"
    > "Fecha de adquisición 02-06-2021"
    > "Cargo o función Juez Organismo Poder Judicial"
[2] https://dequienes.cl/diario-oficial/2021/06/10/comercializadora-constructora-ingenieria-y-maquinarias-trapananda-limitada-76226856-6-1958396 — Reproducción secundaria del extracto societario Trapananda, 2021
    > "vendió, cedió y transfirió sus restantes derechos equivalentes al 5% del capital social a Andrea Valeria Rodríguez Ferrada"
    > "por el precio de $2.000.000.- y $200.000.-, respectivamente, pagando en este acto."
[3] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1691-1630-TD25 — Mercado Público: OC 1691-1630-TD25, Trapananda
    > "| Fecha de Envío | 09-06-2025 |"
    > "| TOTAL OC | $ 70.491 |"
    > "40142607 | Producto / Servicio | Tapas de tubo"
    > "31231313 | Producto / Servicio | Tubería de plástico"
[4] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1691-3218-TD25 — Mercado Público: OC 1691-3218-TD25, Trapananda
    > "| Fecha de Envío | 13-11-2025 |"
    > "| TOTAL OC | $ 179.928 |"
    > "56112102 | Producto / Servicio | Sillas para trabajar"
[5] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=838101-68-AG25 — Mercado Público: OC 838101-68-AG25, División de Bienestar Coyhaique
    > "| Unidad de Compra | División de Bienestar - ZB "Coyhaique" BSoc |"
    > "| TOTAL OC | $ 675.317 |"
    > "Hornos microondas de uso comercial"
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1691-771-TD25 — Mercado Público: OC 1691-771-TD25, JFV SpA (contraste)
    > "| Proveedor | JFV SPA |"
[7] https://hospitalcoyhaique.cl/wp-content/uploads/2022/10/EQ-1.1-Protocolo-adquisicion-equipamiento-medico-ED-1.pdf — Hospital Regional Coyhaique: protocolo de adquisiciones de equipamiento médico
    > "Estandarizar los procesos para la adquisición del equipamiento médico, estableciendo procedimientos que se deben utilizar al momento de la compra."
[8] https://www.superdesalud.gob.cl/registro/hospital-regional-de-coyhaique — Superintendencia de Salud: registro Hospital Regional de Coyhaique
    > "Hospital Regional de Coyhaique"
[9] https://chilepymes.com/info/comercializadora-constructora-ingenieria-y-maquinarias-trapananda-limitada-FF989DF60DF1EEF8 — ChilePymes: ficha empresarial secundaria Trapananda
    > "VENTA AL POR MAYOR DE MATERIALES DE CONSTRUCCION, ARTICULOS DE FERRETERIA, GASFITERIA Y CALEFACCION"
    > "Última revisión 28 de Junio del 2025"
[10] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5098318 — InfoProbidad declaración de Andrea Rodríguez Ferrada, marzo 2025
    > "Fecha 28-03-2025 Cargo o función Relator"
    > "Fecha de Asunción en el cargo 25-02-2025"
    > "Cantidad / Porcentaje 5 Fecha de adquisición 02-06-2021"
[11] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5086708 — InfoProbidad declaración de Andrea Rodríguez Ferrada, marzo 2024
    > "Fecha 28-03-2024 Cargo o función Juez"
    > "Fecha de Asunción en el cargo 07-06-2019"
    > "Cantidad / Porcentaje 5 Fecha de adquisición 02-06-2021"
