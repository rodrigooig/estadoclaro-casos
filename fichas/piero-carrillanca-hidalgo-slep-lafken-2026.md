# PIERO SERGIO DIEGO CARRILLANCA HIDALGO — SLEP LLANQUIHUE / CONSULTORA LAFKEN

**Estado inicial:** borrador listo para el editor; devuelto en PR #360. **Cierre de corrida 2026-11-24: descartada** por no poder comprobar en fuentes primarias el vínculo de personal vigente y su dependencia respecto de la jefatura superior del comprador en fechas de compra.

## Pregunta decisiva

¿Fue Piero Sergio Diego Carrillanca Hidalgo personal remunerado del Servicio Local de Educación Pública de Llanquihue cuando Consultora Lafken SpA, sociedad que él declaró controlar, recibió cuatro órdenes de Compra Ágil del mismo SLEP entre mayo de 2024 y agosto de 2025? Si sí, ¿se aplicó la prohibición del artículo 35 quáter de la Ley 19.886 o una excepción debidamente fundada?

## Hechos primarios y fecha

1. **Identidad y actividad declarada.** InfoProbidad presenta una declaración de 31-03-2025 de PIERO SERGIO DIEGO CARRILLANCA HIDALGO, cargo de concejal de la Municipalidad de Llanquihue. En el apartado de actividades actuales declara una actividad laboral remunerada en pedagogía en educación física para “SERVICO LOCAL DE EDUCACION PUBLICA LLANQUIHUE”, RUT 62.000.800-1. Indica fecha de inicio 01-03-2017.[1]
2. **Acciones declaradas.** La misma declaración consigna CONSULTORA LAFKEN SPA, RUT 77.707.498-9, derecho “ACCION”, cantidad/porcentaje “100”, adquisición el 01-02-2023 y “Tiene Calidad de Controlador: true”. No se convierte el campo combinado “cantidad/porcentaje” en un porcentaje: se afirma solo el dato literal y la calidad de controlador declarada.[1]
3. **Órdenes públicas.** Mercado Público identifica a Consultora Lafken, RUT 77.707.498-9, como proveedor y al SLEP Llanquihue como comprador en cuatro órdenes: 1126922-1096-AG24, 16-05-2024, CLP 160.650 (4,30 UF); 1126922-2015-AG24, 12-09-2024, CLP 53.550 (1,42 UF); 1126922-2705-AG24, 28-11-2024, CLP 214.200 (5,60 UF); y 1126922-1630-AG25, 19-08-2025, CLP 286.993 (7,31 UF). La consulta reproducible sobre `purchase_order`, una fila por código de orden, suma CLP 715.393 (18,63 UF); estados: tres “Recepción Conforme”, una “Aceptada”.[2][3][4][5]
4. **Detalle del proceso.** Las órdenes se clasifican como Compra Ágil en el oro; la ficha de mayo de 2024 muestra cotizaciones de otros proveedores. La orden de agosto de 2025 describe arbitraje para un liceo y compra de balones de fútbol. Los importes son reducidos; la repetición y el posible cruce directo de empleador declarado–comprador, no el monto, justifican la consulta de probidad.[2][5]
5. **Marco normativo.** La Contraloría, Oficio E69939/2025, señala que el artículo 35 quáter entró en vigor el 11-12-2023. Reproduce la prohibición de que un organismo contrate con su personal, cualquiera sea su calidad jurídica, y con sociedades por acciones en que ese personal sea accionista; explica que el inciso segundo comprende al personal dependiente de la autoridad o jefatura superior del organismo contratante. También contempla excepciones sujetas a condiciones copulativas y resolución fundada.[6]
6. **Identidad institucional.** La DEP indica que el SLEP Llanquihue entrega el servicio educacional desde 2021. La DEP describe, en general, que los SLEP reemplazan a los municipios como sostenedores, por lo que el comprador SLEP no debe confundirse con la municipalidad en la que Carrillanca declara su cargo de concejal.[7][8]

## Consulta en oro

