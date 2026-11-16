# José Gabriel Alemparte Mery — PSD Abogados y OC de la Corporación Municipal de San Joaquín

**Estado:** descartada  
**Fecha de cierre:** 2026-11-16  
**Corte del oro:** `2026-11-16T20:17:26+00:00`  
**Pregunta decisiva:** ¿La OC 643553-498-TD26 a PSD Abogados, enviada después del cese del cargo partidario declarado, acredita un nexo funcional entre la participación de Alemparte y la compra de la Corporación Municipal de San Joaquín?

## Hechos comprobados

- El oro asocia a José Gabriel Alemparte Mery con el cargo de miembro del órgano ejecutivo del Partido Demócratas Chile. La fila `office` más reciente es `cesado`, `ended_on=2026-03-09`; la declaración ID 1734351 tiene fecha 2026-03-31 y tipo “POR CESE DE FUNCIONES”. La URL de InfoProbidad vinculada al registro hoy muestra “Declaración no disponible”; por tanto, el cese personal y su contenido no se han podido reabrir en la primaria. Es dato derivado del oro, no constatación primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1734351 .
- En el oro, esa declaración de 31-03-2026 todavía incluye PSD ABOGADOS LIMITADA (RUT 76.828.654-K), tipo `DERECHO`, 25%, no controlador. La declaración previa del 19-03-2025 (ID 1377536) también la incluye. Ambos enlaces de InfoProbidad (ID 1734351 e ID 1377536) hoy dicen “Declaración no disponible”; no se pudo verificar de nuevo la participación directamente en InfoProbidad.
- La OC **643553-498-TD26** de Mercado Público identifica proveedor PSD Abogados Limitada, RUT **76.828.654-K**, y comprador Corporación Municipal de Desarrollo Social de San Joaquín, RUT **71.455.500-6**. Fue enviada el **11-08-2026**, figura **“Enviada a proveedor”**, y describe servicio de asesoría jurídica por CLP **$40.800.000** (998,84 UF según el oro). La orden dice “generada por Trato Directo ID 643553-16-FTD26” y muestra la causal declarada “Proveedor con alto grado de especialización”. La OC no acredita aceptación, ejecución ni pago. Fuente primaria: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=643553-498-TD26 .
- Servel informó que el 05-02-2026 dispuso la disolución de Demócratas Chile. Eso no prueba por sí solo que la relación individual de Alemparte terminara ese día ni el 09-03-2026: https://www.servel.cl/2026/02/12/servel-ordena-la-disolucion-de-13-partidos-politicos-tras-elecciones-de-diputados-y-diputadas-de-2025 .
- La fila de contratación del oro marca `timing=after_1y`, pero la sociedad figura en la declaración de cese del 31-03-2026 y el envío de la OC fue el 11-08-2026, menos de un año después de `ended_on` del oro. Por tanto, no tomo esa etiqueta como prueba de que la declaración hubiera dejado de acreditar la participación ni como prueba de una prohibición aplicable.

Consulta reproducible: `consultas/alemparte-psd-san-joaquin-2026-1.sql`.

## Explicación legítima más fuerte

PSD Abogados se presenta como proveedor de asesoría jurídica y la OC describe asesoría jurídica. La compra fue emitida por una corporación municipal, no por el Partido Demócratas Chile donde se declaró el cargo. No encontré evidencia de que Alemparte interviniera en la compra, ni de que el cargo partidario le otorgara competencia sobre la Corporación Municipal de San Joaquín. Un servicio contratado por especialización es una explicación ordinaria plausible; el expediente/adjuntos de la justificación del trato directo no se pudieron recuperar en las fuentes revisadas.

## Límites y decisión

La OC es una fuente primaria para el envío, comprador, proveedor, estado, monto y causal visible; no prueba recepción conforme ni pago. La fuente primaria de la declaración de cese está retirada/no disponible al momento de la comprobación. `same_institution` vacío/NULL significa que no se pudo determinar, no que exista una coincidencia institucional. No se ha demostrado que la limitación post-cese de la Ley 21.634 aplique a una función partidaria frente a este comprador. La consulta propia no ha demostrado intervención individual ni relación funcional.

**Decisión: descartada.** La semilla no se sostiene como un caso atribuible a Alemparte: el oro registra la participación en la declaración de cese y el comprador no es la institución del cargo declarado; además, la OC sigue en estado “Enviada a proveedor” y no se documenta intervención personal. La explicación legítima de un servicio de asesoría jurídica contratado por especialización permanece sin refutar. No pasa el umbral de interés público/nexo funcional para un borrador.

**Reabrir solo si:** una primaria accesible acredita una participación que dejó de declararse antes de la OC y se verifica que la regla post-cese alcanza a esta función y a este comprador, o el expediente oficial de trato directo/otro acto oficial acredita una intervención o beneficio funcional de Alemparte.

## Consultas

- `consultas/alemparte-psd-san-joaquin-2026-1.sql`
