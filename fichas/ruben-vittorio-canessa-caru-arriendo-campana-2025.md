# Ficha: Rubén Vittorio Canessa Morales — arriendo de sede de campaña a sociedad declarada

**ID:** `ruben-vittorio-canessa-caru-arriendo-campana-2025`  
**Decisión:** `borrador listo` — enviar al editor.  
**Pregunta decisiva:** ¿El gasto electoral de CLP 1.500.000 informado por Vittorio Canessa a la sociedad CARU corresponde a un arriendo de sede para su campaña y coincide con la sociedad y RUT que declaró como titular de derechos antes de la elección? Sí, el reporte definitivo de Servel lo registra como gasto rechazado y el auxiliar 107 lo describe como arriendo por dos meses; la declaración InfoProbidad previa registra 56,25% de derechos en entidad con el mismo RUT. La empresa fue autodeclarada como no controlada.

## Hechos comprobados

- InfoProbidad, declaración 1505263, individualiza a **RUBEN VITTORIO CANESSA MORALES**, fechada 20-08-2025. Registra el derecho en `SOCIEDAD INMOIBILIARIA IMPORTADORA Y EXPORTADORA CARU LIMITADA`, RUT **77.713.010-2**, 56,25%, valor declarado CLP $80.000.000, adquisición 07-02-2014, y `Tiene Calidad de Controlador: false`. También consigna la actividad económica de director en SOCIEDAD INMOBILIARIA CARU LIMITADA, con el mismo RUT. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1505263
- La planilla definitiva de Servel de ingresos y gastos electorales 2025 identifica al candidato a diputado por Tarapacá, Vittorio Canessa Morales. En línea de gasto 584611, fecha 14-11-2025, registra factura afecta por CLP $1.500.000 (37,84 UF en el oro) a RUT 77.713.010-2, a nombre de `SOC INMOBILIARIA IMPORTADORA YEXPORTADORA CARU LIMITADA`, en la cuenta “Gasto rechazado”, categoría “Registro de Sedes”.
- El auxiliar 107 del mismo reporte describe el ítem a la entidad identificada con el mismo RUT como “Arrendamiento 2 meses sede electoral” por CLP $1.500.000 y marca “Reembolso hacia el mismo candidato”. El auxiliar 102 lo consigna como “pagado”. Estos registros no acreditan que Servel reembolsara el gasto: la fila principal está marcada rechazada y el resultado de auditoría de la candidatura dice “Rechaza”.
- RUT idéntico: el cuerpo `77713010` en las fuentes Servel coincide con el cuerpo de `77.713.010-2` de InfoProbidad; el dígito verificador es 2. Nombre y candidatura también son coincidentes. No se trata de una atribución por homonimia.

## Explicación legítima y límites

La explicación ordinaria más plausible es que la campaña arrendó una sede electoral a una sociedad en que Canessa había declarado participación. El arriendo puede ser una operación real a precio comercial; la declaración dice que no era controlador. La fuente oficial reporta que el gasto fue rechazado, pero el registro consultado no identifica el fundamento específico del rechazo ni demuestra pago efectivo a la sociedad o reembolso público. Hay una discrepancia de razón social y tipo en documentos auxiliares (Ltda. en la declaración y línea principal; “Caru SPA” en los formularios auxiliares), aunque el RUT es el mismo: no inferir transformación societaria ni resolver la forma jurídica con estos documentos.

## Decisión editorial

Enviar como pieza factual para auditoría: una candidatura registró un gasto por arriendo de sede a una sociedad cuyo 56,25% de derechos había declarado el candidato; Servel lo clasificó como rechazado. Es un nexo material y de interés público con primarias accesibles, sin concluir ilegalidad, enriquecimiento, conflicto normativo ni reembolso. Preguntas acotadas para seguimiento: causal del rechazo; contrato, factura y respaldo del pago; períodos y titularidad de la sede; explicación de la variación de nombre/forma en anexos.

## Consultas reproducibles

- `consultas/ruben-vittorio-canessa-caru-arriendo-campana-2025-1.sql` — consulta unificada de la declaración, el gasto Servel y `meta.build_date`.
- Excel oficial Servel descargado a `tmp/servelcanessa/report.xlsx`, convertido con `xlsx2csv -a` (sin cargar XML en Python); líneas de respaldo: `FORMULARIO 87 Y 88.csv`, `FORMULARIO AUXILIAR 107.csv`, `FORMULARIO AUXILIAR 102.csv`, `Resultado Auditoria Cuentas.csv`.
- Corte del oro: `2026-10-27T15:25:49+00:00`.

## Decisión editorial (2026-10-29): publicado

Verifiqué InfoProbidad 1505263: Rubén Vittorio Canessa Morales declaró 56,25% de derechos en CARU, RUT 77.713.010-2, y que no era controlador.
En el reporte definitivo oficial de SERVEL 2025, la línea 584611 registra $1.500.000 el 14-11-2025 a ese RUT, como gasto rechazado en “Registro de Sedes”; el auxiliar 107 lo describe como arriendo por dos meses.
El auxiliar refiere reembolso solicitado, no prueba pago; la auditoría de la candidatura figura “Rechaza” y no se publica la causal específica.
La coincidencia por RUT y los límites están expuestos; el caso es consistente con el precedente publicado de Tuma y no hallé duplicado en la categoría.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/239
