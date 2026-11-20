# Jesús del Carmen Orellana Prado — gasto de campaña a sociedad declarada

## Pregunta decisiva
¿La cuenta electoral de Orellana Prado registró como gasto un arriendo pagado a una sociedad cuyo RUT él mismo declaró antes de la elección; y hay indicio primario de objeción, reembolso público, anomalía o materialidad que convierta la coincidencia en caso de interés público?

## Hechos comprobados

- La declaración primaria InfoProbidad 1265506, de 27-07-2024, identifica a JESUS DEL CARMEN ORELLANA PRADO como candidato a concejal 2024 por Mostazal. Registra ACCION en AGROCOMERCIAL ORELLLANA PRADO SPA, RUT 76.641.777-9, cantidad/porcentaje «100», adquirida el 05-07-2024; marca «Tiene Calidad de Controlador: false». No interpreto el «100» como porcentaje ni como prueba de control. Fuente: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1265506
- La primaria de Servel, Reporte de Ingresos y Gastos, Elecciones Municipales y Regionales 2024 (publicado en el módulo oficial de archivos), en la hoja «INGRESOS Y GASTOS», fila exportada 299931, registra para Orellana Prado, concejal por Mostazal, Formulario 103, fecha 10-11-2024, CLP $952.000, registro documental 407883, cuenta «Arriendo de vehiculos», detalle «Registro de Vehículos». El proveedor/RUT base es 76.641.777, concordante con el cuerpo del RUT declarado. En la hoja «FORMULARIO AUXILIAR 103», fila exportada 5952, se vuelve a listar a Jesús del Carmen Orellana Prado como titular de la cuenta, el mismo RUT de proveedor, sociedad «Agrocomercial Orellana Prado spa», estado «pagado» y CLP $952.000. Fuente: https://www-doc.servel.cl/2025/08/Reporte_Ingresos_Gastos_Definitivas2024.xlsx (fichero oficial enlazado desde https://www.servel.cl/servel/modulo-de-archivos?id=4).
- La reejecución guardada en `consultas/jesus-orellana-agrocomercial-campana-2024-1.sql` devuelve una fila: el gasto de CLP $952.000 = 25,07 UF, RUT societario/proveedor coincidente, `is_rejected = false`, `reimbursement_requested = false`; la cuenta completa aparece «aprueba con observaciones». Esto último es un estado global, no una objeción a esta línea. Oro: `meta.build_date = 2026-11-17T18:25:42+00:00`.
- Servel describe Formulario 103 como «Registro de Vehículos» y explica que los gastos electorales deben respaldarse con documentos que acrediten el desembolso/traspaso. No localicé factura, contrato de arriendo ni identificación del vehículo concreto asociados a la línea; por tanto, la fila no acredita por sí sola el pago bancario, la prestación efectiva, tarifa de mercado ni el motivo de las observaciones globales. Guía: https://www.servel.cl/campanas-electorales/control-de-la-contabilidad-electoral/

## Explicación legítima más fuerte y límites
La cuenta describe el uso como arriendo de vehículos y el auxiliar lo registra como pagado; se trata de una operación registrada, individualmente no rechazada, por 25,07 UF. La empresa aparece declarada por el candidato y el RUT coincide, pero la primaria marca controlador «false» y no permite afirmar porcentaje de propiedad/control. El objeto de la sociedad se registra en la declaración como servicios agrícolas; eso no prueba que el arriendo no se haya realizado ni que haya irregularidad. El estado «aprueba con observaciones» no se atribuye a esta operación. No hay evidencia de reembolso fiscal solicitado para esta línea, de objeción individual, servicio simulado o nexo con una decisión pública municipal.

## Decisión
**Descartada.** Coincidencia de interés verificable, pero monto individual modesto, inferior a 30 UF; el gasto no figura rechazado y no hay anomalía o nexo funcional adicional. La fuente primaria apoya un arriendo para campaña, una explicación comercial ordinaria. La falta de contrato/factura impide verificar características y precio, pero no basta para abrir un caso acusatorio o de auditoría con la información disponible.

Reabrir solo si Servel objeta/rechaza específicamente el documento 407883, aparece una solicitud o pago de reembolso público no reflejada aquí, se identifican pagos adicionales al mismo RUT que eleven materialmente la operación, o un antecedente primario vincula el gasto con una contratación municipal/decisión pública o con una prestación no realizada.

## Consultas y artefactos
- SQL reproducible: `consultas/jesus-orellana-agrocomercial-campana-2024-1.sql` (solo `ec-gold-sql`; corte arriba).
- Servel XLSX descargado y exportado con `xlsx2csv -a` para verificar las filas primarias; evidencia temporal local en `tmp/runs/20261120T040636Z/jesus-orellana-agrocomercial-campana-2024/evidence/`.
- La selección y candidatos descartados de vistazo constan en `tmp/runs/20261120T040636Z/triage.md`.
