# pier-giuseppe-karlezi-inversiones-don-pedro-campana-2025

## Pregunta decisiva
¿La campaña de Pier Giuseppe Karlezi Hazleby reportó un gasto y un reembolso electoral con una empresa que él declaró controlar, y qué monto de ese reembolso quedó efectivamente demostrado en las fuentes?

## Origen y selección
La pista fue elegida mediante consulta propia al oro, tras revisar INDICE.md por apellido. La selección proviene del cruce `campaign_self_supply` 2025 y la declaración por RUT; no estaba en el índice ni en los casos publicados. Se descartaron por reiteración o bajo valor las alternativas anotadas en `tmp/runs/20261123T203038Z/triage.md`.

## Hechos comprobados

- InfoProbidad, declaración voluntaria ID 1504512, fechada 19-08-2025 para candidatura a diputado: Karlezi declara actividad remunerada en Inversiones Don Pedro SpA y 50 acciones de la misma sociedad, RUT 77.741.416-K; declara calidad de controlador. La fuente informa valor corriente de CLP $2.000.000 y giro de compra y venta de vehículos.[1]
- Servel, reporte definitivo 2025: factura N.º 22 del RUT 77.741.416-K, fechada 14-11-2025, consigna arriendo de vehículos para personal de apoyo entre el 17-09 y el 13-11; la línea principal muestra CLP $2.768.409, con «Reembolso directo al candidato». El UF diario consultado en el oro es CLP $39.643,59, equivalente a 69,83 UF.[2]
- En la misma planilla Servel aparecen otra línea de factura N.º 22 por CLP $1.991.591, etiquetada «Arriendo vehiculo/ de acuerdo a respuesta», y una entrada del Formulario Auxiliar 107 por CLP $4.760.000 con «Reembolso hacia el mismo candidato». Otra entrada auxiliar identifica CLP $2.768.409 como «DIFERENCIA DE PAGO AL NO HABER OTRA FUENTE DE FINANCIAMIENTO». No se concluye que sean pagos adicionales ni se suma como gasto distinto: la relación entre importes no queda explicada en el reporte.[2]
- El archivo de resultado de auditoría de cuentas muestra «Aprueba» para la candidatura de Karlezi. Es el resultado general, no una determinación publicada sobre cada renglón.[2]
- BCN identifica a Karlezi como diputado del período 2026–2030 y consigna asunción el 11-03-2026.[3]

## Consulta reproducible
`consultas/pier-giuseppe-karlezi-inversiones-don-pedro-campana-2025-1.sql` reproduce la declaración y factura; `-2.sql` muestra las líneas de autoproveedor y `-3.sql` la conversión UF. Corte de oro: `2026-11-22T04:10:18+00:00`. El importe de UF se calcula con `uf_series` para 2025-11-14; la fuente de Servel publica CLP.

## Explicación legítima más fuerte
La empresa se declara como automotriz y el gasto se describe como alquiler de vehículos para traslado del personal de apoyo electoral. Servel publica una aprobación general de la cuenta. La operación podría ser un arriendo ordinario, a precio de mercado, correctamente rendido. No hay evidencia consultada de precio excesivo, pago a la sociedad, intervención pública, infracción o ventaja indebida.

## Debilidad principal
La revisión depende de la conexión exacta entre dos fuentes primarias mediante el RUT declarado; esa identidad y control se comprueban en InfoProbidad y el gasto en el archivo primario de Servel. El límite es financiero: el reporte contiene importes distintos para la misma factura y no explica de manera inequívoca qué se solicitó, aprobó o pagó. «Reembolso directo al candidato» es la etiqueta consignada, no prueba autónoma de pago efectivo.

## Decisión
**Borrador listo para el editor.** Es un caso nuevo sobre el uso declarado de una empresa controlada para un gasto de campaña que incluye un reembolso electoral, con importe individual de CLP $2.768.409 (69,83 UF). La identidad, relación declarada, rubro, fecha, monto y resultado global de la auditoría se reabrieron en primarias. La revisión del editor debe cotejar la relación entre los importes y determinar si el reporte prueba autorización o pago individual. El borrador no imputa ilegalidad ni beneficio personal y limita las preguntas a respaldos contables concretos.

## Fuentes primarias
[1] InfoProbidad, declaración 1504512: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1504512
[2] Servel, Reporte definitivo de ingresos y gastos electorales 2025 (hojas FORMULARIO 87 Y 88, FORMULARIO AUXILIAR 107 y Resultado Auditoria Cuentas): https://www-doc.servel.cl/2026/09/Reporte%20Ingresos%20y%20Gastos%20Electorales%202025%20-%20Definitivas%20Presidenciales%20y%20Parlamentarias.xlsx
[3] Biblioteca del Congreso Nacional, reseña biográfica: https://www.bcn.cl/historiapolitica/resenas_parlamentarias/wiki/Pier_Giuseppe_Karlezi_Hazleby

## Decisión editorial (2026-11-24): publicado

Publico: InfoProbidad 1504512 atribuye a Pier Giuseppe Karlezi Hazleby la declaración voluntaria de 19-08-2025, 50 acciones y control de Inversiones Don Pedro SpA, RUT 77.741.416-K. En la planilla oficial definitiva de Servel, el Formulario Auxiliar 107 registra la factura 22 por $2.768.409 como diferencia sin otra fuente de financiamiento y otra línea por $4.760.000 como reembolso al mismo candidato; la auditoría general dice «Aprueba», no acredita por sí sola pago ni autorización de esta línea. Mantener la discrepancia y esos límites explícitos: no inferir beneficio personal o irregularidad.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/363
