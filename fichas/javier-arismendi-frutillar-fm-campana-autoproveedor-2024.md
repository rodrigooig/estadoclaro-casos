# Javier Arismendi — campaña contrató a FRUTILLAR FM SPA, sociedad declarada

## Pregunta decisiva
¿El registro oficial de Servel asocia gastos de la candidatura a alcalde 2024 de Javier Ignacio Arismendi Valenzuela con FRUTILLAR FM SPA, y la declaración de patrimonio contemporánea acredita un interés del candidato en esa misma entidad? ¿Qué se puede afirmar del reembolso y de la auditoría?

## Hechos comprobados

- InfoProbidad identifica al declarante como **Javier Ignacio Arismendi Valenzuela**, candidato a alcalde de Frutillar 2024. Su declaración voluntaria está fechada 16-07-2024. Registra FRUTILLAR FM SPA, RUT **77.560.167-1**, giro PUBLICIDAD, 50% de participación, adquirida 21-11-2022, control declarado y valor corriente/libro de $1.000.000. [1]
- El libro definitivo de ingresos y gastos de Servel para las elecciones municipales y regionales de 2024 identifica a la candidatura **Javier Arismendi Valenzuela**, comuna Frutillar, y registra cuatro facturas de FRUTILLAR FM SPA con RUT proveedor 77.560.167 y DV 1: documentos 1146, 1148, 1155 y 1166, fechados entre 30-09 y 22-10-2024. Sus montos son $945.000, $680.400, $545.400 y $453.599; las glosas los describen como propaganda radial/campaña y cada fila indica «Reembolso directo al candidato». [2]
- La suma de esas cuatro filas es **$2.624.399 (69,13 UF)**, según los registros del oro para esas fechas; las cuatro están en el rubro «Propaganda en radioemisoras», con `is_rejected=false` y solicitud de reembolso directa al candidato. [2][3]
- En la hoja de resultado de auditoría del mismo reporte, la candidatura aparece como **«Aprueba»**. El oro consigna CLP $3.000.001 en gastos rechazados en el total de la cuenta, por lo que «Aprueba» no significa que no hubiera otros gastos rechazados. La hoja no confirma que los $2.624.399 se hayan efectivamente pagado como reembolso. [2][3]
- La Municipalidad de Frutillar informa que Arismendi juró como alcalde para el período 2024–2028 el 06-12-2024, después de las facturas electorales. [4]

## Consultas reproducibles
- `consultas/javier-arismendi-frutillar-fm-campana-autoproveedor-2024-1.sql`: suma y clasificación de las líneas de `campaign_self_supply`.
- `consultas/javier-arismendi-frutillar-fm-campana-autoproveedor-2024-2.sql`: cotejo línea a línea de `campaign_expense`, RUT y DV del proveedor.
- El workbook de Servel fue descargado de [2] y convertido con `xlsx2csv -a`; cotejadas las cuatro filas por candidatura, RUT, fecha, número de factura, monto, rubro y reembolso, y la fila «Aprueba» de `Resultado Auditoria Cuentas`.

## Explicación legítima más fuerte
Las cuatro filas describen servicios de publicidad radial para la campaña; aparecen en el reporte definitivo, cada una solicita reembolso directo al candidato y ninguna de esas cuatro está marcada como rechazada. La cuenta de la candidatura figura «Aprueba». Son registros de gastos de campaña que pueden ser legítimos; no hay evidencia revisada de un servicio ficticio, desembolso público efectivamente pagado, infracción o intervención indebida. El interés periodístico/auditor es la trazabilidad del reembolso solicitado hacia una sociedad controlada por el candidato, no una imputación.

## Decisión
**borrador listo; PR al editor.** Hecho nuevo, identidad por nombre completo y RUT/DV societario coincidente, dos fuentes primarias accesibles y cantidad material de gasto con reembolso solicitado. La afirmación más débil sería que hubo beneficio público efectivamente pagado: no está acreditado; el borrador lo excluye expresamente y deja una pregunta acotada sobre el pago final. No se afirma ilegalidad ni que el estado global de auditoría pruebe pago o aprobación individual de cada factura.

## Fuentes
1. InfoProbidad, declaración voluntaria del 16-07-2024: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1241721
2. Servel, Reporte definitivo de ingresos y gastos municipales/regionales 2024, hojas «INGRESOS Y GASTOS» y «Resultado Auditoria Cuentas»: https://www-doc.servel.cl/2025/08/Reporte_Ingresos_Gastos_Definitivas2024.xlsx
3. EstadoClaro oro, build 2026-10-30T15:53:06+00:00; SQL anteriores. Valores de UF preservan la fecha de cada fuente.
4. Municipalidad de Frutillar, nombramiento y juramento para el período 2024–2028: https://munifrutillar.cl/javier-arismendi-valenzuela-juro-como-alcalde-de-frutillar-para-el-periodo-2024-2028/

## Decisión editorial (2026-11-03): lista para verificacion

Devolución: reabrí InfoProbidad (ID 1241721) y el reporte definitivo de Servel (reporte anual 2024, Formulario Auxiliar 107). La declaración confirma 50%, control y RUT 77.560.167-1; Servel confirma cuatro facturas por $2.624.399 con reembolso al candidato, pero sus glosas dicen «PUBLICIDAD ELECTORAL 2024», no identifican por sí solas publicidad radial ni su clasificación como «Propaganda en radioemisoras». La pregunta de trazabilidad es pertinente, pero falta sostén primario para esa caracterización concreta: aportar el respaldo oficial del rubro/servicio o retirar esa afirmación en una nueva entrega. No se afirma pago efectivo.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/268
