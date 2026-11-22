# José Miguel Bolados Correa — órdenes municipales a LATAM (2025–2026)

## Pregunta decisiva
¿Hay una pregunta de interés público con respaldo primario al enlazar las participaciones societarias declaradas por José Miguel Bolados Correa con órdenes de la Municipalidad de Melipilla a LATAM mientras ejercía como concejal, o se trata de compras ordinarias de pasajes sin nexo individual acreditado?

## Identidad y cargo
- InfoProbidad identifica a **JOSE MIGUEL BOLADOS CORREA** en la declaración 1585825, de 07-12-2025, rectificación a requerimiento de órgano fiscalizador. Declara como concejal de la Municipalidad de Melipilla; la declaración fija asunción el 06-12-2024. La nómina oficial municipal incluye a José Miguel Bolados Correa entre sus concejales.
- No se atribuyen datos a otra persona por coincidencia parcial del apellido. La identidad se verificó contra nombre completo, cargo y municipalidad en la primaria de InfoProbidad.

## Hechos comprobados
- La declaración primaria 1585825 registra 100 acciones (100%) de **ASESORÍAS LAGO RANCO SPA**, RUT 76.855.344-0, adquiridas el 14-03-2018 y con calidad de controlador. En el detalle de sociedades de esa compañía declara 23.957 acciones de **LATAM AIRLINES GROUP S.A.**, RUT 89.862.200-2, adquisición declarada 23-02-2020. El vínculo con el proveedor es indirecto, por una sociedad declarada; no es una participación directa de Bolados en LATAM.
- La ficha primaria de Mercado Público para la OC **2674-18-CM25** identifica a LATAM, RUT 89.862.200-2, como proveedor y a la Municipalidad de Melipilla como responsable del pago. Describe cuatro pasajes Santiago–Valdivia, enviados el 13-01-2025; total CLP $1.136.128 (29,56 UF del día). Ruta: convenio marco; estado oro: Recepción Conforme.
- La ficha primaria de la OC **2674-638-CM25** identifica a LATAM, el mismo RUT y al mismo comprador. Registra un pasaje aéreo nacional, enviado el 21-07-2025 por CLP $422.928 (10,78 UF del día), por convenio marco y con recepción conforme.
- Medición reproducible y deduplicada por `order_code` del oro al corte `meta.build_date=2026-11-21T22:41:07+00:00`: 8 órdenes del comprador exacto ILUSTRE MUNICIPALIDAD DE MELIPILLA a RUT 89.862.200-2 entre 07-12-2024 y 31-03-2026, por CLP $4.118.364 nominales (104,83 UF, cada orden convertida a la UF de su fecha). Las ocho son de convenio marco, están en Recepción Conforme y ninguna es trato directo ni Compra Ágil. Consulta `consultas/jose-miguel-bolados-correa-latam-2026-3.sql`.
- Servel, reporte definitivo municipal 2024, identifica su campaña de concejal en Melipilla con gastos agregados de CLP $8.726.450 y resultado de auditoría «Aprueba con Observaciones». La extracción primaria del XLSX con `xlsx2csv -a` arroja 16 partidas de gasto; la consulta reproducible no encuentra RUT de las sociedades declaradas en esas líneas. No hay autoproveedor de campaña por esas sociedades en el oro. Consulta `consultas/jose-miguel-bolados-correa-latam-2026-4.sql`.

## Explicación legítima más fuerte y límites
Las órdenes revisadas son pasajes aéreos nacionales comprados por convenio marco, una vía ordinaria de adquisición, y el interés en LATAM aparece anidado en la participación declarada de Bolados en ASESORÍAS LAGO RANCO SPA. No hay prueba de que los pasajes se relacionen con una decisión del concejal, que participara en su solicitud, evaluación, autorización o recepción, ni de beneficio individual. La factura de compra pública prueba la contratación al proveedor, no quién viajó ni quién intervino. La cuenta de campaña está aprobada con observaciones y no presenta gastos identificables con esas sociedades, por lo que no aporta indicio adicional.

El oro suma órdenes del proveedor y no acredita decisión personal ni conflicto legal. Se cotejaron primariamente la declaración, la lista oficial municipal, dos fichas de compra representativas y la fuente Servel. No se inspeccionaron actas municipales, solicitudes de viaje ni expedientes administrativos porque no se identificó con la evidencia disponible un acto concreto que justificara profundizar y la compra ordinaria de tickets no sostiene por sí sola la historia.

## Decisión
`descartada`. La señal se explica mejor como compras corrientes de pasajes por convenio marco a una aerolínea de la que la sociedad declarada informa una participación indirecta. La materialidad acumulada de CLP $4.118.364 (104,83 UF) no compensa la falta de nexo funcional individual, decisión discrecional o beneficio concreto. Reabrir solo ante una primaria que acredite intervención de Bolados en la decisión/recepción de una de las órdenes, un beneficio individual no explicado por viajes institucionales ordinarios, o hechos que cambien la vía de contratación o materialidad.

## Consultas reproducibles
- Semilla: `consultas/jose-miguel-bolados-correa-latam-2026-1.sql`.
- Intereses declarados y declaración primaria: `consultas/jose-miguel-bolados-correa-latam-2026-2.sql`.
- Órdenes de compra por RUT exacto, UF en fecha y ventana de cargo: `consultas/jose-miguel-bolados-correa-latam-2026-3.sql`.
- Campaña Servel 2024 y sociedades declaradas: `consultas/jose-miguel-bolados-correa-latam-2026-4.sql`.
