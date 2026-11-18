# Guillermo Martínez Soto — gasto de campaña en sociedad declarada

## Pregunta decisiva

¿La factura de campaña de 2024 a una empresa en la que Guillermo Antonio Martínez Soto declaró acciones plantea una pregunta material de interés público, más allá de un gasto ordinario transparentado?

## Hechos comprobados

- InfoProbidad identifica a Guillermo Antonio Martínez Soto como candidato a alcalde de Toltén en su declaración de candidatura del 18-07-2024. Allí declara 10 acciones (10%) de **Televisiva Cruz del Sur** (RUT 77.016.420-6), valoradas en CLP $17.000.000; marca «Tiene Calidad de Controlador: false». Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1244637
- La declaración municipal posterior lo registra como alcalde de la Municipalidad de Toltén, con fecha de asunción declarada 06-12-2016. Fuente primaria (actualización de 30-09-2026): https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1892844
- El archivo definitivo de ingresos y gastos del Servel para municipales 2024 registra la factura 2509, emitida el 08-11-2024 por Televisiva Cruz del Sur Limitada, RUT 77.016.420-6, por CLP $506.000 (13,33 UF según el oro); categoría «Propaganda en radioemisoras», concepto «Publicidad electoral spot radial», con «Reembolso directo al candidato» solicitado. No marca esa factura como gasto rechazado. Fuente primaria, archivo oficial: https://www-doc.servel.cl/2025/08/Reporte_Ingresos_Gastos_Definitivas2024.xlsx (hoja `INGRESOS Y GASTOS`, fila de datos 237411 de la extracción `xlsx2csv -a`; resultado consolidado en `Resultado Auditoria Cuentas`, fila de datos 1032).
- El Servel calificó como «Rechaza» la cuenta de la candidatura. El gasto rechazado individualizado en el mismo archivo es distinto: factura 15, CLP $1.100.000, de Saavedra y Silva SpA (RUT 77.996.065-K), por arriendo de amplificación, iluminación y generador para el cierre de campaña. La factura 2509 de Televisiva Cruz del Sur no aparece como rechazada. Fuente primaria: mismo libro del Servel, hojas `INGRESOS Y GASTOS` y `Resultado Auditoria Cuentas`.
- El oro, corte `2026-11-17T18:25:42+00:00`, registra reembolso fiscal total de la candidatura de CLP $0. En las órdenes de compra por RUT exacto 77.016.420-6 no aparece una compra municipal posterior al inicio de su período como alcalde; las órdenes halladas son de 2007–2010, anteriores al cargo declarado.

## Explicación legítima más fuerte y límites

La línea es compatible con un gasto normal de propaganda radial de campaña, por un monto acotado, prestado por una empresa en que el candidato declaró una participación minoritaria y no controladora. La solicitud de reembolso no prueba que se pagara; el oro registra CLP $0 de reembolso fiscal para la candidatura. El rechazo global de la cuenta no se atribuye a esta factura: la primaria marca como rechazado otro gasto, a otro proveedor. No se encontró evidencia de sobreprecio, servicio no prestado, beneficio fiscal pagado ni intervención municipal relacionada.

## Decisión

**Descartada.** La primaria confirma el pago de campaña a una sociedad declarada, pero la factura no fue rechazada; el rechazo global se explica en la primaria mediante otro gasto y proveedor. No se acredita irregularidad, beneficio fiscal efectivo o nexo entre la transacción electoral y el ejercicio de la alcaldía. La cuantía (13,33 UF) y la naturaleza del gasto ordinario no sostienen, por sí solas, un caso para investigador/a o auditor/a.

Reabrir solo si una resolución del Servel objeta específicamente la factura 2509, aparece evidencia de que se pagó un reembolso público por esta línea o una fuente primaria documenta servicio simulado/sobreprecio; o si se acredita una contratación pública municipal posterior con la sociedad y un nexo funcional.

## Consultas reproducibles

- SQL registrada en `consultas/guillermo-martinez-soto-autoproveedor-campana-2024-1.sql`.
- Servel: Excel oficial descargado y convertido con `xlsx2csv -a`; los detalles relevantes se cotejaron en `INGRESOS Y GASTOS.csv` y `Resultado Auditoria Cuentas.csv`.

## Fuentes primarias

- InfoProbidad, declaración de candidatura, 18-07-2024: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1244637
- InfoProbidad, actualización municipal, 30-09-2026: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1892844
- Servel, reporte definitivo de ingresos y gastos municipales 2024: https://www-doc.servel.cl/2025/08/Reporte_Ingresos_Gastos_Definitivas2024.xlsx
- Meta del oro, corte: `2026-11-17T18:25:42+00:00`.

Todos los montos son pesos nominales de la fecha de la fuente; las UF se consignan para comparación. Los antecedentes patrimoniales son declarados por su titular y no están auditados.