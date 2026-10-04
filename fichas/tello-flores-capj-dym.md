# José Manuel Tello Flores: actividad declarada en una entidad patrocinante de vivienda

- **ID:** `tello-flores-capj-dym`
- **Categoría / estado:** actividades/cargos/temporalidad; compras/relaciones con el Estado · evidencia insuficiente; sin borrador
- **Fecha de trabajo:** 2026-10-04
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; copia local informada sin cambios desde la última sincronización.
- **Identidad:** la declaración primaria de InfoProbidad nombra a José Manuel Tello Flores y lo identifica como jefe de sección de Adquisiciones y Mantenimiento de la Corporación Administrativa del Poder Judicial (CAPJ); se cruzó el nombre completo con la nómina MINVU, sin atribuirle resultados por homonimia.[1][9]

## Resultado breve y mapa de afirmaciones

**Dato de declaración:** InfoProbidad muestra, para la actividad laboral en los últimos 12 meses, «Entidad Patrocinante D&M de proyectos de vivienda social» y «Encargado de oficina Arica». En la misma declaración figura INGTELL SPA, con derecho tipo ACCIÓN, giro construcción de obras menores y sin calidad de controlador.[1] El artefacto reproduce esos campos en cuatro snapshots fechados entre 26-03-2025 y 24-09-2026; en los cuatro, `last_twelve_months=true`, `is_paid=false` y la sección separada de actividades actuales no aporta una actividad para este declarante.[consultas/tello-flores-capj-dym-4.sql][consultas/tello-flores-capj-dym-6.sql]

**Contraste independiente:** la nómina oficial DITEC/MINVU actualizada al 13-10-2025 registra a José Manuel Tello Flores como contacto de INVERSIONES E INMOBILIARIA DEL VALLE & MALDONADO SPA, RUT societario 76.055.515-0, en Arica.[5] La nómina del 09-03-2026 se revisó también; no se localizó su nombre en la entrada equivalente de Arica. Esto acota el resultado a la versión consultada y no fija la fecha ni la causa de un eventual cambio.[6]

**Contexto de actividad pública de la entidad, no atribución personal:** una resolución electrónica de SERVIU Atacama del 18-10-2023 identifica a D&M SpA como Entidad Patrocinante del proyecto Conjunto Habitacional San Fernando y ordena notificarle una sustitución de beneficiario. El acto es previo al cargo que Tello declara haber asumido el 12-11-2024 y no documenta su intervención personal.[3][9]

**Hecho reproducible negativo, acotado:** las consultas independientes de `declared_supply` y `purchase_order`, al corte del oro, no devolvieron ventas estatales atribuidas a Tello ni órdenes cuyos RUT de proveedor sean 76.055.515 o 77.239.086.[consultas/tello-flores-capj-dym-5.sql][consultas/tello-flores-capj-dym-7.sql] Esto solo describe el artefacto y su cobertura de compras; no descarta transferencias de subsidios, asistencias técnicas u otros pagos fuera del conjunto de órdenes cargado.

## Rutas revisadas (2026-10-04)

1. **Pantalla amplia de compras del propio organismo:** SQL guardado consultó las coincidencias actuales de proveedor controlado con órdenes durante el período y comprador de la misma institución; devolvió siete filas, todas con pistas ya indexadas/publicadas (Allard, Opazo, Aliaga, Sepúlveda, Ponce, Pérez Vidal y Vidal Moraga). No apareció Tello.[consultas/tello-flores-capj-dym-1.sql]
2. **Pantalla amplia de ventas de sociedades controladas:** 32 filas sobre CLP 20 millones; lista dominada por pistas ya registradas y no muestra a Tello.[consultas/tello-flores-capj-dym-2.sql]
3. **Actividad pagada reciente con entidad identificada:** el filtro conjunto `is_paid AND last_twelve_months` y entidad con nombre devolvió cero filas. No se lee como ausencia de toda actividad ni como conclusión sobre el formulario.[consultas/tello-flores-capj-dym-3.sql]
4. **Declaración y línea temporal exactas:** cuatro snapshots en el oro repiten la actividad laboral reportada para D&M y la participación no controladora en INGTELL. La fuente InfoProbidad se revisó por nombre, organismo y cargo; la ficha contiene cuatro declaraciones entre marzo de 2025 y septiembre de 2026.[1][9]
5. **Registro institucional MINVU:** nóminas oficiales de junio y octubre de 2025 enlazan nombre completo, RUT societario de la entidad patrocinante y oficina de Arica; la versión de marzo de 2026 también se consultó como contraste temporal.[5][6][7]
6. **Expediente sectorial primario:** resolución MINVU/SERVIU Atacama, 18-10-2023, confirma una actuación de la entidad patrocinante D&M en un proyecto de vivienda; es anterior a su ingreso declarado a CAPJ y no nombra a Tello como interviniente.[3]
7. **Búsqueda exacta de proveedor:** consulta directa al `supplier` y a `purchase_order` por ambos RUT societarios (76.055.515 y 77.239.086) devolvió cero filas al corte; además, el join de `declared_supply` por nombre completo devolvió cero filas.[consultas/tello-flores-capj-dym-5.sql][consultas/tello-flores-capj-dym-7.sql]
8. **Rutas abiertas por identificadores y cargo:** búsquedas web por nombre completo + CAPJ/adquisiciones, INGTELL + RUT, D&M + Tello y Mercado Público + RUT no dieron una orden atribuible a esas sociedades con el comprador CAPJ. Un resultado de Mercado Público de la búsqueda no coincidió con INGTELL y se descartó; no se reutiliza como evidencia.
9. **Alternativas:** la propia declaración sitúa D&M en el apartado de actividad de los últimos 12 meses, no en el apartado de actividad actual; la nómina MINVU de marzo 2026 no repite el contacto de 2025 en Arica. Esto es compatible con una actividad anterior/no vigente al último corte, pero no acredita cuándo terminó. La diferencia entre el texto D&M y la razón social de la nómina se contrastó por nombre completo y mismo RUT societario en el registro MINVU; no se confundió con INGTELL, cuyo RUT es distinto.[1][5][6]
10. **Función pública relevante y vacío:** el cargo declarado se denomina Jefe de Sección de Adquisiciones y Mantenimiento en CAPJ.[9] No se obtuvo un acto de CAPJ que vincule una compra concreta con D&M o INGTELL, ni documento que identifique a Tello como evaluador, autorizador, administrador o receptor de una adquisición de esas entidades. La página institucional de CAPJ no se pudo extraer por timeout; no se eludió la limitación.
11. **Deduplicación:** búsqueda por nombre completo, razón social y los dos RUT societarios en el índice/fichas de investigación y en los casos publicados no encontró coincidencia previa.

