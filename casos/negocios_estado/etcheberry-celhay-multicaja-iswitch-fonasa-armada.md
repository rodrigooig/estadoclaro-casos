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

## Explicaciones posibles y qué dice la evidencia pública

Antes de dejar este caso como está, se buscó activamente la explicación legítima más plausible para que un director de un servicio público hubiese mantenido, y siga apareciendo con, participaciones en dos proveedores que venden al Estado. Esto es lo que se encontró, con su fuente y fecha:

**1. Etcheberry declaró por escrito, al asumir, que se inhabilitaría si el SII —no otro organismo— tenía algún asunto con Multicaja.** En la declaración de patrimonio e intereses que presentó al asumir como director del SII (13 de diciembre de 2024), consignó sobre Multicaja S.A. la frase "ante alguna eventual situación de esta empresa con el SII me inhabilitaré". Dos coberturas independientes citan esa misma frase textual: La Tercera (Pulso PM), en una nota de diciembre de 2024 sobre el patrimonio y las inhabilidades que declaró el nuevo director del SII, y el sitio de verificación Mala Espina Check, en una nota del 17 de julio de 2025. Esa misma declaración identificó a Sonda —controlada por Andrés Navarro— como socia mayoritaria de Multicaja S.A. La inhabilitación que Etcheberry se autoimpuso cubre explícitamente un cruce entre Multicaja y el SII, el servicio que él dirigía. Las 16 órdenes que documenta este caso no provienen del SII —2 son de Fonasa y 14 son de la Armada, con `same_institution=false` ya señalado arriba—, y no se encontró registro público de que el riesgo que el propio Etcheberry identificó (SII comprándole a Multicaja) haya llegado a materializarse.

**2. El contrato que sustenta las 14 órdenes a ISwitch es anterior a que Etcheberry llegara al SII.** Las 14 órdenes de la Armada a ISwitch están ligadas a la licitación 3191-180-LP21, "Servicios financieros operación tarjetas de crédito", publicada por la Dirección de Abastecimiento de la Armada (Hospital Naval Almirante Nef) el 5 de noviembre de 2021 y adjudicada el 29 de noviembre de 2021, por 36 meses con opción de renovación, según su propia ficha pública en Mercado Público. Etcheberry asumió como director interino del SII el 1 de julio de 2024 y como titular el 29 de octubre de 2024 —casi tres años después de que ese contrato se adjudicara—, según Cooperativa.cl y el sitio de la Facultad de Ingeniería Industrial de la Universidad de Chile. Esto es compatible con que las 14 órdenes sean llamados periódicos de un contrato marco ya vigente antes de su paso por el SII, y no negocio nuevo generado durante su gestión. No se encontró, sin embargo, un documento público que ligue cada una de las 14 órdenes individuales a ese contrato de 2021 más allá de lo que ya reporta el cruce de Estado Claro por la licitación común.

**3. Etcheberry ya no era director del SII cuando se cursó la orden más grande de las dos de Fonasa a Multicaja.** El gobierno solicitó su renuncia el 18 de julio de 2025 y esta se hizo efectiva el 22 de julio de 2025, según coinciden Emol, BioBioChile y Cooperativa.cl. La orden 591-7417-SE25, por 2.335.239.887 pesos —la mayor parte de los 2.580.677.387 pesos que Fonasa le compró a Multicaja en este caso—, tiene fecha de envío 12-02-2026, unos siete meses después de esa renuncia. La primera orden a Multicaja (591-14-SE25, 245.437.500 pesos) sí es de mientras ejercía el cargo (09-05-2025). De las 14 órdenes a ISwitch, la más tardía (3191-484-SE26) es del 29-01-2026, también posterior a su salida del SII; el caso no desagrega la fecha exacta de cada una de las 14, por lo que no se puede establecer aquí cuántas de las órdenes intermedias cayeron antes o después del 22 de julio de 2025. Tampoco se encontró una declaración de cesación de funciones posterior a esa renuncia que confirme si Etcheberry mantenía o había vendido las acciones de Multicaja e ISwitch para las fechas de esas órdenes más tardías; la declaración más reciente disponible para este caso sigue siendo la del 19 de marzo de 2025, previa a su salida del SII. Tampoco se encontró evidencia de que las hubiera vendido: la ausencia de un registro posterior no prueba ni una cosa ni la otra.

