# Pier Karlezi — gasto de campaña asociado a Inversiones Don Pedro SpA

## Pregunta decisiva
¿El gasto electoral de 2025 informado a Inversiones Don Pedro SpA, sociedad que Pier Giuseppe Karlezi Hazleby declaró controlar, acredita un hecho material y verificable con interés público no resuelto por la revisión electoral ni explicado como una operación ordinaria?

## Hechos comprobados

- InfoProbidad, declaración voluntaria n.º 1504512, presentada el 19-08-2025 como candidato a diputado, identifica a **PIER GIUSEPPE KARLEZI HAZLEBY**. Declara actividad laboral remunerada en el rubro automotriz para INVERSIONES DON PEDRO SPA, RUT **77.741.416-K**, iniciada el 01-03-2023. En sociedades declara 50% de acciones, valor declarado CLP $2.000.000, y calidad de controlador. La declaración es una foto de esa fecha. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1504512
- Reporte definitivo de ingresos y gastos electorales 2025 de Servel (candidatura a diputado, distrito 8) informa cuenta **Aprueba**, gastos totales CLP $33.991.112 y gasto asociado a la sociedad CLP $4.760.000 (120,07 UF según el oro al corte; gasto no rechazado). En la planilla principal, la autoprovisión corresponde a arriendo de vehículos.
- La descarga oficial de Servel en formato XLSX es: https://www-doc.servel.cl/2026/09/Reporte%20Ingresos%20y%20Gastos%20Electorales%202025%20-%20Definitivas%20Presidenciales%20y%20Parlamentarias.xlsx. En la hoja “FORMULARIO AUXILIAR 107”, aparecen dos filas el 14-11-2025 con documento 22: CLP $2.768.409 con RUT 77.741.416-K y glosa de diferencia de pago/arriendo; y CLP $4.760.000 con el nombre de la empresa pero sin RUT visible. La hoja “FORMULARIO 87 Y 88” registra la primera cifra como gasto por arriendo de vehículos, con reembolso directo solicitado al candidato. No se interpreta la diferencia documental como pago duplicado: el detalle desagregado requiere conciliación, y el reporte final aprueba la cuenta.
- SQL al oro: la tabla `campaign_self_supply` da dos registros del mismo gasto por CLP $2.768.409 y $1.991.591, total CLP $4.760.000/120,07 UF; ambos no rechazados. El primero tiene solicitud de reembolso directo al candidato. `purchase_order` no contiene órdenes con supplier_rut `77741416` ni coincidencias nominales con “INVERSIONES DON PEDRO” al corte `2026-10-27T15:25:49+00:00`.

## Explicación legítima más fuerte
La sociedad opera en el rubro automotriz que el declarante informó y el concepto registrado es arriendo de vehículos para campaña. El gasto fue incluido en la rendición electoral definitiva, no fue rechazado y la cuenta quedó aprobada. El reembolso descrito es al candidato, no prueba por sí solo transferencia final ni beneficio personal fuera de una transacción comercial. No se halló contratación pública de esa sociedad en el oro.

## Límites y decisión
La titularidad/control y el gasto electoral son hechos comprobables, pero las fuentes revisadas no muestran incumplimiento, intervención pública o ventaja indebida; el servicio de arriendo es coherente con el giro declarado y fue aprobado por Servel. La discrepancia entre filas del auxiliar requiere cautela y no basta para convertir el caso en una anomalía. **Descartada**: no supera la pregunta editorial de interés público sin un nexo o irregularidad concreta.

Reabrir únicamente ante una resolución o antecedente primario de Servel que revierta la aprobación, evidencia de servicio no prestado/sobrepago, conciliación oficial que cambie el monto o una contratación pública de la sociedad vinculada a funciones/decisiones de Karlezi.

## Consulta reproducible
`consultas/pier-karlezi-don-pedro-campana-2025-1.sql`. Oro consultado solo mediante `ec-gold-sql`, corte `meta.build_date=2026-10-27T15:25:49+00:00`.
