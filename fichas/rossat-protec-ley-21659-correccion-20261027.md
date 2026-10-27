# Verónica Paz María Rossat Arriagada / Protec Chile — actualización Ley 21.659

- **ID:** `rossat-protec-ley-21659-correccion-20261027`
- **Categoría:** negocios con el Estado / compras y patrimonio declarado.
- **Estado:** correccion lista.
- **Fecha de revisión:** 2026-10-27 UTC.
- **Corte del oro:** `meta.build_date=2026-10-27T15:25:49+00:00`; consulta en solo lectura con `ec-gold-sql`.
- **Caso relacionado:** publicado en `main`, `casos/negocios_estado/rossat-arriagada-municipalidad-hijuelas.md`. Se propone corrección/actualización del caso, no un segundo caso sobre la misma persona-sociedad.

## Pregunta decisiva

¿La entrada en vigor del artículo 36 de la Ley 21.659 y las órdenes de seguridad posteriores cambian materialmente la conclusión del caso ya publicado, que se centraba en ventas generales y en la falta de compras confirmadas por la Municipalidad de Hijuelas?

## Hechos comprobados

1. **Identidad y derecho declarado.** InfoProbidad publica la declaración periódica de 01-10-2026 de VERÓNICA PAZ MARÍA ROSSAT ARRIAGADA, alcaldesa de Hijuelas. La declaración registra 75% de derechos en Sociedad Profesionales de la Seguridad Ltda., RUT 79.840.520-9, adquiridos el 01-09-1988. La sociedad aparece bajo el nombre comercial PROTEC CHILE en las órdenes oficiales de ChileCompra.
2. **Regla aplicable, sin decidir su interpretación en casos transitorios.** El artículo 36 de la Ley 21.659 prohíbe a personas jurídicas en que tengan participación alcaldes prestar servicios de seguridad privada a la Administración del Estado o a corporaciones autónomas de derecho público. Un oficio de la Cámara remitido a Contraloría el 21-10-2026 cita el 28-11-2025 como fecha de vigencia y solicita examinar la aplicación temporal, contratos/órdenes y autorizaciones anteriores. El oficio no contiene un pronunciamiento de Contraloría ni declara infracción.
3. **Consulta reproducible al oro.** Entre 28-11-2025 y 22-10-2026, por supplier_rut `79840520`, la tabla `purchase_order` devuelve 89 órdenes, CLP $3.591.498.356 (89.825,72 UF) y 20 compradores. Entre 28-11-2025 y 15-10-2026 devuelve 87 órdenes; las dos órdenes posteriores del corte del oro fueron enviadas el 22-10-2026. Se cuenta el total de órdenes sin filtrar por estado, se usa el monto publicado en cada fila y se suman `amount_uf` tal como consta en el oro. El resultado no mide pago, fecha de perfeccionamiento contractual, o ilegalidad.
4. **Contraste contra fuente primaria de compras.** Las fichas oficiales confirman órdenes posteriores a la vigencia para el mismo RUT: 2271-237-SE25 (DGAC, 28-01-2026, aceptada, CLP $151.184.788/3.806,86 UF; guardias de seguridad para aeródromo Peldehue); 4283-33-SE26 (Municipalidad de Catemu, 05-02-2026, aceptada, CLP $11.133.967/280,50 UF; sistema de seguridad); 1351-55-SE26 (Registro Civil, 31-08-2026, recepción conforme, CLP $50.769.427/1.242,10 UF; alarmas y monitoreo por 36 meses); y 4283-195-AG26 (Catemu, 28-08-2026, aceptada, CLP $5.900.767/144,38 UF; vigilancia para CESFAM). Las cantidades en UF son del oro en las filas correspondientes; las fichas presentan pesos corrientes de cada orden.
5. **Actuación pública.** El oficio de la Cámara acompaña la solicitud de la diputada Sofía González Cortés para que Contraloría determine si concurre la prohibición y fiscalice contratos, distinguiendo licitaciones adjudicadas antes/después del 28-11-2025 y preguntando por disposiciones transitorias. No es el resultado de esa revisión.
6. **Explicación legítima más fuerte.** En una entrevista publicada por El Observador, Rossat dijo que no administra la empresa ni gestiona contratos con organismos públicos; sostuvo que las contrataciones fueron licitaciones y mencionó autorizaciones vigentes hasta 2027. La participación declarada precede por décadas a su actual período municipal y la ficha del caso publicado no encontró órdenes confirmadas a Hijuelas. Estas explicaciones son relevantes, pero no resuelven el alcance jurídico del artículo 36, que está formulado respecto de participación societaria.

