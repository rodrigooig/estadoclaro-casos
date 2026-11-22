# Carlos Ramos García — Comunicaciones EIRL y compras públicas (2025)

## Pregunta decisiva
¿La participación declarada de Carlos Ramos García en su sociedad de comunicaciones se tradujo en ventas públicas materialmente conectadas con sus facultades como consejero regional, o en compras al propio Gobierno Regional / organismos que fiscaliza?

## Hechos comprobados

- InfoProbidad, declaración completa ID **1369145**, presentada el 20-03-2025 para el cargo de consejero regional del Gobierno Regional de Coquimbo (asunción declarada: 06-01-2025), registra que declaró 100%/controlador de **CARLOS RENE RAMOS GARCÍA COMUNICACIONES EIRL**, RUT **76.529.353-7**, derecho adquirido el 31-07-2015, giro de radio/publicidad/espectáculos. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1369145.
- El oro relaciona esa sociedad y tres órdenes únicas enviadas durante la ventana de su cargo: **CLP $3.025.000 (77,76 UF)** de la Municipalidad de Monte Patria, OC 2997-72-SE25, proveniente de licitación pública 2997-2-LE25; **CLP $1.600.000 (41,06 UF)** de SERVIU IV Región, OC 646-35-SE25, «Orden de Compra para informar»; y **CLP $750.000 (18,92 UF)** del Servicio Agrícola y Ganadero, OC 1159-290-TD25, generada por trato directo ID 1159-94-FTD25 bajo causal registrada «Emergencia, urgencia o imprevisto». Total único: **CLP $5.375.000 (137,74 UF)**. Son montos de las órdenes; no se infiere pago efectivo.
- Primarias de Mercado Público confirman objeto, proveedor, comprador, fecha y estado: las tres URL están en Fuentes. La compra municipal es «Servicio Radial Línea 9», código ONU de servicio/equipos radiales; SERVIU compró «Servicio de difusión radial Radio Carnaval» y el estado figura «Recepción Conforme»; la orden SAG financia difusión de frases radiales sobre emergencia por mosca de la fruta, cobertura de Limarí, 6 frases diarias por tres meses, estado «Aceptada».
- Las tres órdenes corresponden a compradores distintos del Gobierno Regional donde Ramos declaró ejercer: Municipalidad de Monte Patria, SERVIU IV Región y SAG. El campo `same_institution` del oro marca `false` en Monte Patria y SAG, y **`NULL` en SERVIU** («no se pudo determinar»); no trato ese `NULL` como negativo. No hay orden cuyo comprador identificado sea el GORE. La orden de Monte Patria deriva de licitación pública; la compra de SERVIU está marcada «para informar»; la contratación SAG es por difusión urgente, no compra ágil.
- La página oficial del Consejo Regional identifica a Ramos como consejero regional del período 2025–2029 e integrante de las comisiones de Presupuesto, Inversión y Control de Gestión, Ordenamiento Territorial/Planificación/Infraestructura, entre otras. Fuente: https://acuerdos.corecoquimbo.cl/consejeros/consejero/108/16.

## Explicación legítima más fuerte
La empresa prestó servicios ordinarios de difusión radial. Los compradores no son el órgano donde Ramos declaró ejercer; una compra fue competitiva, otra se registró como orden para informar y la contratación urgente del SAG describe una necesidad pública concreta de difusión para una emergencia fitosanitaria. La existencia de competencia regional de un CORE en presupuesto e inversión no prueba que este consejero decidiera, interviniera o tuviera atribuciones sobre estas adquisiciones de organismos distintos.

## Límites / refutación buscada
- No se encontró evidencia primaria de intervención personal, decisión sobre las tres contrataciones, pago efectivo o nexo de los procesos con proyectos/decisiones del Consejo Regional.
- No se afirma infracción legal ni incompatibilidad. Las órdenes de compra y la participación societaria, por sí solas, no acreditan intervención individual.
- No se consultó expediente anexo de la contratación de SERVIU ni expediente de trato directo SAG; la ficha pública del SAG ya consigna objeto/urgencia, y su comprobación adicional no cambiaría por sí sola la ausencia de nexo funcional acreditado.

## Decisión
**Descartada.** La sociedad y las ventas están comprobadas en fuentes primarias, pero el agregado es de baja materialidad (CLP $5.375.000; 137,74 UF); no se acredita que alguna compra sea al propio GORE ni un nexo funcional concreto o intervención individual. En SERVIU el puente del oro es `NULL`, así que no se puede concluir que la coincidencia institucional haya sido determinada; la fuente primaria sí identifica al comprador como SERVIU IV Región, no como GORE. La causal urgente del SAG corresponde a difusión para una emergencia fitosanitaria; las otras órdenes no aportan evidencia de influencia. No supera el umbral editorial de interés público conectado a la función.

**Reabrir** si se aclara con evidencia primaria la relación institucional pendiente de SERVIU y resulta ser el órgano/entidad relevante para sus facultades, o si aparece documento primario que acredite participación de Ramos en la decisión/gestión de una compra, relación directa de un comprador/proceso con facultades ejercidas por él, una anomalía documental en la licitación/recepción o evidencia de que el valor/volumen real supera materialmente estas tres órdenes.

## Fuentes
- InfoProbidad, declaración completa 1369145, 20-03-2025: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1369145
- Mercado Público, OC 2997-72-SE25: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2997-72-SE25
- Mercado Público, OC 646-35-SE25: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=646-35-SE25
- Mercado Público, OC 1159-290-TD25: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1159-290-TD25
- Consejo Regional de Coquimbo, perfil de Carlos Ramos: https://acuerdos.corecoquimbo.cl/consejeros/consejero/108/16
- Consulta reproducible del oro: `consultas/carlos-ramos-garcia-serviu-comunicaciones-2025-1.sql`; corte `meta.build_date` = `2026-11-22T04:10:18+00:00`.
