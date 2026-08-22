# Javier Etcheberry Celhay declaró acciones en Multicaja e ISwitch mientras esas empresas facturaban a Fonasa y a la Armada

Javier Etcheberry Celhay, quien ejerció como Director Nacional del Servicio de Impuestos Internos (SII), declaró participaciones societarias en Multicaja S.A. e ISwitch S.A. Mientras esas participaciones estaban vigentes, ambas empresas recibieron órdenes de compra del Estado: 2 de la Fondo Nacional de Salud (Fonasa) a Multicaja y 14 de la Dirección de Abastecimiento de la Armada a ISwitch. Ninguna de esas órdenes proviene del propio SII.

## Lo que declaró

En su declaración vigente, con fecha **19 de marzo de 2025**, Etcheberry declaró un patrimonio de **69.759,42 UF (2.709.041.540 pesos)**, sin pasivos. Es su segunda declaración registrada; la anterior, del 13 de diciembre de 2024, mostraba 79.663,68 UF (3.056.866.603 pesos) de activos.

Entre los 12 activos de esa declaración vigente figuran:

- **Multicaja S.A.** (RUT 76.828.790), rubro declarado "ALQUILER DE OTROS TIPOS DE MAQUINARIAS Y EQUIPOS SIN OPERARIOS", participación tipo ACCION, con "3075" en el campo cantidad/porcentaje declarado, adquirida el **14 de enero de 2010**. Valor declarado: 3.369,75 UF (130.861.080 pesos).
- **ISwitch S.A.** (RUT 99.546.900), rubro declarado "ACTIVIDADES DE CONSULTORÍA DE INFORMÁTICA Y DE GESTIÓN DE INSTALACIONES", participación tipo ACCION, con "10" en el campo cantidad/porcentaje declarado, adquirida el **24 de diciembre de 2009**. Valor declarado: 7,82 UF (303.581 pesos).

En ambos casos el dato viene marcado como `article_4_stake`: Etcheberry declaró una participación de las que enumera el artículo 4 de la Ley 19.886. Ninguna de las dos sociedades aparece como controlada por él (`is_controlling=false`), y ninguna es una sociedad ampliamente tenida: cada una registra un solo declarante (`n_declarants=1`, `is_widely_held=false`) entre quienes declaran patrimonio bajo la Ley 20.880, por lo que la participación corresponde a él y no a un grupo amplio de accionistas declarantes.

## Lo que le compró el Estado a esas empresas

El cruce de Estado Claro identifica las sociedades por coincidencia de RUT entre la declaración y ChileCompra, no por el nombre del proveedor que exhibe el portal de compras públicas. Con esa identificación, mientras la participación en Multicaja estuvo vigente, la Fondo Nacional de Salud le compró a esa empresa por **2.580.677.387 pesos (65.093,94 UF)** en 2 órdenes:

| Fecha de envío | Comprador | Monto | Vía | Orden |
|---|---|---:|---|---|
| 09-05-2025 | Fondo Nacional de Salud | 245.437.500 pesos (6.271,73 UF) | Orden de Compra para informar | [591-14-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=591-14-SE25) |
| 12-02-2026 | Fondo Nacional de Salud | 2.335.239.887 pesos (58.822,21 UF) | Licitación pública (591-6-LR25) | [591-7417-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=591-7417-SE25) |

En ambas órdenes, `same_institution` viene marcado explícitamente en **false**: el comprador (Fonasa) no es la institución donde Etcheberry ejercía como director (el SII). Multicaja S.A. aparece en el puesto 2.958 de 207.201 proveedores del universo de ChileCompra cruzado por Estado Claro.

Sobre ISwitch S.A., mientras la participación estuvo vigente, la Dirección de Abastecimiento de la Armada le compró por **33.382.321 pesos (851,97 UF)** en 14 órdenes, todas ligadas a la licitación 3191-180-LP21, entre el 27 de diciembre de 2024 y el 29 de enero de 2026, cada una por montos individuales de entre 1,9 y 2,8 millones de pesos. También aquí `same_institution=false` en las 14 órdenes: el comprador es la Armada, no el SII. ISwitch S.A. ocupa el puesto 3.639 de 207.201 proveedores.

