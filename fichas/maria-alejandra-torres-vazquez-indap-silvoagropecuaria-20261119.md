# María Alejandra Trinidad Torres Vásquez — empresa declarada y órdenes de INDAP

## Pregunta decisiva
¿La coincidencia entre la participación que Torres Vásquez declaró en una EIRL de asesorías silvoagropecuarias y órdenes de INDAP configura un asunto material de interés público ligado a su función de concejala de Futaleufú?

## Hechos comprobados
- InfoProbidad identifica a **María Alejandra Trinidad Torres Vásquez**, concejala de la Municipalidad de Futaleufú, y en su declaración del 07-01-2021 (ID 574463) consigna 100% de derechos en **MARIA ALEJANDRA TRINIDAD TORRES VASQUEZ ASESORIAS SILVOAGROPECUARIAS E.I.R.L**, RUT **76.405.870-4**, fecha de adquisición declarada 10-11-2005 y valor declarado CLP $5.000.000. Es dato autodeclarado; InfoProbidad muestra sus cargos y la sociedad. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=574463
- El oro del corte **2026-11-17T18:25:42+00:00** enlaza por RUT (cuerpo `76405870`) tres órdenes únicas en la ventana declarativa, todas de INDAP y rotuladas “Proveniente de licitación pública”: 609-317-SE18 (26-03-2018), 609-347-SE18 (10-05-2018) y 1127-43-SE21 (18-02-2021). Los valores nominales reportados suman CLP $35.544.157 y 1.289,31 UF; son órdenes de compra, no prueba de pagos. Consultas reproducibles: `consultas/maria-alejandra-torres-vazquez-indap-silvoagropecuaria-20261119-1.sql`.
- La ficha primaria de Mercado Público devuelve HTTP 403 al intentar reabrirla en la sesión: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=609-317-SE18 y https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1127-43-SE21. No se eludió el bloqueo. Por ello, la ruta, estado, monto y descripción se reportan solo como datos del oro, no como hechos cotejados de nuevo en la primaria.

## Explicación legítima más fuerte
Las órdenes se emitieron a INDAP, organismo distinto de la Municipalidad de Futaleufú donde ejerció como concejala. El oro las clasifica como provenientes de licitación pública, no trato directo. La adquisición societaria que muestra la declaración es de 2005, anterior a las órdenes; no hay indicio en las fuentes revisadas de que ella participara en las decisiones de compra de INDAP.

## Alertas, límites e hipótesis
- Hecho: el oro encuentra coincidencia de RUT entre la sociedad declarada y las órdenes de compra.
- Inferencia descartada: no se puede inferir intervención individual, pago recibido, irregularidad ni conflicto por esa coincidencia.
- Límite: el registro primario de Mercado Público bloqueó la consulta (403), y no fue posible revisar bases, adjudicación, recepción ni objeto detallado. El oro no suple esa comprobación.

## Decisión
**Descartada.** El vínculo funcional entre la función municipal y compras de INDAP no está acreditado; el patrón se limita a tres órdenes en un organismo distinto, con ruta registrada como licitación pública. No pasa el umbral editorial de relevancia/ne­xo de la v6. Además, las primarias de las órdenes no fueron accesibles para cotejar más que el resumen del oro.

Reabrir solo ante documento primario que conecte a Torres Vásquez con la decisión/ejecución de esas compras, competencia funcional documentada sobre INDAP o un hecho nuevo material; también si se acredita que el oro atribuye mal alguna orden, proveedor, monto o procedimiento.

## Fuentes revisadas
- InfoProbidad, declaración completa ID 574463, presentada 07-01-2021: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=574463
- Mercado Público, órdenes 609-317-SE18 y 1127-43-SE21 (consulta directa bloqueada con 403): https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=609-317-SE18 ; https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1127-43-SE21
- Oro EstadoClaro, solo lectura, build 2026-11-17T18:25:42+00:00; consultas archivadas en `consultas/maria-alejandra-torres-vazquez-indap-silvoagropecuaria-20261119-1.sql`.
