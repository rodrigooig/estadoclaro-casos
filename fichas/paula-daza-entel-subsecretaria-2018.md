# Paula Daza — participación declarada en Entel y compras de Salud Pública

## Pregunta decisiva
¿La coincidencia entre acciones de Entel PCS declaradas por Paula Graciela Daza Narbona al asumir como subsecretaria y compras de telefonía móvil de la Subsecretaría configura un nexo material que amerite un caso de auditoría, o es una tenencia pequeña y compras ordinarias sin participación personal demostrada?

## Hechos comprobados
- InfoProbidad identifica a **Paula Graciela Daza Narbona** y registra su asunción como subsecretaria de Salud Pública el 12-03-2018. Su primera declaración fue presentada el 04-04-2018. Fuente primaria: https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=b10f531340a826a47ac6ccd9cedc0cd1
- En esa declaración, la declarante consignó 127 acciones de **Entel PCS Telecomunicaciones S.A.**, RUT 96.806.980-2, adquiridas el 11-03-2013, con valor corriente declarado de CLP $9.990, sin gravámenes y marcadas “Tiene Calidad de Controlador: NO”. Es el valor escrito en la declaración de 04-04-2018; no es un avalúo independiente ni acredita que conservara las acciones durante toda la administración.
- Mercado Público publica la OC **2122-269-SE18**, del 17-04-2018: Entel PCS (RUT 96.806.980-2) proveedor de la Subsecretaría de Salud Pública, CLP $387.284 netos / $460.868 IVA incluido según detalle de la OC; ruta “Si solo existe un proveedor del bien o servicio”. Registro: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2122-269-SE18
- Otra OC primaria cercana, **2122-149-SE18**, fue enviada el 19-03-2018 por CLP $398.106 netos / $473.746 total, para “Servicios de celular diciembre 2017”; su ruta se consigna como proveniente de licitación pública y la unidad de compra es Seremi de Salud II Región, pagadora la Subsecretaría. URL: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2122-149-SE18. Esta OC precede a la fecha de declaración y no se cuenta como compra dentro de la ventana sustentada por la declaración.
- Consulta reproducible al oro, limitada a proveedor RUT 96.806.980 y comprador institucional 7079, identifica reiteradas órdenes de telefonía entre abril de 2018 y julio de 2019. El SQL conserva los registros individualizados. El detalle primario de otra orden, 2122-964-SE21 (2021), es suscripción de telefonía celular para otra unidad regional; no la atribuyo a la ventana de la declaración de 2018 ni a decisión personal de Daza.
- En el oro no hay campañas ni gastos de autoproveedor asociados a su `person_id` en las tablas `campaign` y `campaign_self_supply` cubiertas por el conjunto Servel (corte y alcance descritos en `meta`). Esto es un negativo acotado al oro, no una afirmación sobre toda elección o gasto electoral.

## Explicación legítima más fuerte y límites
La participación indicada era de 127 acciones, con valor declarado de CLP $9.990 y sin control. Las OCs revisadas corresponden a servicios corrientes de telefonía y, cuando el registro identifica causal, proceden de licitación pública o la causal de proveedor único; la primera orden de marzo de 2018 se refiere a un período anterior a la asunción. Ninguna fuente consultada identifica a Daza como solicitante, evaluadora, autorizadora o beneficiaria personal. El volumen agregado de ventas de Entel en el Estado no se atribuye a la declarante.

## Decisión
**Descartada.** La primaria confirma una inversión nominal mínima y compras rutinarias de telefonía por la institución; no hallé una decisión de compra atribuible a Daza ni un beneficio individual material. La coincidencia por sí sola no supera el umbral de interés público del protocolo. No implica conflicto, infracción ni intervención.

Reabrir solo si un expediente público vincula a Daza con la decisión/contrato concreto, aparece una participación material mayor o controladora durante el período, o una fuente primaria revela otro beneficio funcional relacionado.

## Consultas reproducibles
- `consultas/paula-daza-entel-subsecretaria-2018-1.sql` (semilla, órdenes del comprador y consulta Servel).
- Oro: `ec-gold-sql` solamente; `meta.build_date = 2026-10-27T15:25:49+00:00`.

## Fuentes primarias
- InfoProbidad, declaración 04-04-2018: https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=b10f531340a826a47ac6ccd9cedc0cd1
- Mercado Público, OC 2122-269-SE18: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2122-269-SE18
- Mercado Público, OC 2122-149-SE18: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2122-149-SE18
- Mercado Público, OC 2122-964-SE21: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2122-964-SE21