Ninguna de estas tres explicaciones descarta el hallazgo por completo: durante buena parte de su gestión como director del SII —entre julio de 2024 y julio de 2025— Etcheberry sí mantuvo participaciones declaradas en dos empresas que en ese mismo período le vendían a otros organismos del Estado, y la inhabilitación que él mismo anunció cubre explícitamente solo su propio servicio, no a Fonasa ni a la Armada. Lo que aporta esta búsqueda es contexto verificable y con fuente: el riesgo que él mismo puso por escrito no era con los organismos que aparecen comprando en este caso, el contrato con la Armada es sustancialmente anterior a su llegada al cargo, y buena parte del valor de las compras de Fonasa a Multicaja se registró después de que dejó el SII.

## Que queda por verificar

- Pedir a Fonasa el contrato y las bases de la licitación 591-6-LR25 para conocer qué producto o servicio de medios de pago se adjudicó a Multicaja S.A. y si existían más oferentes.
- Pedir a ChileCompra que confirme o corrija el nombre de proveedor ("ignacio") asociado al RUT 76.828.790, ya que ese campo no corresponde a la razón social Multicaja S.A.
- Solicitar a Multicaja S.A. e ISwitch S.A. el número total de acciones emitidas, para traducir "3075" y "10" en un porcentaje real de propiedad.
- Verificar si Etcheberry presentó una declaración de cesación de funciones tras su renuncia del 22 de julio de 2025, y si en ella mantiene o no las acciones de Multicaja S.A. e ISwitch S.A. -dato que no estaba disponible al momento de escribir este caso-.

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
- Contexto público (no forma parte del cruce de Estado Claro): [Presidente Boric nombra por Alta Dirección Pública a Javier Etcheberry como director nacional del Servicio de Impuestos Internos, Servicio Civil](https://www.serviciocivil.cl/noticias/alta-direccion-publica/presidente-boric-nombra-por-alta-direccion-publica-a-javier-etcheberry-como-director-nacional-del-servicio-de-impuestos-internos/); [Gobierno solicita renuncia de Javier Etcheberry al cargo de director del Servicio de Impuestos Internos, Ministerio de Hacienda](https://www.hacienda.cl/noticias-y-eventos/noticias/gobierno-solicita-renuncia-de-javier-etcheberry-al-cargo-de-director-del)
- Sobre las inhabilidades e intereses declarados por Etcheberry al asumir el SII: [La Tercera (Pulso PM), sobre el patrimonio y las inhabilidades que declaró el director del SII, diciembre de 2024](https://www.latercera.com/pulso-pm/noticia/los-conflictos-de-interes-las-inhabilidades-y-el-patrimonio-que-declaro-el-director-del-sii/T3MP4L2C2NDQ3O26VWKLOERQ5M/); [Mala Espina Check, "Declaración de patrimonio de Javier Etcheberry incluye 6 propiedades y participación en 4 sociedades", 17 de julio de 2025](https://www.malaespinacheck.cl/pais/2025/07/17/declaracion-de-patrimonio-de-javier-etcheberry-incluye-6-propiedades-y-participacion-en-4-sociedades/)
- Sobre la llegada de Etcheberry al SII: [Cooperativa.cl, "Tras cuatro meses como subrogante, Javier Etcheberry fue nombrado director titular del SII", 29 de octubre de 2024](https://cooperativa.cl/noticias/pais/servicios-publicos/sii/tras-cuatro-meses-como-subrogante-javier-etcheberry-fue-nombrado/2024-10-29/204637.html); [Facultad de Ingeniería Industrial, Universidad de Chile, "Javier Etcheberry Celhay: nuevo director interino del Servicio de Impuestos Internos (SII)", 2 de julio de 2024](https://www.dii.uchile.cl/2024/07/02/javier-etcheberry-celhay-nuevo-director-interino-del-servicio-de-impuestos-internos-sii/)
- Sobre la salida de Etcheberry del SII: [Emol, "Etcheberry (SII) renuncia a prescripción y pagará los nueve años de contribuciones pendientes", 18 de julio de 2025](https://www.emol.com/noticias/Economia/2025/07/18/1172518/etcheberry-sii-renuncia.html); [BioBioChile, "Gobierno solicita renuncia de director del SII, Javier Etcheberry, por no pago de contribuciones", 18 de julio de 2025](https://www.biobiochile.cl/noticias/economia/actualidad-economica/2025/07/18/gobierno-solicita-renuncia-de-director-del-sii-javier-etcheberry-por-evasion-de-contribuciones.shtml)
- Sobre la licitación que sustenta las órdenes a ISwitch: [Ficha pública de la licitación 3191-180-LP21, "Servicios financieros operación tarjetas de crédito", Dirección de Abastecimiento de la Armada, Mercado Público](http://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=3191-180-LP21)
