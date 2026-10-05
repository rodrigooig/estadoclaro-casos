# Félix Eduardo Vargas Cotiart — Sociedad Comercial Colmena Austral SpA y compras de leña en Hualaihué

- **ID:** `felix-vargas-cotiart-colmena-hualaihue`
- **Estado:** evidencia insuficiente
- **Revisado:** 2026-10-05
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00` (Script Output)
- **Identidad:** nombre completo de las declaraciones de InfoProbidad y cargo/institución contrastados con Ley del Lobby.[1][2][7] No se publica RUT personal.
- **Consulta reproducible:** `consultas/felix-vargas-cotiart-colmena-hualaihue-1.sql`

## Síntesis editorial

Las declaraciones de 2024 y 2026 atribuyen a Vargas una participación del 100% y calidad de controlador en Sociedad Comercial Colmena Austral SpA; la primera consigna adquisición en 2022.[1][2]
El registro oficial de Ley del Lobby identifica el inicio declarado del cargo de consejero regional el 06-01-2025.[7]
Mercado Público registra compras de leña de escuelas de Hualaihué al proveedor societario antes y después de esa fecha, incluida una orden posterior vinculada a la licitación adjudicada en 2024.[3][4][5]

Esto establece coincidencia entre una participación societaria declarada y compras del proveedor, no que Vargas interviniera en selección, evaluación, autorización, pago o administración. La adjudicación principal antecede al inicio declarado del cargo; el convenio tenía plazo de 12 meses y la explicación más plausible de la OC de enero de 2025 es que ejecutara el acuerdo preexistente, aunque los documentos revisados no permiten confirmar por sí solos esa causa ni explicar las compras ágiles posteriores.[3][4][5]

**Decisión:** no preparar borrador de caso. Identidad y transacciones están corroboradas, pero falta evidencia primaria de un papel funcional individual en las compras.[1][2][3] No se afirma conflicto de interés, irregularidad ni responsabilidad.

## Hechos documentados y fechas

1. La declaración de candidatura publicada el 23-07-2024 informa 100% y calidad de controlador de Colmena Austral SpA y fecha de adquisición 11-03-2022.[2]
La declaración presentada como consejero regional en 2026 vuelve a informar la sociedad y participación del 100%.[1]
Son declaraciones de intereses, no una verificación registral independiente de propiedad actual.
2. El registro de sujetos pasivos del GORE Los Lagos informa a Félix Eduardo Vargas Cotiart como consejero regional desde el 06-01-2025.[7]
La declaración de 2024 lo rotula como candidato; no se trata esa candidatura como ejercicio del cargo de consejero regional.[2]
3. La licitación pública 2902-17-LE24 corresponde a suministro de leña corta y larga para establecimientos educacionales de Hualaihué; el aviso registra publicación el 21-02-2024, adjudicación el 08-03-2024 y contrato de 12 meses.[3]
4. La OC aceptada 2902-65-SE24, para leña de la Escuela Mañihueico, se envió el 08-03-2024, provino de la licitación 2902-17-LE24 y muestra como proveedor a Sociedad Comercial Colmena Austral SpA; su total publicado es CLP 440.300.[12] Esta compra ocurrió antes de la declaración de candidatura de julio de 2024 y antes del inicio del cargo regional.[2][7]
5. La OC 2902-19-SE25 se envió el 21-01-2025 y aparece vinculada a la licitación 2902-17-LE24.[4]
Ocurrió después del inicio declarado del cargo, dentro del plazo original de 12 meses informado para el contrato; esa secuencia es consistente con ejecución del convenio, pero no acredita el motivo de cada orden ni la actuación de Vargas.[3][7]
6. La OC ágil 2902-455-AG25, del 23-07-2025, identifica adquisición de leña para escuelas y publica un total de CLP 3.308.200.[5] Es una compra posterior y distinta del código de licitación 2024; la ficha por sí sola no acredita quién solicitó, evaluó o autorizó la compra.[3][5]

## Contraste independiente con el oro y el buscador oficial

- `ec-gold-sql` devolvió 32 códigos de OC distintos para esta persona y proveedor con `is_primary_for_person = TRUE` y `timing = 'during'`, deduplicados por `order_code`: 3 enviados antes del inicio declarado del cargo y 29 en o después del 06-01-2025.[13] En el conjunto hay 21 códigos enlazados al tender 2902-17-LE24 y 11 marcados como compras ágiles. Son conteos del artefacto bajo esos filtros, no el universo de ventas de la sociedad. Ver consulta guardada y corte arriba.[13]
- La revisión manual, página por página, del buscador oficial de Mercado Público por la razón social mostró 63 órdenes distintas. De ellas, 32 coincidieron con los códigos emitidos por la consulta Gold; 30 restantes son órdenes aceptadas fechadas entre 08-03-2024 y 02-07-2024, antes de la primera declaración de la sociedad, y una OC del 21-01-2025 figura cancelada.[13] El corte temporal y el estado son compatibles con la forma en que la consulta Gold limita sus vínculos; no se interpreta la diferencia como error ni como prueba de omisión impropia.
- Un cotejo de código confirma que la OC aceptada 2902-65-SE24 existe en `purchase_order`, pero no aparece en `declared_supply_order` para esa declaración: su fecha precede el 23-07-2024.[2][12][13] Este control evita presentar el cruce Gold como listado completo de compras del proveedor. Resultado de la consulta exacta en `consultas/felix-vargas-cotiart-colmena-hualaihue-1.sql`.
- El control por códigos y `DISTINCT order_code` evita sumar snapshots repetidos. No se usa suma agregada de montos como señal de outlier; las OCs muestran pesos nominales en su fecha.[4][5][12]

## Rutas independientes examinadas (2026-10-05)

1. **Declaración/identidad:** dos declaraciones InfoProbidad de fechas distintas; control societario y cargo contrastados con el registro de Ley del Lobby.[1][2][7]
2. **Origen de compras:** ficha de licitación y OCs individuales del convenio 2024, una OC de 2025 y una OC ágil de 2025.[3][4][5]
3. **Datos propios de EstadoClaro:** consultas SQL de snapshots, fechas, filtros y deduplicación; cotejo exacto de 2902-65-SE24 en las tablas `purchase_order` y `declared_supply_order`.[12][13]
4. **Mercado Público por proveedor:** consulta pública exacta por nombre/RUT societario, siete páginas y 63 resultados únicos; contraste de códigos/fechas/estado contra la extracción Gold.[13]
5. **Acceso alternativo a expedientes:** la documentación pública de la API indica que el endpoint requiere un ticket; no se obtuvo ni utilizó llave.[10] La página oficial de descargas señala que existen reportes de licitaciones con ofertas recibidas y archivos por organismo, año y semestre; se identificó esta ruta pública pero no se descargó aún el paquete específico de 2024.[14]
En el selector público de organismo se probaron «Municipalidad de Hualaihué» y «DEPARTAMENTO EDUCACION HUALAIHUE»; en ambos casos la interfaz mostró «No se encontraron resultados».[14] No se usaron credenciales ni se eludió control alguno.
6. **Búsquedas dirigidas complementarias:** búsquedas por los códigos 2902-17-LE24, 2902-455-AG25 y 2902-842-AG26, nombre completo, empresa, RUT societario y Hualaihué.[3][5]
La nota del GORE sobre inversión en Rolecha se examinó, pero no relaciona a Vargas con estas compras y no se usa como prueba.[6]

## Mapa de afirmaciones, incertidumbres y gate

- **Afirmación:** Vargas declaró control total de la sociedad. **Fuente primaria:** InfoProbidad, dos fechas. **Alternativas:** oro, que reproduce snapshot. **Resultado:** corroborada como declaración; no verificación independiente del registro societario.[1][2]
- **Afirmación:** Colmena Austral recibió órdenes municipales de leña. **Fuentes primarias:** licitación, OC 2902-65-SE24, OC 2902-19-SE25 y buscador oficial. **Resultado:** corroborado; los 63 resultados del portal exceden el subconjunto del oro por motivos temporales/estado observables.[3][13]
- **Afirmación que falta:** Vargas tomó parte en compra, adjudicación, autorización, supervisión o pago. **Fuente primaria necesaria:** acta de evaluación/adjudicación, decreto/resolución, orden con identidad del responsable u otro expediente que lo nombre en el proceso. **Alternativas revisadas:** ficha pública, órdenes, declaración, buscador oficial, registro de funciones y descarga abierta identificada. **Resultado:** ninguna de las páginas examinadas atribuye un papel individual en las compras.[3][13] **Incertidumbre:** no se revisó el anexo de evaluación ni el paquete histórico de ofertas.[14]
- **Explicación legítima más plausible:** la licitación fue adjudicada y una OC del mismo convenio se emitió antes de que comenzara el cargo; el contrato se fijó por 12 meses, de modo que la OC de enero de 2025 podría corresponder a su continuidad.[3][4]
Las órdenes ágiles de 2025/2026 podrían responder a compras corrientes de leña escolar, pero esa explicación no está documentada para cada orden.[5][13]
- **Gate:** (1) identidad: sí; (2) hecho reproducible y primario: sí, con límites del período; (3) relevancia pública: explicable por compras de combustible para escuelas; (4) descarte de error de cruce: parcial y documentado con verificación exacta de códigos/estado/fechas; (5) explicaciones legítimas: buscadas, pero no prueban la función individual ni explican todas las ágiles.[1][3][13]
**No satisfecho:** falta el requisito de intervención funcional individual y el expediente de evaluación.[14]

## Próxima acción

No repetir búsquedas web generales ni abrir un caso.[13]
No descargar reportes usando un código de organismo supuesto: el selector público no devolvió resultado para las dos denominaciones probadas.[14]
Reabrir esta pista solo si una ruta oficial identifica el alias/código del organismo y ofrece el anexo de ofertas/responsables; de otro modo, rotar la siguiente ejecución a otra pista abierta.[14]
Mantener `evidencia insuficiente`, sin atribución personal ni borrador de caso.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1709587 — InfoProbidad declaración marzo 2026
    > "| Fecha | 29-03-2026 |"
    > "| Fecha de Asunción en el cargo | 06-01-2025 |"
    > "| Cantidad / Porcentaje | 100 |"
    > "| Nombre o Razón Social | SOCIEDAD COMERCIAL COLMENA AUSTRAL SPA |"
    > "| Tiene Calidad de Controlador | true |"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1252489 — InfoProbidad declaración candidatura julio 2024
    > "| Cargo o función | Candidato A Consejero Regional 2024 |"
    > "| Tiene Calidad de Controlador | true |"
    > "SOCIEDAD COMERCIAL COLMENA AUSTRAL SPA"
    > "| Cantidad / Porcentaje | 100 |"
[3] https://www.mercadopublico.cl/fichaLicitacion.html?idLicitacion=2902-17-LE24 — Mercado Público licitación leña 2902-17-LE24
    > "Fecha de Publicación: 21-02-2024 11:29:31"
    > "Fecha de Adjudicación: 08-03-2024 9:50:02"
    > "Tiempo del Contrato 12 Meses"
[4] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2902-19-SE25 — Mercado Público OC 2902-19-SE25
    > "| Fecha de Envío | 21-01-2025 |"
    > "| Proveniente de Licitación | 2902-17-LE24 |"
    > "Proveniente de Licitación | 2902-17-LE24"
    > "Fecha de Envío | 21-01-2025"
[5] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2902-455-AG25 — Mercado Público OC 2902-455-AG25
    > "| Nombre de la Orden de Compra | Orden de Compra ágil: 2902-66-COT25 - ADQUISICION LEÑA ESCUELAS DE LA COMUNA |"
    > "ADQUISICION LEÑA ESCUELAS DE LA COMUNA"
    > "TOTAL OC | $ 3.308.200"
[6] https://goreloslagos.cl/noticias/2025-04-23/gobierno-regional-de-los-lagos-invierte-mas-de-5-mil-millones-de-pesos-en-proyectos-para-llanquihue-palena-y-chiloe — GORE Los Lagos inversión en Hualaihué abril 2025
    > "En Hualaihué, se aprobó también más de 1.400 millones de pesos para la reposición de la posta de salud rural en Rolecha."
    > "El consejero Félix Vargas enfatizó la importancia de trabajar en conjunto con la comunidad"
[7] https://www.leylobby.gob.cl/instituciones/AB087/cargos-pasivos?todos=1 — Ley del Lobby sujetos pasivos GORE Los Lagos
    > "| Félix Eduardo Vargas Cotiart | Consejero(a) Regional | 2025-01-06 | Indefinido |"
    > "Félix Eduardo Vargas Cotiart | Consejero(a) Regional | 2025-01-06 | Indefinido"
[10] https://www.chilecompra.cl/wp-content/uploads/2026/03/Documentacion-API-Mercado-Publico-Licitaciones.pdf — Diccionario de datos API licitaciones ChileCompra
    > "http://api.mercadopublico.cl/servicios/v1/publico/licitaciones.json?codigo=[Numero de la licitacion]&ticket=[Ticket de Acceso]"
[12] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?qs=6lVv5H5o3QmXouGURhs+Jg== — Mercado Público OC 2902-65-SE24
    > "Fecha de Envío | 08-03-2024"
    > "TOTAL OC | $ 440.300"
    > "Proveniente de Licitación | 2902-17-LE24"
    > "R.U.T. | 77.539.857-4"
    > "Unidad de Compra | DEPARTAMENTO EDUCACION"
[13] https://www.mercadopublico.cl/Portal/Modules/Site/Busquedas/BuscadorAvanzado.aspx?qs=2 — Mercado Público búsqueda avanzada de órdenes por proveedor
    > "Búsqueda Realizada: Órdenes de Compra Por Proveedor: SOCIEDAD COMERCIAL COLMENA AUSTRAL SPA"
    > "PaginadorBusqueda_hidCountRows = 63"
    > "2902-65-SE24 | ADQUISICIÓN LEÑA - ESCUELA MAÑIHUEICO | 08-03-2024 13:13:30 | Aceptada"
    > "2902-22-SE25 | ADQUISICIÓN LEÑA - ESCUELA ANTUPIRÉN | 21-01-2025 17:12:14 | Cancelada"
    > "2902-79-SE24 | 08-03-2024 12:45:39 | Aceptada | ADQUISICIÓN LEÑA - ESCUELA ANTUPIREN"
    > "2902-416-SE24 | 02-07-2024 13:26:24 | Aceptada | ADQUISICIÓN LEÑA - ESCUELA MAÑIHUEICO"
    > "2902-22-SE25 | 21-01-2025 17:12:14 | Cancelada | ADQUISICIÓN LEÑA - ESCUELA ANTUPIRÉN"
[14] https://datos-abiertos.chilecompra.cl/descargas/ordenes-y-licitaciones — ChileCompra descargas de órdenes y licitaciones
    > "Los descargables de las licitaciones incluyen las ofertas recibidas cada proceso."
    > "El alcance de los archivos descargables abarca desde el año 2007 a la actualidad con un día de desfase con respecto a los datos en la base de datos productiva."
    > "Resultado visible tras cada consulta: «No se encontraron resultados»."