`consultas/piero-carrillanca-hidalgo-slep-lafken-2026-1.sql` ejecutada con `ec-gold-sql`: devuelve cuatro órdenes del mismo proveedor y comprador en la ventana posterior a la vigencia de la reforma, ligadas a la declaración de marzo de 2025 que contiene la actividad y el control declarado. `amount_clp` y `amount_uf` se citan al corte del oro (2026-11-22T04:10:18+00:00). RUT de sociedad contrastado por cuerpo y DV contra Mercado Público.

La consulta `consultas/piero-carrillanca-hidalgo-slep-lafken-2026-2.sql` contrasta Servel: en la candidatura municipal de 2024, el agregado registra cero gastos/autosuministro atribuibles a RUT 77.707.498; auditoría global “aprueba con observaciones”. No se usa como señal adversa ni como comprobación de la transacción estatal.

## Explicación legítima más fuerte y afirmación más débil

La propia declaración es la prueba de que esa actividad laboral y esas acciones/control fueron declarados; no equivale a contrato, nombramiento ni certificado de vigencia. La fecha laboral declarada, 01-03-2017, precede a la entrega educativa del SLEP (desde 2021, según DEP). Puede reflejar una entidad predecesora, continuidad/traspaso, una fecha ingresada incorrectamente o que la actividad no correspondiera a una relación vigente con el SLEP en cada compra; el expediente público consultado no resuelve cuál.

La afirmación más débil y central es que la declaración pruebe que Carrillanca integraba el personal del SLEP en las cuatro fechas de compra. Por eso el borrador lo formula como pregunta y solicita comprobarlo; no afirma una infracción. Tampoco hay evidencia consultada de participación individual de Carrillanca en solicitudes, evaluación, adjudicación o recepción. El procedimiento Compra Ágil, con cotizaciones registradas, es una explicación de rutina plausible, pero no resuelve por sí sola el ámbito de una eventual prohibición legal. Una autorización excepcional también es posible, pero no se encontró en las fichas de OC y debe buscarse en el expediente de compra.

## Decisión y control editorial

Decisión anterior: devolver al editor, pues la declaración identifica actividad remunerada en el SLEP y control de Lafken, pero no prueba estatus del personal en las fechas de compra. La segunda revisión confirma que las primarias disponibles no resuelven esa bisagra, por lo que esta corrida cierra `descartada` en vez de mantener un estado intermedio. No se afirma infracción.

Lo que se comprobó: InfoProbidad registra el 31-03-2025 la actividad laboral remunerada para el SLEP y fija su inicio declarado en 01-03-2017; declara también acciones/control de Lafken. La DEP indica que el SLEP inició la entrega del servicio educacional en 2021. Las cuatro fichas de Mercado Público confirman compras del SLEP a Lafken, y Contraloría interpreta la prohibición del artículo 35 quáter para personal dependiente de la autoridad o jefatura superior del organismo comprador. Estos documentos no identifican el empleador contractual que explica el período desde 2017, la continuidad o traspaso, ni la relación de dependencia respecto de la jefatura superior en las fechas relevantes. Las órdenes no atribuyen intervención individual.

La explicación legítima más fuerte sigue abierta: la fecha 2017 podría corresponder a una relación anterior a la puesta en marcha del SLEP, con cambio institucional/traspaso o con un campo que no describe el vínculo vigente durante cada orden. No encontré acto de nombramiento, contrato, nómina oficial identificada o expediente de compra que permita elegir entre esas posibilidades. El portal de Transparencia Activa del SLEP incluye secciones de personal y remuneraciones, pero la búsqueda pública realizada no aportó un registro nominativo que resolviera el vínculo. Búsquedas exactas de nombre en web, portal SLEP y portal de transparencia tampoco encontraron documento primario identificable; las referencias en redes sociales a que es profesor no establecen empleador ni fechas y no se usan para afirmar el nexo.