## Advertencia de calidad de datos

El nombre de similitud entre el declarado ("Multicaja S.A.") y el registrado por ChileCompra para ese RUT es de **0,44** (`name_similarity`), una cifra baja porque el nombre que exhibe ChileCompra para ese proveedor no es "Multicaja S.A." sino un nombre de contacto ("ignacio"), no el de la razón social. El vínculo entre la declaración y las órdenes de compra no depende de esa similitud textual: se hace por el RUT 76.828.790, que es idéntico en el activo declarado y en las dos órdenes de compra. Para ISwitch S.A. la similitud es de 0,92. Ambas cifras se reportan aquí para que cualquiera pueda auditar el cruce, no como una duda sobre la identidad de las empresas.

El campo "cantidad/porcentaje declarado" (3075 para Multicaja, 10 para ISwitch) no permite saber por sí solo si corresponde a un número de acciones o a un porcentaje de participación; el formulario de la Ley 20.880 no distingue ese dato con una unidad explícita.

## Que queda por verificar

- Pedir a Fonasa el contrato y las bases de la licitación 591-6-LR25 para conocer qué producto o servicio de medios de pago se adjudicó a Multicaja S.A. y si existían más oferentes.
- Pedir a ChileCompra que confirme o corrija el nombre de proveedor ("ignacio") asociado al RUT 76.828.790, ya que ese campo no corresponde a la razón social Multicaja S.A.
- Solicitar a Multicaja S.A. e ISwitch S.A. el número total de acciones emitidas, para traducir "3075" y "10" en un porcentaje real de propiedad.

## Advertencias de cobertura

El cruce de compras públicas de Estado Claro cubre órdenes desde 2020 en adelante y no incluye ventas hechas por personas naturales. En este caso no aplica la advertencia sobre `same_institution` NULL, porque las 16 órdenes de compra revisadas —2 de Multicaja y 14 de ISwitch— tienen ese campo explícitamente en `false`.

Todos los datos patrimoniales de este caso son autodeclarados por el propio Javier Etcheberry Celhay bajo la Ley 20.880 y no están auditados por ningún organismo.

## Fuentes

- [Declaración vigente de Javier Etcheberry Celhay, 19 de marzo de 2025 (ID=1342857)](https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1342857)
- [Declaración anterior de Javier Etcheberry Celhay, 13 de diciembre de 2024 (ID=1293191)](https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1293191)
- Órdenes de compra a Multicaja S.A.:
  - [591-14-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=591-14-SE25)
  - [591-7417-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=591-7417-SE25)
- Órdenes de compra a ISwitch S.A.:
  - [3191-5770-SE24](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-5770-SE24)
  - [3191-135-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-135-SE25)
  - [3191-987-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-987-SE25)
  - [3191-1880-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-1880-SE25)
  - [3191-2374-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-2374-SE25)
  - [3191-3255-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-3255-SE25)
  - [3191-3336-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-3336-SE25)
  - [3191-3983-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-3983-SE25)
  - [3191-4381-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-4381-SE25)
  - [3191-4697-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-4697-SE25)
  - [3191-5172-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-5172-SE25)
  - [3191-5931-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-5931-SE25)
  - [3191-6191-SE25](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-6191-SE25)
  - [3191-484-SE26](http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3191-484-SE26)
- Contexto público (no forma parte del cruce de Estado Claro): [Presidente Boric nombra por Alta Dirección Pública a Javier Etcheberry como director nacional del SII, Servicio Civil](https://www.serviciocivil.cl/noticias/alta-direccion-publica/presidente-boric-nombra-por-alta-direccion-publica-a-javier-etcheberry-como-director-nacional-del-servicio-de-impuestos-internos/); [Gobierno solicita renuncia de Javier Etcheberry al cargo de director del Servicio de Impuestos Internos, Ministerio de Hacienda](https://www.hacienda.cl/noticias-y-eventos/noticias/gobierno-solicita-renuncia-de-javier-etcheberry-al-cargo-de-director-del)
