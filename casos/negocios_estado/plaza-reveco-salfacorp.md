# Rafael Plaza Reveco, abogado integrante del Poder Judicial, declaró una acción de Salfacorp mientras la constructora facturaba al Estado por más de UF 204 mil

Rafael Mauricio Plaza Reveco, abogado integrante de la Corte de Apelaciones de Santiago según su declaración vigente, informó en su declaración de patrimonio del **10 de marzo de 2026** (ID 5109772, la más reciente de cuatro que registra) una tenencia de **1.911** unidades de "SALFACORP", con RUT 93.659.000, valorizada en **60,87 UF (CLP 2.425.059)** a esa fecha, y fechó su adquisición el **28 de octubre de 2025**. En esa misma línea, declaró esta tenencia como una de las participaciones que enumera el artículo 4 de la Ley 19.886. Es un activo menor dentro de su patrimonio: su declaración vigente suma un patrimonio neto de UF 14.161,86 (CLP 564.232.999), compuesto por 12 bienes raíces, 14 sociedades (entre ellas Salfacorp), 2 bienes muebles y 1 activo financiero.

La identificación de esta tenencia con un proveedor del Estado se hace por RUT, no por nombre: el RUT 93.659.000-4 que declaró coincide exactamente con el de "Constructora Salfa (Punta Arenas)" en el registro de proveedores de ChileCompra, pero el nombre que él declaró ("SALFACORP") y el nombre registrado del proveedor tienen una similitud de texto de solo 0,65 sobre 1 — una señal de calidad de datos que amerita verificación adicional antes de asumir que se trata exactamente de la misma razón social. La ficha de proveedores marca a esta sociedad con **n_declarants=1** (solo Plaza Reveco la declara) y **is_widely_held=false**, a diferencia de las otras seis sociedades de su cartera (Copec, Entel, Banco Santander, Colbún, Itaú Corpbanca y Aguas Andinas), todas con entre 9 y 59 declarantes y marcadas como ampliamente tenidas (widely held) — una condición distinta que las separa de este caso y que no se presenta aquí como negocio personal.

Durante el período en que esa tenencia aparece declarada, el RUT 93.659.000 registra **3 órdenes de compra** del Estado, las tres provenientes de licitación pública, por un total de **CLP 8.339.326.325 (UF 204.450,48)**, emitidas por tres compradores distintos:

- **30 de marzo de 2026**: el Servicio de Salud Magallanes emitió la orden [5221-8-SE26](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=5221-8-SE26) por CLP 99.781.535 (UF 2.504,45), estado "Aceptada", asociada a la licitación 1080089-35-LR22. No es la misma institución que declara Plaza Reveco (Poder Judicial).
- **19 de junio de 2026**: la Dirección General de Obras Públicas del Ministerio de Obras Públicas emitió la orden [829-23-SE26](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=829-23-SE26) por CLP 5.633.725.103 (UF 138.113,93), estado "Enviada a proveedor", asociada a la licitación 829-5-O124. Tampoco es la misma institución.
- **1 de julio de 2026**: el SERVIU de la Región de Magallanes y de la Antártica Chilena emitió la orden [638-93-SE26](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=638-93-SE26) por CLP 2.605.819.687 (UF 63.832,10), estado "Aceptada". Para esta orden no se pudo determinar el organismo comprador respecto de la institución que declara Plaza Reveco.

Ninguna de las tres órdenes fue emitida por el Poder Judicial. En el registro histórico completo de ChileCompra, ese mismo RUT acumula 23 órdenes por CLP 103.959.916.849 desde que hay datos, y ocupa el puesto 117 de 207.201 proveedores por monto — un acumulado que incluye operaciones fuera de la ventana en que la tenencia aparece declarada y que no debe confundirse con los CLP 8.339 millones atribuidos al período de esta declaración.

## Fuentes

- Declaración patrimonial de Rafael Mauricio Plaza Reveco, 10 de marzo de 2026: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5109772
- Orden de compra 5221-8-SE26 (Servicio de Salud Magallanes): http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=5221-8-SE26
- Orden de compra 829-23-SE26 (MOP – Dirección General de Obras Públicas): http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=829-23-SE26
- Orden de compra 638-93-SE26 (SERVIU Región de Magallanes y de la Antártica Chilena): http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=638-93-SE26

Estos datos son autodeclarados por el propio titular ante el organismo competente y no están auditados por ningún organismo externo; lo que no se declaró no aparece en este cruce.

## Advertencias de cobertura

Las órdenes de compra de ChileCompra usadas en este cruce no incluyen ventas hechas por personas naturales y su ventana de datos corre, según la consulta al agente de Estado Claro, del 2 de enero de 2020 al 20 de agosto de 2026. Cuando `same_institution` aparece como NULL en una orden (como en la orden 638-93-SE26), significa que no se pudo determinar si el organismo comprador coincide con la institución declarada por la persona, no que se haya establecido que son instituciones distintas. La serie de patrimonio de Plaza Reveco está marcada con confianza "low" por la propia herramienta (fuera de la primera declaración de la serie, marcada "no_series"); ese indicador de confianza es sobre la reconstrucción de variación patrimonial año a año y no sobre las órdenes de compra citadas aquí, que provienen directamente del registro de ChileCompra.

## Qué queda por verificar

Confirmar con el propio proveedor o con el registro de accionistas de Salfacorp/Constructora Salfa si el RUT 93.659.000-4 corresponde exactamente a la razón social "SALFACORP" que declaró Plaza Reveco, dado que la similitud de nombre es baja (0,65). Solicitar a la Dirección General de Obras Públicas, al SERVIU de Magallanes y al Servicio de Salud Magallanes copia de los contratos y licitaciones (1080089-35-LR22 y 829-5-O124) detrás de las tres órdenes citadas, para conocer el objeto exacto de cada compra.
