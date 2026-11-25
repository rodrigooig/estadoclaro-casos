# Marcos José Gatica Emparanza — gasto de campaña a sociedad declarada (2024)

## Pregunta decisiva
¿El gasto de campaña municipal de Marcos José Gatica Emparanza a Río Claro y Compañía Ltda., que el oro asocia con derechos declarados por el candidato, genera una pregunta material de interés público o un nexo entre su función de concejal de Rengo y un beneficio/contrato público?

## Hechos comprobados
- La hoja definitiva de ingresos y gastos municipales/regionales 2024 de SERVEL registra para MARCOS JOSE GATICA EMPARANZA, candidatura a concejal por Rengo, una factura del 10-09-2024 a RIO CLARO Y CIA LTDA (RUT 79.795.080-7), factura 3636, por **CLP $738.990**, cuenta 212 «Propaganda en radioemisoras», glosa «Publicidad radial» y reembolso directo al candidato. El mismo reporte registra la línea de reembolso por $738.990. La auditoría de la candidatura aparece como «Aprueba». Fuente primaria: [reporte definitivo SERVEL municipales y regionales 2024](https://www-doc.servel.cl/2025/08/Reporte_Ingresos_Gastos_Definitivas2024.xlsx), hojas `INGRESOS Y GASTOS.csv` y `Resultado Auditoria Cuentas.csv`, exportadas localmente en `tmp/servel-2024-definitivas/`.
- En el oro, la candidatura se asocia a una declaración de candidatura del 29-07-2024. Esta normalización lista RIO CLARO Y COMPAÑIA LIMITADA (RUT 79.795.080), giro declarado «SERVICIOS DE COMUNICACION», 22,5 acciones/derechos y `is_controlling=false`. El oro no contiene un `source_id` numérico de InfoProbidad para enlazar directamente una página primaria; no presento ese cruce como verificado independientemente contra la declaración completa.
- La búsqueda de compras por ese RUT, desde la fecha de la declaración, devuelve una orden: **OC 3634-426-AG24**, enviada el 10-09-2024 a Empresa de Comunicaciones Río Claro y Compañía Ltda., por la Municipalidad de Malloa, con estado «Recepción Conforme», por **CLP $297.500 total** (7,86 UF en el oro). La página primaria de Mercado Público titula la OC «PUBLICIDAD RADIAL PROYECTO CULTURA 8% FNDR», detalla publicidad radial, subtotal neto $250.000 + IVA de $47.500 = total **$297.500**, y señala que el comprador es la Municipalidad de Malloa; no Rengo. La orden consigna procedimiento «Adquisición igual o inferior a 30 UTM (Debe presentar 3 cotizaciones)». [Detalle oficial de OC 3634-426-AG24](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3634-426-AG24).
- En la página primaria de esa OC, la empresa proveedora aparece con RUT 79.795.080-7 y estado hábil al envío. No se encontró en las fuentes revisadas una orden de este RUT al municipio de Rengo ni una evidencia de intervención personal de Gatica en la compra de Malloa.

## Explicación legítima más fuerte
La línea de campaña reporta un servicio ordinario de publicidad radial coherente con el giro declarado de la empresa; se solicitó reembolso y la auditoría global de la candidatura fue «Aprueba». La orden municipal es una compra de publicidad radial de cuantía reducida, a otro municipio, por un procedimiento de baja cuantía; la coincidencia de proveedor, giro y fechas no acredita relación entre esa OC y el gasto electoral, ni que Gatica haya intervenido o recibido beneficio personal.

## Decisión: descartada
No hay materialidad ni nexo funcional probado: el gasto electoral es CLP $738.990 (19,46 UF según el oro), no aparece rechazado y la cuenta fue aprobada; la única OC posterior/adyacente revisada es CLP $297.500, para Malloa, sin evidencia de intervención individual. La participación declarada que muestra el oro es no controladora, y no se pudo abrir la declaración primaria enlazada a su ID normalizado. No pasa la pregunta editorial de relevancia; no se entrega a publicación.

**Reabrir solo si** aparece un acto/expediente que pruebe intervención de Gatica en la compra de Malloa o una compra de su propia Municipalidad; una observación individual de SERVEL, distinta del estado global de auditoría, sobre la factura 3636; o la declaración primaria/registro societario que cambie materialmente la identificación o el porcentaje declarado.

## Consultas y fuentes
- Pista de consulta propia a `campaign_self_supply`, no procedente de las pantallas habituales; consulta reproducible en `consultas/marcos-jose-gatica-rio-claro-campana-2024-1.sql`.
- Oro de solo lectura vía `ec-gold-sql`; corte `meta.build_date=2026-11-24T20:08:20+00:00`. El cruce oro es una pista, no la fuente primaria del hecho.
- SERVEL, libro definitivo 2024, fuente y hojas arriba; búsqueda local exacta por nombre y RUT.
- Mercado Público, ficha primaria OC 3634-426-AG24, URL arriba.
- InfoProbidad: revisada la referencia normalizada del oro; el identificador local es `declaracion_2f0e50239f8b46e02d725ffc56839400`, pero no se logró verificar una URL primaria pública para esa declaración. Esto limita la afirmación de participación y es explícito en la decisión.
