# Jorge Antonio Peña Bruce / Servicios de Ambulancias Particulares — compras 2021

- **ID:** `pena-bruce-ambulancias` · **categoría:** compras/relaciones con el Estado; actividades/cargos/temporalidad.
- **Estado:** evidencia insuficiente; sin borrador.
- **Fecha de revisión:** 2026-10-05 UTC.
- **Corte del oro:** `2026-10-02T15:43:07+00:00`; copia local sin cambios según el pre-run.
- **Identidad:** coincidencia de nombre completo entre InfoProbidad ID 547994 y la fila del panel; la declaración lo identifica como concejal de la Municipalidad de Olivar y enlaza el nombre de la sociedad y su RUT societario.[1]

## Hechos reproducibles

La declaración de 04-07-2020 consigna el cargo de concejal, fecha de asunción 06-12-2016, una actividad económica remunerada como administrador de empresas en Servicios de Ambulancias Particulares Ltda. y un derecho societario del 60%, con calidad de controlador declarada.[1]

En el oro, la pantalla de sociedades controladas con al menos tres órdenes recupera a Peña con cuatro órdenes en la ventana que el modelo denomina `n_orders_during`, siete órdenes posteriores/relacionadas en total según la tabla de órdenes y el proveedor societario 76.234.742 (sin DV en la columna del oro). El mismo panel indica `n_same_institution=0`; eso no prueba intervención ni competencia sobre compras.[consultas/pena-bruce-ambulancias-1.sql](../consultas/pena-bruce-ambulancias-1.sql) y [consulta individual de declaración/sociedad](../consultas/pena-bruce-ambulancias-3.sql)

La consulta canónica por RUT societario devuelve siete códigos distintos entre 05-04-2021 y 31-12-2021, por CLP nominales 124.483.000; cuatro corresponden al comprador 7079 (Subsecretaría de Salud Pública), por CLP 67.483.000, dos al ISL, por CLP 52.000.000, y una a Requínoa, por CLP 5.000.000. Cinco están clasificados por el oro como directos, por CLP 72.483.000.[consultas/pena-bruce-ambulancias-2.sql](../consultas/pena-bruce-ambulancias-2.sql)

La OC 3663-807-SE21 de Requínoa fue enviada el 31-12-2021 por CLP 5.000.000; la ficha registra arriendo urgente de ambulancia para CESFAM, recepción conforme y el mismo proveedor por RUT societario.[13]

La ficha primaria de la OC 1656-407-SE21 describe transporte de pacientes de residencias sanitarias por CLP 28.892.000, enviada el 28-04-2021 a la Seremi de Salud VI Región; la OC 1656-414-SE21, enviada el 30-04-2021 por CLP 9.000.000, incluye la nota «PROVEEDOR DESISTE DEL SERVICIO».[2][3]

La OC 1656-660-SE21 se titula renovación del servicio de ambulancias básicas para residencias sanitarias, fue enviada el 02-07-2021 por CLP 28.892.000 y figura con recepción conforme; la OC 1656-968-SE21 registra CLP 699.000 y recepción conforme.[4][5]

Las dos órdenes del ISL remiten a la licitación pública 1778-39-LR20, cuya ficha la describe como servicios de traslado en ambulancia para pacientes del Instituto de Seguridad Laboral y desglosa regiones como líneas del proceso.[7][11][12]

## Mapa de afirmaciones y temporalidad

- **Hecho:** la titularidad/control societario y el cargo declarado aparecen juntos en la declaración de 2020.[1]
- **Hecho:** las órdenes oficiales de Mercado Público identifican al proveedor con el mismo RUT societario en 2021.[2][3][4]
- **Hecho medido:** la búsqueda canónica por RUT societario recupera siete códigos únicos; su listado y suma están en `consultas/pena-bruce-ambulancias-2.sql`.
- **Hecho:** la Ley 21.324 prorrogó en general los mandatos de alcaldes y concejales en ejercicio hasta el 28-06-2021.[10]
- **Límite temporal:** la ley prorrogó en general el mandato hasta 28-06-2021.[10]

Tres órdenes fueron enviadas el 05-04, 28-04 y 30-04, antes de esa fecha.[2][3][11]

La renovación del 02-07 fue posterior.[4]

No se obtuvo una fuente nominal que confirme que Peña siguiera ejerciendo en las fechas de abril ni un documento que lo vincule a las decisiones de contratación.
- **Inferencia plausible, no demostrada:** las descripciones de transporte de pacientes de residencias sanitarias y el desistimiento/renovación son compatibles con prestación asistencial en contexto de emergencia; las etiquetas de modalidad del portal no establecen por sí mismas la justificación jurídica ni la intervención de un funcionario.[2][3][4]
- **Explicación comercial alternativa:** el proveedor participó también en una licitación pública del ISL para traslado en ambulancia, lo que es compatible con actividad comercial ordinaria del rubro; la ficha de la licitación no esclarece los motivos o actos de las compras directas de Seremi de Salud.[6][7]
- **Dato societario secundario:** una reproducción del extracto del Diario Oficial de 2017 identifica a Jorge Antonio Peña Bruce como administrador y representante de la sociedad; se usa solo como pista secundaria, no como registro oficial verificado ni prueba de continuidad de la administración en 2021.[6]

