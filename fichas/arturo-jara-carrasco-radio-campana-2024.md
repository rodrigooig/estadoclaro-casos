# Ficha: Arturo Jara y gasto electoral a radiodifusora declarada

## Pregunta decisiva
¿Hay un hecho nuevo, verificable y de interés público sobre el gasto de campaña de Arturo Jara a una sociedad que declaró controlar, que supere la explicación ordinaria de propaganda radial contratada por la campaña?

## Hechos comprobados

- InfoProbidad identifica a **Arturo Segundo Jara Carrasco**, candidato a concejal 2024 por Rancagua, en declaración presentada el 23-07-2024 (ID 1254015). La fuente registra que declaró actividad económica en radiodifusión durante los últimos 12 meses.
- En esa declaración Jara declaró **RADIODIFUSORA ARTURO JARA CARRASCO EIRL**, RUT **76.040.081-5**, tipo DERECHO, cantidad/porcentaje 40, valor declarado CLP $4.000.000, adquisición 18-03-2018 y calidad de controlador. La misma declaración identifica por separado que su cónyuge declaró otros derechos en la misma entidad. Son datos declarados, no verificación societaria independiente.
- El reporte definitivo de ingresos y gastos electorales 2024 de Servel, hoja “INGRESOS Y GASTOS”, registra para la candidatura de Jara una factura afecta N.º 617 de la Radiodifusora, fechada 24-10-2024, por **CLP $987.000** (26,00 UF según oro), cuenta 212 “Propaganda en radioemisoras”. La descripción dice “DIFUSION RADIAL 35 FRASES DIARIAS DESDE EL 19 AL 24 DE OCTUBRE PARA EL CANDIDATO A CONCEJAL POR RANC…”, y el registro indica “Reembolso directo al candidato”. La fila no figura como gasto rechazado.
- La misma planilla incluye una línea de reembolso a la candidatura, de CLP $987.000, asociada al RUT 76.040.081-5. El registro de una solicitud/línea de reembolso no prueba que el pago público se haya efectuado. La candidatura consta con resultado general “Aprueba con Observaciones”; ese estado no equivale a aprobación individual de cada gasto.
- Medición reproducible del oro: una fila de `campaign_self_supply` con monto CLP $987.000; importe en UF 26,00. `uf_series` registra UF de CLP $37.962,86 el 24-10-2024. Corte `meta.build_date`: **2026-10-30T15:53:06+00:00**.

## Fuentes primarias revisadas

1. InfoProbidad, declaración completa ID 1254015, fecha 23-07-2024: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1254015
2. Servel, “Reporte_Ingresos_Gastos_Definitivas2024.xlsx”, hoja “INGRESOS Y GASTOS” y hoja “FORMULARIO AUXILIAR 107”: https://www-doc.servel.cl/2025/08/Reporte_Ingresos_Gastos_Definitivas2024.xlsx. Descarga oficial convertida con `xlsx2csv -a`; línea CSV de gastos 322422 y línea del auxiliar 107 322577.
3. Consulta propia reproducible: `consultas/arturo-jara-carrasco-radio-campana-2024-1.sql`; solo lectura con `ec-gold-sql`.

## Explicación legítima más fuerte y límites

La emisora ofrece servicios comerciales de publicidad radial y la candidatura declaró un gasto por anuncios de campaña. El concepto y el período descritos son coherentes con ese servicio; en el mismo libro hay gastos de otras candidaturas a la misma radiodifusora. El asiento de Servel registra un reembolso solicitado, no prueba pago, sobreprecio, servicio no prestado ni irregularidad. La declaración acredita lo informado por Jara en julio de 2024, no una auditoría registral independiente.

## Decisión: descartada

Aunque la fuente primaria confirma que el candidato declaró controlar al proveedor y que la campaña registró propaganda radial a ese RUT, el hecho queda en una factura de CLP $987.000 (26 UF), no rechazada, por publicidad descrita con fechas/cantidad de frases, dentro de una actividad comercial declarada y sin anomalía documental adicional. Por el cargo y materialidad, no supera el umbral de interés público para un caso individual de auditoría; no se halló nexo con Mercado Público ni otra circunstancia que amplíe la pregunta. No se infiere conflicto o infracción.

Reabrir solo si aparece una resolución de Servel que cuestione específicamente esta factura, prueba de pago público o beneficio/servicio distinto de lo declarado, una divergencia material entre respaldo y gasto rendido, o un patrón de gastos/reembolsos de mayor escala vinculado a la empresa.