## Fuentes primarias revisadas

- InfoProbidad, declaración completa ID 1898473 (01-10-2026): https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1898473
- BCN, Ley 21.659, versión vigente a 28-05-2026, artículo 36: https://www.bcn.cl/leychile/Navegar/imprimir?idNorma=1202067&idVersion=2026-05-28
- Cámara, Oficio N.º 26656/solicitud Of. 97/26, 21-10-2026: https://camara.cl/verdoc.aspx?DESTINOID=298068&prmID=341140&prmTIPO=OFICIO
- Mercado Público, OCs: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2271-237-SE25 ; https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4283-33-SE26 ; https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1351-55-SE26 ; https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4283-195-AG26
- El Observador, entrevista a Rossat: https://www.observador.cl/alcaldesa-de-hijuelas-por-cuestionamientos-a-su-empresa-aqui-no-hay-delito-ni-nada/
- El Mostrador, publicación 19-10-2026 y actualización 26-10-2026: https://www.elmostrador.cl/aqui-valparaiso/2026/10/19/los-501-negocios-de-la-alcaldesa-de-hijuelas-con-el-estado/ ; https://elmostrador.cl/aqui-valparaiso/2026/10/26/se-caen-tres-contratos-de-la-empresa-de-la-alcaldesa-rossat

## Decisión editorial

**Corrección lista.** En el caso publicado, la ausencia de compra por la Municipalidad de Hijuelas y el predominio de licitaciones explicaban por qué las ventas generales no acreditaban autocontratación o intervención personal. La nueva norma formula una prohibición más amplia que la compra al municipio propio, y existen órdenes oficiales posteriores a su vigencia para servicios comprendidos en seguridad privada. La pregunta de interés público se concreta ahora en la aplicación temporal del artículo 36 a contratos adjudicados antes de la vigencia y en contratos/órdenes posteriores; además, hay una petición oficial de pronunciamiento a Contraloría. La explicación empresarial y la incertidumbre temporal se deben conservar en la redacción. No afirmar delito, infracción consumada, intervención, beneficio personal ni responsabilidad.

La afirmación más débil es que toda orden emitida después del 28-11-2025 constituye una prestación prohibida: el oficio reconoce que falta verificar cuándo se celebraron los contratos y cómo operan las normas transitorias. El borrador lo limita expresamente y mantiene ese punto como pregunta abierta. El caso anterior estaba publicado y la actualización no duplica una persona-sociedad nueva; su cambio material justifica `correccion lista` y el mismo destino del caso.

## Reapertura / seguimiento

El editor puede publicar la corrección como actualización factual y dejar pendiente la interpretación. Reabrir para ampliación si aparece un pronunciamiento de Contraloría, resolución administrativa final sobre los contratos citados, o documentos que determinen adjudicación, ejecución, pagos y efecto de la disposición transitoria. El reportaje periodístico sobre términos de contrato no equivale a resolución final.

## Consultas

- `consultas/rossat-protec-ley-21659-correccion-20261027-1.sql`
- Resultado: 89 filas hasta 22-10-2026, CLP $3.591.498.356, 89.825,72 UF y 20 compradores; 87 filas hasta 15-10 y 2 entre 16-10 y 22-10.
- Las fichas oficiales de las cuatro órdenes representativas se revisaron en su URL por código de OC.
- El borrador de corrección pasó `sources.py verify --evidence --min-coverage 0.5`.
