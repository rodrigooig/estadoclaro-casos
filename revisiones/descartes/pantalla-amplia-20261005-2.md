# Cribado amplio: compras sanitarias de empresa controlada declarada

**Fecha:** 2026-10-05 UTC. **Decisión:** sin borrador; nueva pista en `evidencia insuficiente`.

## Hallazgo medido y mapa

El cribado de sociedades controladas con al menos tres órdenes priorizó a Jorge Antonio Peña Bruce, cuya declaración de 04-07-2020 como concejal de Olivar contiene actividad remunerada como administrador de empresas y 60% de Servicios de Ambulancias Particulares Ltda. (controlador declarado).[1] El oro con corte 2026-10-02 enlaza su nombre completo con el proveedor por el RUT societario exacto; la consulta directa a `purchase_order` devuelve siete códigos únicos entre abril y diciembre de 2021 por CLP nominales 124.483.000. Cuatro órdenes al comprador Subsecretaría de Salud Pública suman CLP 67.483.000; dos al ISL suman CLP 52.000.000 y una a Requínoa CLP 5.000.000. El oro clasifica cinco de siete como directas, suma CLP 72.483.000, y reporta `n_same_institution=0`; este último dato no acredita rol o falta de intervención.[consultas/pena-bruce-ambulancias-1.sql](../../consultas/pena-bruce-ambulancias-1.sql) [consultas/pena-bruce-ambulancias-2.sql](../../consultas/pena-bruce-ambulancias-2.sql)

La ficha primaria 1656-407-SE21 identifica la Seremi de Salud VI Región, al proveedor por RUT societario y el transporte de pacientes de residencias sanitarias, por CLP 28.892.000.[2] La ficha 1656-414-SE21 registra CLP 9.000.000 y la nota «PROVEEDOR DESISTE DEL SERVICIO».[3]

La OC 1656-660-SE21, renovación del servicio de residencias sanitarias por CLP 28.892.000, figura con recepción conforme.[4] La OC 1656-968-SE21 registra CLP 699.000 y recepción conforme.[5]

La ficha del ISL describe una licitación pública de servicios de traslado de pacientes en ambulancia y enumera 13 líneas regionales; las OCs de abril y septiembre 1778-36-SE21 y 1778-418-SE21 están enlazadas por el código de licitación en el oro.[7][11][12]

El proveedor coincide por el RUT societario en órdenes oficiales de Seremi, ISL y Requínoa.[11][12][13]

## Rutas independientes examinadas

1. **Minería:** pantalla por control societario y recurrencia de compras; SQL guardado `consultas/pena-bruce-ambulancias-1.sql`.
2. **Cotejo de ordenes canónicas:** RUT societario exacto contra `purchase_order`, con siete códigos; total y subtotales recalculados en SQL, no mediante cálculo manual. SQL guardado `consultas/pena-bruce-ambulancias-2.sql`.
3. **Identidad y vínculo declarado:** InfoProbidad 547994 y fila del panel por nombre completo; control, actividad remunerada, cargo, fecha y RUT societario.[1]
4. **Compras de Seremi:** fichas primarias 1656-407 y 1656-414; se cotejaron objeto, unidad, montos, fecha y nota de desistimiento.[2][3]

También se revisaron 1656-660 y 1656-968 por monto, fecha, objeto y estado.[4][5]
5. **Ruta alternativa del ISL:** licitación oficial 1778-39-LR20 más órdenes 1778-36-SE21 y 1778-418-SE21, que aportan contexto de venta por competencia abierta.[7][11][12]
6. **Actuación societaria histórica:** reproducción secundaria del extracto del Diario Oficial de 2017; limitada a ese acto y sin inferencia de continuidad administrativa.[6]
7. **Temporalidad normativa:** Ley 21.324; prorrogó en general mandatos de concejales hasta 28-06-2021. No apareció en rutas revisadas una fuente nominal que acredite que Peña ejercía efectivamente en cada fecha de abril o junio; la norma general no basta para atribuir cargo vigente.[10]
8. **Refutación y deduplicación:** búsquedas literales por nombre, empresa, RUT societario e ID de declaración; búsquedas en el índice de investigación y casos públicos sin coincidencia. Esto describe el alcance revisado, no demuestra inexistencia de otras fuentes.
9. **Pantallas paralelas:** compras a misma institución, sociedades compartidas y actividades remuneradas; no generaron para este titular evidencia de decisión individual. Dos consultas exploratorias de campos `first_order_date`/montos `after` fallaron por columnas no existentes o nombre incorrecto; no se usaron para conclusiones. Se corrigió el cruce con consulta de la tabla canónica.

## Alternativa plausible, límites y gate

La explicación legítima más plausible para las compras de salud es una prestación asistencial de emergencia: las fichas nombran traslados para pacientes de residencias sanitarias y registran desistimiento y renovación.[2][3][4]

La empresa también aparece en una licitación pública del ISL.[7][11][12]

Este contexto no sustituye el expediente administrativo ni prueba la justificación jurídica de cada compra directa.

Las órdenes de abril anteceden al fin de la prórroga general el 28-06-2021; las órdenes de julio en adelante son posteriores a esa fecha. No se verificó nominalmente continuidad del cargo de Peña ni se identificó un acto, expediente, oferta, acta o recepción que lo nombre como evaluador, autorizador, administrador, receptor o ejecutor. La mera coincidencia sociedad/cargo y la etiqueta «Emergencia, urgencia o imprevisto» no cruzan el gate editorial. No se afirma irregularidad ni conflicto de interés. No hubo revisión humana independiente.

**Próxima acción:** rotar a otra pista abierta. Reabrir solo ante documento oficial que vincule a Peña con una función concreta en una compra relevante y fuente nominal que confirme el cargo vigente a la fecha de esa actuación.

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