La consulta reproducible en oro devuelve cuatro órdenes por CLP 715.393 (18,63 UF al corte), pero su cuantía acotada no suple el nexo funcional. Servel: la consulta devuelve cero gastos/autosuministro atribuibles a Lafken en la elección municipal 2024; auditoría global «aprueba con observaciones», dato que no acredita la compra estatal.

**Motivo de descarte:** con primarias accesibles, la posible incompatibilidad depende de hechos no documentados sobre la situación de empleo y dependencia legalmente pertinente. Las cinco preguntas editoriales no pasan la materialidad/relevancia probada, pues el hecho central es una relación no verificada para las fechas y la ley requiere establecer dependencia. No se infiere que el vínculo no existiera, ni se imputa incumplimiento.

**Qué la reabriría:** acto/contrato o nómina oficial del empleador que aclare la fecha 2017 y el estatus de Carrillanca en cada fecha de orden; documento que establezca dependencia respecto de la autoridad superior del SLEP; y, para valorar el procedimiento, expedientes de compra que identifiquen participación y eventual excepción fundada. Sin ese antecedente, no reabrir por mera repetición de la misma declaración y órdenes.

## Fuentes comprobadas en esta reevaluación

- InfoProbidad, declaración de 31-03-2025: https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=f5b61a4acd2e513d88f6fe54ddef0a08
- Mercado Público: OC 1126922-1096-AG24, 1126922-2015-AG24, 1126922-2705-AG24 y 1126922-1630-AG25 (enlaces arriba).
- DEP, inicio del servicio educativo SLEP Llanquihue desde 2021: https://dep.gob.cl/sin-categoria/mas-de-11-mil-estudiantes-componen-el-nuevo-servicio-local-de-educacion-de-llanquihue/
- Contraloría General, Oficio E69939/2025: https://www.chilecompra.cl/wp-content/uploads/2025/04/CGR_Dictamen_35_quarter_19_886__1745887880.pdf
- Portal de Transparencia Activa SLEP Llanquihue (estructura orgánica; el índice lista secciones de personal): https://www.portaltransparencia.cl/PortalPdT/pdtta/-/ta/AJ028
- Servel, consulta en oro: `consultas/piero-carrillanca-hidalgo-slep-lafken-2026-2.sql`.

PR anterior devuelto: https://github.com/rodrigooig/estadoclaro-casos/pull/360

## Fuentes

[1] InfoProbidad, declaración del 31-03-2025: https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=f5b61a4acd2e513d88f6fe54ddef0a08
[2] Mercado Público, OC 1126922-1096-AG24: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1126922-1096-AG24
[3] Mercado Público, OC 1126922-2015-AG24: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1126922-2015-AG24
[4] Mercado Público, OC 1126922-2705-AG24: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1126922-2705-AG24
[5] Mercado Público, OC 1126922-1630-AG25: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1126922-1630-AG25
[6] Contraloría General, Oficio E69939/2025: https://www.chilecompra.cl/wp-content/uploads/2025/04/CGR_Dictamen_35_quarter_19_886__1745887880.pdf
[7] Dirección de Educación Pública, SLEP Llanquihue: https://dep.gob.cl/sin-categoria/mas-de-11-mil-estudiantes-componen-el-nuevo-servicio-local-de-educacion-de-llanquihue/
[8] Dirección de Educación Pública, qué es un SLEP: https://dep.gob.cl/que-es-un-slep/

## Decisión editorial (2026-11-24): lista para verificacion

Devuelvo el caso: InfoProbidad sí registra la actividad remunerada en el SLEP y el control declarado de Lafken; Mercado Público confirma las compras al mismo RUT. Pero la declaración fija el inicio laboral en 2017 y la DEP informa que el SLEP Llanquihue presta el servicio desde 2021, sin que estas fuentes establezcan continuidad, empleador contractual ni dependencia del personal respecto de la jefatura compradora en las fechas de las órdenes. Antes de sostener la relevancia bajo el artículo 35 quáter, falta acto/contrato o antecedente oficial que resuelva ese vínculo y, si corresponde, la excepción.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/360
