# Jorge Américo Rodríguez Rossel — Viajes Rodríguez y compras municipales (2025–2026)

## Pregunta decisiva
¿La titularidad declarada de Viajes Rodríguez SpA por un jefe de unidad de la Corporación Administrativa del Poder Judicial y sus contratos municipales de transporte/salidas pedagógicas durante 2025–2026 sostienen una pregunta concreta de probidad ligada a su cargo, o son compras de una actividad comercial sin nexo funcional acreditado?

## Identidad y cargo
- InfoProbidad identifica a **JORGE AMÉRICO RODRÍGUEZ ROSSEL** en la declaración 5116633, de 27-04-2026: jefe de unidad de la Corporación Administrativa del Poder Judicial (CAPJ), cargo asumido el 27-04-2009. La declaración indica comuna Tomé.
- No se atribuye información por coincidencia de apellido. La sociedad se identifica por RUT exacto: 77.655.371-9.

## Hechos comprobados
- La declaración primaria 5116633 registra 100 acciones de **VIAJES RODRIGUEZ SPA**, RUT 77.655.371-9, adquiridas el 20-10-2022, valor declarado CLP $1.000.000, calidad de controlador; giro: agencia de viajes, servicios y asesorías turísticas, transporte de pasajeros. La actualización 5096572, de 25-03-2025, también aparece en la página de InfoProbidad como declaración anterior.
- Mercado Público confirma en la OC **2665-1021-AG25** (28-10-2025) que Viajes Rodríguez SpA, RUT 77.655.371-9, fue proveedor aceptado por la Dirección de Educación Municipal (DEM) de Tomé por CLP $3.990.000 para una salida pedagógica a Lota de 71 estudiantes. La orden se generó por invitación a Compra Ágil.
- La OC **2665-937-SE25** (30-09-2025) identifica al mismo proveedor y a la DEM de Tomé: CLP $9.750.000 por salida pedagógica a La Serena, orden derivada de la licitación 2665-69-LE25.
- La OC **2665-504-AG25** (11-06-2025) registra CLP $4.800.000 por una charla de José Maza, incluyendo costos asociados de visita, alojamiento y traslados; comprador DEM de Tomé y proveedor Viajes Rodríguez. La ficha indica Compra Ágil con causal «Adquisición igual o inferior a 30 UTM (Debe presentar 3 cotizaciones)».
- La ficha oficial de licitación **2665-6-LP25**, publicada por la DEM de Tomé, describe un suministro de transporte de alumnos para establecimientos educacionales municipales durante 2025, abierto y adjudicado, con fecha de adjudicación 21-04-2025. Las OCs 2665-1246-SE25, 2665-1247-SE25 y otras remiten a ese proceso.
- Medición del oro al corte `meta.build_date=2026-11-21T22:41:07+00:00`, deduplicada por OC en `purchase_order`: 74 órdenes a ese RUT, todas de la Municipalidad/DEM de Tomé, del 01-04-2025 al 17-08-2026, por CLP $70.827.472 nominales (1.793,95 UF sumando las UF de cada orden en su fecha); 57 vinculadas a licitaciones públicas y 17 a Compra Ágil, de las cuales seis tienen ruta/casilla de adquisición directa bajo 30 UTM. 73 figuran aceptadas y una enviada al proveedor. Consulta `consultas/jorge-americo-rodriguez-rossel-viajes-tome-2026-1.sql`.
- Fuente institucional pública del Poder Judicial describe a la CAPJ como administradora de recursos humanos, financieros, tecnológicos y materiales de los tribunales; identifica áreas de adquisiciones y mantenimiento. No identifica en lo consultado cuál es la unidad de Rodríguez ni sus atribuciones de compra.
- El cruce por nombre completo con `campaign` del oro no arroja campañas Servel asociadas a Rodríguez. Esto solo afirma ausencia en ese universo/corte; no acredita que nunca haya sido candidato.

## Explicación legítima más fuerte y límites
Los procesos revisados son compras de educación municipal en Tomé —transporte escolar y salidas pedagógicas—, no contratos de la CAPJ ni del Poder Judicial. La licitación del suministro de transporte fue un proceso público y abierto; las órdenes muestran entregas de transporte/visitas para estudiantes. La Compra Ágil de junio también registra la causal de monto menor a 30 UTM y tres cotizaciones exigidas. La actividad declarada de la empresa coincide con estos servicios. La residencia/comuna declarada en Tomé no prueba influencia sobre el municipio ni intervención individual.

La coincidencia RUT prueba que el proveedor de las OCs es la sociedad declarada, no que Rodríguez haya intervenido en la compra, recibido pagos personalmente, infringido una norma o ejercido influencia. El título genérico «jefe de unidad» no permite inferir que dirija adquisiciones; no se encontró un documento primario que lo vincule a la DEM o a los procesos municipales. Las primarias revisadas incluyen InfoProbidad, tres OCs y la ficha de licitación; no se revisaron expedientes completos, actas ni eventuales vínculos personales con decisores municipales porque la evidencia disponible no presenta una conexión concreta que lo justifique. Servel no aporta una pista en el cruce disponible.

## Decisión
`descartada`. Aunque hay una participación de control declarada y ventas públicas acumuladas, los compradores son la DEM/Municipalidad de Tomé, ajenos al organismo declarado, y las compras revisadas son consistentes con la actividad comercial declarada; la licitación principal fue abierta. No se acreditó nexo funcional, intervención personal ni beneficio especial. La materialidad y el número de órdenes por sí solos no sostienen un caso individual.

Reabrir solo ante documento primario que acredite que Rodríguez intervino en la planificación, adjudicación o recepción municipal; un vínculo funcional concreto con Tomé; evidencia de que el cargo específico implicaba decisiones sobre estas compras; o hallazgo de un proceso irregular/cambio de causal que altere la explicación legítima.

## Consultas reproducibles
- Semilla, declaración y proveedor: `consultas/jorge-americo-rodriguez-rossel-viajes-tome-2026-1.sql`.
- Órdenes únicas, rutas, importes, compradores y estados: misma consulta, agregada y listada por `order_code`.
- Búsqueda Servel en el oro: misma consulta; cero filas.
