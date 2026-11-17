# BRAVOS SPA y ventas públicas concurrentes con la función declarada — descartada

- **ID:** `naslo-bravo-perez-bravos-spa`
- **Categoría:** compras / relaciones con el Estado; actividades y temporalidad.
- **Estado:** descartada.
- **Fecha de cierre:** 2026-11-17.
- **Corte de datos:** `meta.build_date = 2026-11-16T20:17:26+00:00`.
- **Identidad:** NASLO ALBERTO BRAVO PÉREZ, según InfoProbidad 5125222; atribución societaria y compras enlazadas por RUT 76.958.669-5, no por similitud de nombre.

## Hechos comprobados

- La declaración original de InfoProbidad presentada el 30-09-2026 señala organismo Poder Judicial, cargo “Jefe Seccion Finanzas Y Presupuesto” y fecha de asunción 01-01-2021. Registra BRAVOS SPA, RUT 76.958.669-5, como “ACCION”, cantidad/porcentaje 100, valor libro CLP $40.000.000 y adquisición declarada el 21-12-2018. El mismo formulario marca “Tiene Calidad de Controlador: false”; no interpreto ni resuelvo esa inconsistencia. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5125222
- En el oro, ese RUT societario enlaza en ventana `during` 110 órdenes principales atribuidas por el cruce, desde 2025-04-01 a 2026-11-12, para 21 compradores; 12 con ruta de trato directo y 61 Compra Ágil. El agregado del oro es CLP $147.108.089 (3.690,75 UF en el artefacto). Es una medida del cruce, no ingreso de Bravo ni cifra publicada como suma verificada orden por orden. SQL reproducible: [`consultas/naslo-bravo-perez-bravos-spa-20261117.sql`](../consultas/naslo-bravo-perez-bravos-spa-20261117.sql).
- El cruce informa 0 órdenes con `same_institution = true`. La consulta de campañas por el mismo `person_id` devuelve 0 filas. `same_institution` nulo, cuando existe, significa “no se pudo determinar”; no se convierte en falso.
- Verificación primaria puntual de Mercado Público: la OC 5592-3218-AG25, enviada el 02-04-2025 y en estado Recepción Conforme, identifica proveedor BRAVOS SPA, RUT 76.958.669-5 (mismo de la declaración), total CLP $4.946.634. La ficha la titula “HABILITACIÓN CENTRO TECNOLÓGICO REGIONAL PDI VALDIVIA” y señala Compra Ágil de hasta 30 UTM. Los ítems incluyen equipamiento e instalación para ese centro. Fuente: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=5592-3218-AG25
- Esta orden ilustra el problema de atribución: el comprador es la Policía de Investigaciones, no el Poder Judicial; el proveedor está identificado por razón social y RUT, pero no hay documento que atribuya trabajo personal o intervención de Bravo en la operación. Una compra puntual no valida todo el universo de 110 órdenes.

## Pregunta decisiva y explicación legítima más fuerte

¿Existe evidencia primaria de que la participación declarada de Bravo se benefició de compras sobre las que su cargo de finanzas y presupuesto del Poder Judicial podía decidir, influir, evaluar o recibir? La explicación más fuerte que muestran las primarias consultadas es actividad comercial de BRAVOS SPA vendiendo a múltiples entidades públicas; la orden revisada corresponde a una compra de PDI para un proyecto de habilitación y no al organismo en que el declarante informa ejercer. No se infiere que el funcionario haya prestado el servicio, intervenido, obtenido ingresos personales, cometido infracción ni recibido trato preferente.

## Decisión

**Descartada.** La identidad, el dato declarado y la existencia de una compra al mismo RUT están comprobados, pero el conjunto consultado no demuestra nexo entre la función concreta y una contratación, beneficio personal o participación del funcionario. La venta a otras entidades y el agregado de órdenes del oro no reemplazan esa pieza. Tampoco se verificaron una por una las órdenes del agregado, por lo que no se presenta el monto global como cifra primaria.

**Qué la reabriría:** un acto, expediente de compra o registro oficial que vincule a Bravo con evaluación, autorización, administración, recepción o pago de una orden; una compra primaria al Poder Judicial durante el ejercicio; o evidencia oficial de que su función incluye atribuciones directas sobre las contrataciones identificadas. Para usar un monto agregado en un caso, cotejar cada OC única con su ficha primaria y estados.

## Fuentes y consultas

1. InfoProbidad, declaración 5125222 (fecha, cargo, asunción y participación): https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5125222
2. Mercado Público, OC 5592-3218-AG25 (proveedor, RUT, comprador, descripción, procedimiento, estado e importe): http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=5592-3218-AG25
3. Oro, solo mediante `ec-gold-sql`, corte 2026-11-16T20:17:26+00:00: [`consultas/naslo-bravo-perez-bravos-spa-20261117.sql`](../consultas/naslo-bravo-perez-bravos-spa-20261117.sql).
