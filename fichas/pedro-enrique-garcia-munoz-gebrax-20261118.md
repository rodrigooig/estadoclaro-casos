# Descartada — Pedro Enrique García Muñoz y Gebrax

## Pregunta decisiva
¿La coincidencia entre la participación societaria declarada por Pedro Enrique García Muñoz y órdenes de compra de Comercializadora e Importadora Gebrax Ltda. acredita un nexo funcional con su cargo en el Poder Judicial que amerite seguimiento editorial?

## Hechos observados
- El oro (corte `2026-11-17T18:25:42+00:00`) vincula al declarante Pedro Enrique García Muñoz con la sociedad de RUT 76.078.271; nombre societario en declaración: «COMERCIALIZADORA E IMPORTADORA GEBRAX LTDA»; participación reportada como tipo `OTRO`, `is_controlling=false`, con `n_declarants=1` y similitud de nombre 0,52 frente al proveedor. **El oro no acredita identidad legal completa ni titularidad real más allá del registro de la declaración.**
- En diez declaraciones del Poder Judicial entre 16-03-2017 y 30-03-2026, la última consigna cargo `PRESIDENTE`; las anteriores incluyen `JUEZ`. La declaración más reciente que contiene la sociedad es del 30-03-2026 (`source_id=5113707`); URL de origen reconstruible por búsqueda InfoProbidad, no reabierta de forma inequívoca en esta corrida.
- La agregación `declared_supply` reporta 206 OCs durante, con CLP 847.375.773. Las órdenes narradas en `declared_supply_order` muestran compradores diversos, por ejemplo Hospital Oriente Dr. Luis Tisné Brousse, Universidad de Chile, Ejército y Servicio de Salud Ñuble. La agregación reporta una OC con `same_institution` (`n_same_institution=1`), pero la muestra visible de órdenes corresponde a compradores como Hospital Tisné, Universidad de Chile, Ejército y S. Salud Ñuble; no se identificó qué orden produjo ese indicador ni se comprobó un vínculo con el Poder Judicial. La actividad consignada en la muestra es equipamiento para laboratorios.
- Varias filas de órdenes se califican `after_1y` en la ventana; no se deben sumar sin deduplicar ni leer el detalle de cada fuente primaria. El listado es una pista del oro, no prueba primaria suficiente.

## Explicación legítima más fuerte / límites
La sociedad provee equipamiento de laboratorio a distintos organismos; los datos consultados no demuestran que García Muñoz participara en compras, adjudicaciones, recepción o decisiones que beneficiaran a Gebrax. La participación aparece como `OTRO`, no como derecho societario inequívoco ni control; la similitud nominal es baja (0,52). Además, las órdenes se distribuyen entre compradores de sectores distintos y el cruce no arroja una venta a la institución de la declaración.

## Decisión
**Descartada.** No supera la prueba editorial: la fuente primaria del hecho central (declaración específica y órdenes individuales) no fue reabierta y el oro, aunque señala una relación posible, no sustenta identidad/titularidad ni nexo funcional. La magnitud agregada no corrige esa carencia probatoria.

Reabrir solo si se obtiene y verifica la declaración íntegra correspondiente a `source_id=5113707` y evidencia primaria que confirme que la participación y las compras coincidieron temporalmente y que exista una conexión funcional concreta (p. ej., intervención en un proceso de compra del órgano o venta al propio organismo). No inferir conflicto, intervención ni irregularidad del mero cruce.

## Fuentes y reproducibilidad
- Oro EstadoClaro, corte `2026-11-17T18:25:42+00:00`; consulta guardada en `consultas/pedro-enrique-garcia-munoz-gebrax-20261118-1.sql`.
- Consulta de búsqueda pública: Mercado Público, orden `1959-2768-SE18` (https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1959-2768-SE18), que el oro enlaza como compra de equipamiento de laboratorio al Hospital Oriente Dr. Luis Tisné Brousse; no valida por sí sola la relación personal.
- InfoProbidad, buscador público: https://www.infoprobidad.cl/ (no se consiguió abrir una ficha inequívoca de la declaración del declarante en esta corrida).
