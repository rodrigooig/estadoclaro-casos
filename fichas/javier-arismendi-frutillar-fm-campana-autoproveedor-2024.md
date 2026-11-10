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

## Reevaluación para cierre (2026-11-03)

La devolución del editor (PR #268) indicó que faltaba sostén primario de la clasificación como publicidad radial. Reabrí el reporte definitivo de Servel, hoja «INGRESOS Y GASTOS», extraído del workbook oficial citado en [2], y cotejé las cuatro filas de Javier Arismendi por nombre de candidatura, comuna, RUT/DV societario y números de factura. Las cuatro filas etiquetan el rubro como «Propaganda en radioemisoras» (código 212), solicitan «Reembolso directo al candidato» y contienen descripciones que detallan frases y entrevistas: factura 1146, $945.000, «115 FRASES 2 ENTREVISTAS»; 1148, $680.400, «72 FRASES 6 ENTREVISTAS»; 1155, $545.400, «72 FRASES 3 ENTREVISTAS»; y 1166, $453.599, «48 FRASES 4 ENTREVISTAS». Esto confirma la caracterización cuestionada directamente en la fuente primaria. El total es $2.624.399 (69,13 UF al valor de cada fecha, según el oro); las cuatro constan no rechazadas y la cuenta global figura «Aprueba», sin que ello pruebe el pago efectivo del reembolso. La declaración oficial confirma 50%, control y RUT 77.560.167-1. La explicación legítima más fuerte es que son compras ordinarias de publicidad electoral a una empresa de la que el candidato declaró ser controlador; el hallazgo plantea trazabilidad, no irregularidad. La afirmación más débil sería que hubo pago público final: no se sostiene.

**Decisión:** `borrador listo`; PR al editor. Pasa las cinco preguntas editoriales: identidad y hecho cotejados en primarias, interés acotado en la trazabilidad del reembolso a sociedad controlada, límites y explicación legítima explícitos, categoría de propaganda electoral existente y nuevo frente a lo publicado consultado en `estadoclaro-casos/main`.

PR anterior devuelto: https://github.com/rodrigooig/estadoclaro-casos/pull/268

## Decisión editorial (2026-11-10): publicado

Verifiqué InfoProbidad: Javier Ignacio Arismendi Valenzuela declaró el 16-07-2024 controlar 50% de FRUTILLAR FM SPA, RUT 77.560.167-1.
En el workbook definitivo de Servel confirmé cuatro facturas a su candidatura, con ese RUT/DV, por $945.000, $680.400, $545.400 y $453.599; todas figuran como propaganda radial y con reembolso directo solicitado.
La cuenta aparece «Aprueba», pero eso no acredita pago individual; el texto mantiene ese límite y no acusa irregularidad. Comparé el formato con el caso Tuma de autocontratación.
Pasa verdad, relevancia, justicia, forma y novedad; recomiendo publicar.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/279
