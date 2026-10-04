# Alejandro Matías González Rodríguez y Centro de Salud Vitaser Limitada — revisión de actividad declarada

- **ID:** `alejandro-gonzalez-rodriguez-vitaser`
- **Categoría:** actividades/cargos/temporalidad; salud pública.
- **Estado:** evidencia insuficiente; sin caso.
- **Revisión:** 2026-10-04.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; el pre-run informó la copia sincronizada sin cambios.
- **Identidad:** coincidencia del nombre completo `ALEJANDRO MATIAS GONZALEZ RODRIGUEZ` entre la declaración primaria revisada y las filas del oro; no se atribuye información a homónimos.

## Resultado breve

InfoProbidad publica una declaración del 20-09-2026 que identifica a Alejandro Matías González Rodríguez como juez del Poder Judicial y consigna como fuente de interés a CENTRO DE SALUD VITASER LIMITADA, con la observación «SOCIO».[1] En la misma declaración la actividad económica relacionada con la entidad está clasificada como no remunerada; la ficha separa esa actividad de una actividad remunerada declarada por cónyuge/conviviente, cuyos datos personales no se reproducen aquí.[1]

En el registro diario oficial de marcas de INAPI del 22-01-2025, la solicitud 1602780 nombra a González Rodríguez como representante de CENTRO DE SALUD VITASER LIMITADA para la marca denominativa «Vitaser».[2] Esto acredita una actuación de representación en esa solicitud, no titularidad personal de la sociedad, participación judicial en asuntos de la empresa ni intervención en una compra pública.[2]

El sitio de la entidad se describe como centro de salud y enumera prestaciones clínicas.[3] En el oro del corte indicado, la búsqueda por el nombre completo encuentra declaraciones/actividades de la persona, pero no coincidencias exactas de la razón social en `purchase_order`, `supplier` ni en `declared_supply`; las consultas guardadas precisan los predicados y el resultado cero.[consultas/alejandro-gonzalez-rodriguez-vitaser-1.sql] [consultas/alejandro-gonzalez-rodriguez-vitaser-2.sql] [consultas/alejandro-gonzalez-rodriguez-vitaser-3.sql] [consultas/alejandro-gonzalez-rodriguez-vitaser-4.sql]

## Mapa de afirmaciones y evidencia

- **Identidad y cargo — hecho reportado:** la declaración primaria identifica el nombre completo, el organismo Poder Judicial, el cargo de juez y fecha de asunción 17-03-2026.[1]
- **Relación declarada — hecho reportado:** la misma página anota la razón social bajo «Otras Fuentes de conflicto de intereses», con observación «SOCIO»; el RUT mostrado está reservado.[1]
- **Remuneración — hecho reportado:** la actividad económica personal vinculada a Vitaser aparece como «No Remunerada» en la página revisada. La declaración también contiene una entrada remunerada en la sección de cónyuge/conviviente; no se divulga la identidad ni se infieren más detalles personales.[1]
- **Actividad de representación — hecho reportado por registro oficial:** el Estado Diario de INAPI del 22-01-2025 ubica la solicitud de marca 1602780 en «Aceptación a Trámite» y señala que González Rodríguez actúa en representación de Vitaser para la marca denominativa.[2] No se verificó el resultado final de la solicitud ni se equipara representación marcaria con propiedad societaria.
- **Actividad de la entidad — autodescripción:** el sitio de Vitaser enumera especialidades y servicios de atención de salud.[3] El texto es contexto de la actividad de la entidad; no demuestra si recibe fondos públicos.
- **Cruce con compras — medido:** `consultas/alejandro-gonzalez-rodriguez-vitaser-2.sql` busca la razón social exacta en las órdenes del oro y devuelve cero filas; `-3.sql` hace la búsqueda exacta en la dimensión de proveedores y también devuelve cero; `-4.sql` revisa las sociedades proveedoras atribuidas por el cruce a la persona y devuelve cero. `-5.sql` busca la entidad como activo societario declarado y devuelve cero. Son resultados limitados al artefacto de corte y a esos nombres/relaciones: no descartan compras bajo otra razón social, una variación de nombre o un RUT proveedor distinto.

## Rutas independientes revisadas — 2026-10-04

