# Julio Antonio Cherif Pérez — CGE y compra municipal de 2022

**Pregunta decisiva.** ¿La participación que Julio Antonio Cherif Pérez declaró en CGE estuvo ligada a una compra material de la Municipalidad de Talca durante su cargo de concejal, con un nexo funcional o una intervención que amerite revisión editorial?

## Hechos comprobados

- InfoProbidad identifica a **Julio Antonio Cherif Pérez** como concejal de la Municipalidad de Talca. La declaración primaria ID 892092, rectificada a requerimiento del órgano fiscalizador y fechada el 01-07-2022, informa asunción el 06-12-2016. Registra **114 acciones** de **COMPAÑÍA GENERAL DE ELECTRICIDAD S.A.**, RUT **76.411.321-7**, adquiridas el 01-01-2017, valoradas en CLP $614 en esa declaración y sin calidad de controlador. Fuente: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=892092.
- La orden primaria **2291-692-SE22**, enviada el 19-05-2022 por la Municipalidad de Talca a CGE (mismo RUT), figura «En proceso». Su total es **CLP $2.907.711 (89,46 UF al 19-05-2022)**, con neto CLP $2.443.455 e IVA CLP $464.256. La descripción dice «conexión eléctrica de 80 locales de Persa Rodoviario»; la causal publicada es «Si solo existe un proveedor del bien o servicio». La orden identifica como ITO a Miguel Muñoz Andrades. No se presenta como compra pagada ni recepción conforme. Fuente primaria: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2291-692-SE22.
- En el corte del oro **2026-11-17T18:25:42+00:00**, la ventana asociada a la participación contiene diez órdenes de CGE por CLP $17.572.601 (552,79 UF según la métrica del oro), pero solo una aparece con `same_institution = true`: la orden 2291-692-SE22. El proveedor aparece ampliamente difundido en el cruce. Consultas reproducibles: `consultas/julio-cherif-cge-talca-one-order-20261119-1.sql` y `consultas/julio-cherif-cge-talca-one-order-20261119-2.sql`.

## Explicación legítima más fuerte y límites

La primaria describe una instalación eléctrica para 80 locales de un mercado y justifica la contratación con la causal de proveedor único; el servicio está en el giro declarado de CGE como distribuidora eléctrica. La participación declarada fue de 114 acciones, no controladora, por CLP $614 en la foto de 2022. La página no vincula a Cherif con la solicitud, especificación, selección, fiscalización o recepción; identifica a otra persona como ITO. La fuente tampoco acredita pago o recepción conforme.

Aunque la coincidencia de proveedor y municipio es verificable, una orden única de CLP $2,9 millones por una conexión colectiva, frente a una participación accionaria minoritaria en una empresa ampliamente difundida, no establece por sí sola beneficio individual, intervención ni nexo funcional concreto con las decisiones del concejo.

## Decisión: descartada

No supera la materialidad ni el nexo funcional requeridos para un caso editorial. Se informa el hecho acotado, sin inferir conflicto, intervención, pago ni irregularidad.

**Qué la reabriría:** documento primario que identifique a Cherif interviniendo en la definición, contratación, fiscalización o recepción; evidencia de que el alcance, monto o causal publicados no corresponden al expediente; o un patrón material de compras institucionales asociado a un rol decisorio suyo.

**Fuentes consultadas:** InfoProbidad, declaración 892092; Mercado Público, orden 2291-692-SE22; oro EstadoClaro, corte señalado; UF de la fecha según `uf_series`.