## Explicación legítima más plausible y límites

La lectura legítima más plausible es que la actividad reportada para D&M fuera un vínculo laboral anterior o de alcance distinto al cargo actual en CAPJ; la evidencia disponible no permite fijar su fecha de término. La participación en INGTELL está declarada como acción sin controlador, y sus órdenes no aparecen en las tablas de compras consultadas.[1][5][6]

La alternativa no explica por sí sola por qué la ficha de actividad de los últimos 12 meses se repite hasta septiembre de 2026, pero tampoco acredita actividad remunerada actual: `is_paid=false`, el formulario separa la actividad actual y esa sección no tiene información declarada en el extracto revisado. No se identificó una contratación de CAPJ a ninguna de las dos sociedades en el oro ni un acto personal asociado a ella. El cruce no cubre todos los canales de gasto público y no demuestra ausencia de pagos externos.

## Decisión

**Contraste adversarial:** rerun de las consultas guardadas y dos comprobaciones independientes del join del artefacto: `declared_supply` por nombre completo y `purchase_order` por RUT societarios. Ambas fueron negativas; los campos de moneda no intervienen en esta señal. No hubo segundo revisor humano independiente en esta corrida.

**Evidencia insuficiente; no preparar caso.** La identidad y la existencia de la actividad declarada tienen corroboración primaria y un registro MINVU separado, pero falta el hecho material que conecte esa actividad o sociedad con una decisión de compra/gestión concreta de Tello en CAPJ. La proximidad entre un cargo cuyo título incluye adquisiciones y una actividad en una entidad que participa en programas habitacionales no prueba intervención, incompatibilidad ni infracción.

Para reabrir: un acto o expediente primario que identifique a D&M/INGTELL como contraparte de CAPJ y a Tello en una función concreta; o documento oficial fechado que aclare la vigencia y alcance del vínculo laboral declarado durante su ejercicio en CAPJ. No repetir búsquedas generales si no aparece una vía documental nueva.

## Consultas reproducibles

- `consultas/tello-flores-capj-dym-1.sql` a `consultas/tello-flores-capj-dym-7.sql` (todas ejecutadas con `ec-gold-sql` el 2026-10-04).

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5110075 — InfoProbidad, José Manuel Tello Flores, declaración 23-03-2026
    > "Objeto de la Entidad |Entidad Patrocinante D&M de proyectos de vivienda social"
    > "Nombre o Razón Social |INGTELL SPA"
[3] https://documentos.minvu.cl/bitstreams/18fb7ba9-d430-468a-831d-9e7cb67de571/download — MINVU/SERVIU Atacama, resolución sobre proyecto habitacional
    > "La Entidad Patrocinante informa del fallecimiento de la beneficiaria"
    > "El Proyecto “ Conjunto Habitacional San Fernando”, comuna de Copiapó, código 164513, presentado por la Entidad Patrocinante “D&M SPA."
    > "Copiapó, 18 OCT. 2023"
[5] https://proveedorestecnicos.minvu.gob.cl/wp-content/uploads/2017/04/Nomina-de-entidades-habilitadas-a-operar-por-region-Octubre-2025.pdf — MINVU, nómina entidades habilitadas octubre 2025
    > "INVERSIONES E INMOBILIARIA DEL VALLE & MALDONADO SPA."
    > "JOSE MANUEL TELLO FLORES"
    > "ACTUALIZADO AL 13-10-2025"
[6] https://proveedores-tecnicos.minvu.gob.cl/wp-content/uploads/2017/04/Nomina-de-entidades-habilitadas-a-operar-por-region-Marzo-2026.pdf — MINVU, nómina entidades habilitadas marzo 2026
    > "ACTUALIZADO AL 09-03-2026"
[7] https://proveedorestecnicos.minvu.gob.cl/wp-content/uploads/2017/04/Nomina-de-entidades-habilitadas-a-operar-por-region-12-06-2025.pdf — MINVU, nómina entidades habilitadas junio 2025
    > "INVERSIONES E INMOBILIARIA DEL VALLE & MALDONADO SPA."
    > "JOSE MANUEL TELLO FLORES"
    > "D Y M SPA
76.055.515-0"
    > "D Y M SPA"
[9] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5124118 — InfoProbidad, declaración José Manuel Tello Flores 24-09-2026
    > "Asume el cargo: 12-11-2024"
    > "Jefe Seccion Adquisiciones Y Mantenimiento Corporacion Administrativa Del Poder Judicial"
    > "24-09-2026 Actualización Periódica (Marzo)"
    > "Actividades que realiza o en que participa a la fecha de la declaración
No tiene información declarada en esta sección"