1. **Minería por actividades y salud:** nueva pantalla de declaraciones con actividades remuneradas del Poder Judicial permitió identificar esta pista por actividad económica relacionada con una entidad de salud. El nombre completo y la entidad se comprobaron contra filas del oro; deduplicación y consulta focalizada guardadas en `-1.sql` y `-5.sql`.
2. **Declaración de origen:** extracción directa de InfoProbidad ID 5123724 cotejó nombre, cargo, organismo, fecha de asunción, clasificación de la actividad y observación «SOCIO»; los campos RUT de la entidad y otros datos personales aparecen reservados.[1]
3. **Registro de propiedad industrial:** consulta y extracción de un Estado Diario oficial INAPI por el número de solicitud 1602780 confirmó que la coincidencia de nombre completo corresponde a una representación de la misma sociedad y no a una coincidencia nominal de buscador.[2]
4. **Actividad de la entidad:** consulta del sitio oficial de Vitaser revisó su autodescripción y servicios; sirve como contexto, no como prueba de ventas al Estado.[3]
5. **Compras públicas, dos capas del artefacto:** búsqueda por nombre exacto en `purchase_order` y en la dimensión `supplier`; ambas sin filas. No se usó un RUT no visible en la fuente primaria ni se extrapoló cero coincidencias a ausencia general de negocios.
6. **Cruce societario del declarante:** `declared_supply` no devuelve una empresa proveedora asociada a la persona; la tabla `company` tampoco modela Vitaser como activo societario en estos documentos. Estas consultas verifican la salida del artefacto, no el estado societario fuera de él.
7. **Búsqueda de expedientes/decisiones y deduplicación editorial:** búsquedas exactas del nombre junto a Poder Judicial/Vitaser y del nombre de la entidad junto a Mercado Público no localizaron un expediente, acto judicial ni orden primaria que conecte el interés con una decisión pública concreta. La búsqueda oficial de Mercado Público arrojó resultados no pertinentes al nombre consultado; no se los trata como evidencia. Revisados `INDICE.md`, los casos publicados de salud pública/puerta giratoria y fichas existentes, no aparece esta persona o huella de pista; no se halló duplicado.

## Explicación alternativa, límites y decisión

La explicación legítima más plausible compatible con lo consultado es una relación declarada no remunerada, más una actuación administrativa para representar a la sociedad en una solicitud de marca y una actividad sanitaria descrita por la propia entidad.[1][2][3] Esto no explica por sí solo los derechos societarios ni permite saber en qué calidad concreta figura «SOCIO»; tampoco evidencia vínculo entre Vitaser y procesos en que el juez haya intervenido.

No se encontraron documentos primarios que acrediten compras de Vitaser al Estado, propiedad/porcentaje del declarante, participación de éste en decisiones de compra, ni causas o decisiones judiciales vinculadas con la entidad. El cero del cruce es estrecho y no prueba ausencia de tales relaciones fuera de nombres/coberturas consultados. El RUT de Vitaser aparece reservado en la declaración y no se sustituyó por identificadores tomados de fuentes secundarias.

**Decisión: evidencia insuficiente; no preparar borrador de caso.** La coincidencia entre cargo y relación declarada no alcanza el gate editorial: falta un hecho material con vínculo funcional y relevancia pública concreta. Reabrir solo ante una orden/documento oficial que identifique a Vitaser como proveedor o contraparte, una causa o acto público relacionado, o una fuente societaria primaria que aclare participación y temporalidad. No repetir búsquedas generales de nombre sin evidencia o vía nueva.

**Revisión adversarial:** se contrastó la lectura inicial con la clasificación «No Remunerada», el registro INAPI de representación y la explicación de actividad sanitaria privada expresada en el sitio de la entidad; además se probó el cruce por nombre exacto en dos tablas independientes del artefacto. No hubo revisor humano independiente en esta corrida.[1][2][3]

## Consultas reproducibles

- [`consultas/alejandro-gonzalez-rodriguez-vitaser-1.sql`](../consultas/alejandro-gonzalez-rodriguez-vitaser-1.sql) — actividades de la persona y snapshots del oro.
- [`consultas/alejandro-gonzalez-rodriguez-vitaser-2.sql`](../consultas/alejandro-gonzalez-rodriguez-vitaser-2.sql) — órdenes por razón social exacta.
- [`consultas/alejandro-gonzalez-rodriguez-vitaser-3.sql`](../consultas/alejandro-gonzalez-rodriguez-vitaser-3.sql) — dimensión de proveedores por razón social exacta.
- [`consultas/alejandro-gonzalez-rodriguez-vitaser-4.sql`](../consultas/alejandro-gonzalez-rodriguez-vitaser-4.sql) — sociedades proveedoras vinculadas a la persona.
- [`consultas/alejandro-gonzalez-rodriguez-vitaser-5.sql`](../consultas/alejandro-gonzalez-rodriguez-vitaser-5.sql) — activos societarios por nombre exacto.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5123724 — InfoProbidad, declaración ID 5123724
    > "Observaciones | SOCIO"
    > "Nombre o Razón Social | CENTRO DE SALUD VITASER LIMITADA"
    > "Cargo o función | Juez"
    > "Fecha de Asunción en el cargo | 17-03-2026"
    > "Clasificación | No Remunerada"
    > "RUT | RESERVADO"
[2] https://tramites.inapi.cl/Trademark/TrademarkDailyStatus/DownloadFile?dailyStatesTypeId=1&filedate=22%2F01%2F2025+12%3A00%3A00+a.+m.&stream_id=4ecd7c8f-c9d8-ef11-893f-040973dcfef1 — INAPI, Estado Diario de Marcas 22-01-2025
    > "Alejandro Matías González Rodríguez, en representación de CENTRO DE SALUD VITASER LIMITADA"
[3] https://www.vitaser.cl/nosotros — VitaSer, Nosotros
    > "Contamos con una amplia gama de servicios, incluyendo Medicina General, Medicina Interna, Pediatría, Neurología Vascular, Gastroenterología, Psicología, Fonoaudiología, Nutrición, y Medicina Estética, Cosmetología , Enfermería y kinesiología."
