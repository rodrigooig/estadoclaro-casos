# Fernando Anais — FEÑASUB y Sernapesca

## Pregunta decisiva
¿La participación declarada por Fernando Agustín Anais Salas en FEÑASUB produjo una relación de contratación pública con el Ministerio Público —su organismo— o evidencia una relación funcional concreta con la compra de Sernapesca que amerite un caso?

## Hechos comprobados
- InfoProbidad identifica a FERNANDO AGUSTÍN ANAIS SALAS como Fiscal Adjunto del Ministerio Público, con asunción declarada el 01-07-2018. Su declaración periódica de 30-01-2026 (ID 1596605) registra 35 acciones/participación de FEÑASUB S.A. (RUT 76.122.615-0), valor corriente declarado CLP $5.000.000, giro importación y comercialización de artículos de buceo, pesca y fotografía submarina, sin calidad de controlador. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1596605
- La orden primaria 1424-16-AG26 fue enviada el 27-07-2026 y aparece en recepción conforme. Comprador/responsable de pago: Servicio Nacional de Pesca y Acuicultura; proveedor FENASUB S.A., RUT 76.122.615-0; total CLP $960.949 (23,53 UF en el oro). Compra de elementos de protección para operaciones en medio ambiente acuático, con trajes de neopreno, máscaras y snorkels. El título refiere una Compra Ágil 1424-10-COT26. Fuente primaria: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1424-16-AG26
- La coincidencia de identidad societaria está por RUT, no por nombre. La primaria de InfoProbidad y Mercado Público coinciden en 76.122.615-0. La declaración oficial informa 35% (no controlador); la tabla de cruces del oro deja `same_institution` sin determinar para esa orden. La entidad contratante de la OC es Sernapesca, mientras que el organismo declarado por Anais es el Ministerio Público.
- La misma empresa aparece como FEÑASUB S.A. en la declaración, mientras que registros secundarios consultados describen cambios posteriores de razón/tipo social. No se usa ese dato secundario como base decisoria ni se afirma aquí la forma jurídica actual; la orden de compra y la declaración usan la denominación S.A.
- Resultado reproducible del oro: `consultas/fernando-anais-fenasub-sernapesca-20261123-1.sql`. El artefacto indica `meta.build_date = 2026-11-22T04:10:18+00:00`.

## Explicación legítima más fuerte
La compra corresponde a bienes ordinarios en el giro declarado de la sociedad y fue hecha por Sernapesca, un organismo distinto del Ministerio Público; no se encontró evidencia de que Anais interviniera en la compra, de que el Ministerio Público adquiriera de FEÑASUB, ni de que su función de fiscal adjunto le diera competencia sobre esa contratación. La orden es de CLP $960.949 y la participación declarada no es controladora. La afinidad temática entre productos pesqueros/acuáticos y Sernapesca no acredita por sí sola una relación funcional personal.

## Decisión
**Descartada.** La fuente primaria confirma la venta y la participación, pero no aparece un hecho de materialidad o nexo entre la función y un beneficio que supere la explicación ordinaria: sociedad minoritaria no controladora, compra pequeña de productos del giro a una institución distinta. `same_institution = NULL` se mantiene como «no se pudo determinar» en la capa modelada; no se presenta como respuesta negativa. Sin embargo, el nombre del comprador sí está disponible en la primaria y no corresponde al organismo del declarante.

Reabrir solo ante nueva evidencia primaria de ventas de FEÑASUB al Ministerio Público, intervención individual de Anais en esta compra, o una competencia/acto concreto del Ministerio Público ligado a la adquisición de Sernapesca. No reabrir por la sola coincidencia sectorial ni por el mero hecho de ser accionista.

## Fuentes
1. InfoProbidad, declaración ID 1596605, 30-01-2026: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1596605
2. Mercado Público, OC 1424-16-AG26, 27-07-2026: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1424-16-AG26
3. Oro EstadoClaro, `consultas/fernando-anais-fenasub-sernapesca-20261123-1.sql`, corte 2026-11-22T04:10:18+00:00.