## Rutas examinadas (2026-10-05 UTC)

1. **Cribado de declarantes-controladores con compras:** pantalla del oro `p.is_current AND s.is_controlling AND s.n_orders_during >= 3`, ordenada por importe; generó candidato sin demostrar relación funcional.
2. **Cruce individual exacto:** nombre completo → panel/declared_supply; RUT societario → `purchase_order`; dos consultas distintas reproducen el vínculo declarado y siete códigos canónicos. No se sumaron filas espejo ni se usó el agregado panel como prueba independiente.
3. **Compras de Seremi:** se revisaron las fichas primarias de 1656-407 y 1656-414, cotejando comprador, proveedor, monto, fecha y nota de desistimiento.[2][3]

Se cotejaron además 1656-660 y 1656-968 por fecha, monto, servicio y estado.[4][5]
4. **Ruta de contratación alternativa:** fichas 1778-36-SE21 y 1778-418-SE21 y ficha pública 1778-39-LR20; los dos códigos del ISL remiten a la licitación, no a una compra de la Municipalidad de Olivar.[6][7]
5. **Declaración y registro societario:** InfoProbidad ID 547994; búsqueda por nombre/RUT societario y revisión de la reproducción del extracto societario 2017. Esta última es secundaria y no resuelve vigencia de administración en 2021.[1][6]
6. **Temporalidad:** la ley establece el término general de prórroga hasta 28-06-2021.[10]

Se cotejaron fechas de abril en órdenes primarias y una renovación enviada en julio.[2][3][4]

La norma general no confirma por sí sola que el declarante mantuviera asiento en esas fechas.
7. **Búsqueda/deduplicación:** búsqueda literal por nombre completo, sociedad y RUT societario en fichas de investigación y casos públicos; sin coincidencia. Una búsqueda web exacta por el ID de declaración no obtuvo resultado indexado adicional. Resultado negativo limitado a estas consultas; no prueba ausencia de otra documentación.
8. **Pantallas sectoriales paralelas:** órdenes a misma institución, sociedades compartidas y actividades remuneradas; no añadieron una pista individual mejor sustentada en esta pasada. Las consultas exploratorias de fechas de primera orden y de montos «after» fallaron por columna inexistente/nombre de columna errado; se documentan como errores de consulta y no se usan para afirmar resultados.

## Decisión editorial y próxima acción

**Evidencia insuficiente; no preparar borrador.** El interés público potencial reside en la concurrencia entre una participación controladora declarada y ventas de la sociedad a organismos públicos, pero falta establecer el papel concreto de Peña en la selección, autorización, administración, recepción o prestación de las órdenes. La proximidad temporal y el marcador de compra directa no satisfacen el gate editorial; la explicación asistencial por COVID-19 es plausible y no se descarta. No se afirma irregularidad, conflicto de interés ni infracción.

**Reabrir solo** si aparece un acto/anexo oficial que nombre a Peña en una función individual pertinente a una compra y una fuente pública nominal confirme su cargo vigente en la fecha de esa actuación. Próximo ciclo: rotar a otra pista prioritaria, no repetir estas búsquedas generales. No hubo revisor independiente en esta corrida.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=547994
    > "Tiene Calidad de Controlador | SI"
    > "Fecha | 04-07-2020"
[2] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1656-407-SE21
    > "Fecha de Envío | 28-04-2021"
[3] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1656-414-SE21
    > "Notas | PROVEEDOR DESISTE DEL SERVICIO."
[4] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1656-660-SE21
    > "Estado de la Orden de Compra | Recepción Conforme"
[5] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1656-968-SE21
    > "Fecha de Envío | 26-10-2021"
[6] https://dequienes.cl/diario-oficial/2017/03/25/servicios-de-ambulancias-particulares-limitada-76234742-3-1197283
    > "La administración de la sociedad, su representación y el uso de la razón social corresponderá a don JORGE ANTONIO PEÑA BRUCE"
[7] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=1778-39-LR20
    > "Servicios de Traslado en Ambulancia pacientes ISL"
[10] https://www.bcn.cl/leychile/navegar?idNorma=1157863
    > "Se prorroga el mandato de alcaldes y concejales en ejercicio hasta el 28 de junio de 2021."
[11] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1778-36-SE21
    > "TOTAL OC | $ 40.000.000"
[12] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1778-418-SE21
    > "TOTAL OC | $ 12.000.000"
[13] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3663-807-SE21
    > "TOTAL OC | $ 5.000.000"
