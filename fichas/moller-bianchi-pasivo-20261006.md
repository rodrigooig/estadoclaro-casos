# Pasivo hipotecario reportado en declaraciones de un juez de Osorno — revisión editorial

- **ID:** `moller-bianchi-pasivo-20261006`
- **Estado:** descartada como pista de caso; hallazgo de cribado revisado, no imputación.
- **Fecha de revisión:** 2026-10-06 UTC.
- **Corte del oro:** `meta.build_date=2026-10-02T15:43:07+00:00`; copia local sincronizada sin cambios. Solo lectura con `ec-gold-sql`.
- **Identidad:** nombre completo EDMUNDO GASTON MOLLER BIANCHI, juez del Poder Judicial, cotejado en InfoProbidad y en los registros del oro; no se expone RUT personal.[2]

## Resultado ejecutivo

El detector de outliers del panel marca la serie de declaraciones como `has_outlier=true`, confianza `low`.[2] La señal del corte no describe una deuda súbita: InfoProbidad muestra dos créditos hipotecarios con Banco Chile, de CLP 86.664.837 y CLP 26.753.634, y un monto global de pasivos de CLP 113.418.471 en la declaración del 25-03-2026.[2] El oro reproduce esos dos registros y el mismo total en 2025 y 2026; el monto global en 2023 fue CLP 131.686.077, con dos créditos Banco Chile y uno Scotiabank.[6]

La serie de oro contiene 13 declaraciones desde marzo de 2017 hasta marzo de 2026 y permanece marcada por el detector desde 2018; no se trata cada snapshot como una deuda nueva.[2] Las declaraciones 2025 y 2026 repiten siete inmuebles, mismas fechas de adquisición y mismos roles; la de 2026 agrega una propiedad adquirida en noviembre de 2025.[4] Estos datos son compatibles con obligaciones hipotecarias sostenidas y un patrimonio declarado positivo, pero no prueban el saldo bancario actual, amortizaciones ni gravámenes vigentes.[2]

**Decisión: descartada como caso.** La señal deriva de un detector de baja confianza y de un pasivo hipotecario que aparece repetido y desglosado en declaraciones primarias.[2] No hay evidencia pública consultada de deuda excepcional, vínculo con una actuación judicial ni hecho con relevancia pública concreta.[2] La explicación más plausible es financiamiento hipotecario asociado a bienes inmuebles declarados; la declaración no permite comprobar saldo real ni condiciones de crédito.[2]

## Mapa de afirmaciones y rutas examinadas — 2026-10-06

1. **Cribado / identidad / deduplicación:** el cribado amplio de outliers ubicó a Moller entre 28 registros `has_outlier`; el índice, la carpeta de fichas y los casos publicados no contenían una pista previa con su nombre completo.[2] Se verificó el nombre completo y organismo en declaraciones InfoProbidad; sin coincidencia con un homónimo.[2]
2. **Serie patrimonial y pasivos (oro):** consulta `consultas/moller-bianchi-pasivo-20261006-1.sql`; 13 declaraciones, 21 filas al incluir detalles de pasivo. Pasivos: CLP 30.000.000 de 2019 a marzo de 2022; CLP 113.418.471 desde septiembre de 2022 con dos obligaciones en las declaraciones posteriores; CLP 131.686.077 en marzo/septiembre de 2023 al agregarse un tercer crédito; CLP 113.418.471 desde abril de 2024 hasta marzo de 2026.[2] En 2026 las dos partidas son Banco Chile por CLP 86.664.837 y CLP 26.753.634.[2] `has_outlier=true`, `confidence=low` desde agosto de 2018; activos y patrimonio neto del panel son positivos en snapshots recientes.[2] Los registros son nominales y autodeclarados, no saldos bancarios auditados.[2]
3. **Fuente primaria actual:** declaración InfoProbidad 5111973, fechada 25-03-2026; se cotejaron identidad, cargo, pasivo global y acreedores.[2] El resumen de la fuente primaria indica ocho bienes inmuebles, total de pasivos CLP 113.418.471, y el detalle enumera dos créditos hipotecarios Banco Chile.[2]
4. **Historial de declaraciones primarias:** se extrajeron InfoProbidad 5096077 (21-03-2025), 5087555 (01-04-2024) y 5075910 (28-03-2023).[4] Las dos primeras presentan el mismo total declarado y dos créditos Banco Chile; la de 2023 registra CLP 131.686.077 en total y tres partidas, incluidos créditos Banco Chile y Scotiabank.[6] El oro refleja la misma secuencia.[4] Las fechas de declaraciones son snapshots; no se infiere que el saldo permaneciera constante entre ellas.[4]
5. **Activos que podrían dar contexto al crédito:** consulta `consultas/moller-bianchi-pasivo-20261006-2.sql`; compara los detalles de inmuebles de 2025 y 2026.[2][4] Siete filas coinciden en comuna/rol, avalúo nominal y fecha de adquisición; la declaración 2026 añade un inmueble en Puyehue adquirido el 03-11-2025, con avalúo fiscal CLP 15.940.293.[2][4] El dato respalda una explicación hipotecaria posible, pero no enlaza cada crédito con un inmueble ni confirma gravámenes.[2]
6. **Actividades/cargos declarados:** consulta `consultas/moller-bianchi-pasivo-20261006-3.sql`; los snapshots registran el cargo judicial y docencia remunerada en Universidad San Sebastián desde 2003.[2] El patrón de actividad no acredita relación con el pasivo.[2] La docencia es una actividad independiente declarada, no explicación probada del monto.[2]
7. **Cruce con Mercado Público:** se ejecutó la consulta de cruce guardada en `consultas/`, que une proveedores declarados por RUT normalizado con órdenes: cero filas, cero códigos de orden y cero compradores.[2] El resultado solo cubre ese cruce del oro, no toda contratación pública ni todas las actuaciones judiciales.[2]
8. **Búsquedas externas y alternativa adversarial:** búsqueda exacta por nombre completo en resultados del Poder Judicial encontró respuestas automatizadas de CAPTCHA para varias páginas; no se intentó eludirlo y no se extrajo contenido de esas páginas. Búsquedas por nombre más deuda/hipoteca y por nombre más Mercado Público no localizaron un documento pertinente en los resultados visibles. La ausencia en esos resultados no prueba que no existan documentos. La hipótesis que refutaría una lectura de anomalía es que el indicador se active por deuda hipotecaria declarada, estable y respaldada por activos declarados; la serie y los documentos primarios son consistentes con esa lectura, aunque no verifican saldos efectivos.[2]

## Gate editorial, límites y próxima acción

- **Hecho reproducible:** monto global y composición de pasivos consignados en InfoProbidad 2026, reproducidos en la serie del oro; no se presentan como deuda efectiva o saldo actual.[2][^oro]
- **Relevancia pública:** no se identificó una decisión, causa, acreedor o contrato público que conecte la deuda declarada con el desempeño del cargo.[2][6]
- **Explicación legítima más plausible:** créditos hipotecarios asociados en términos generales a bienes inmuebles declarados; la fuente no especifica el inmueble dado en garantía ni el saldo bancario vigente.[2]
- **Independencia/contraste:** se compararon origen primario, serie tabular, detalle de inmuebles, actividades y cruce de compras.[2] No hubo segundo revisor independiente.
- **Decisión:** no preparar borrador. No es necesario `requiere humano`: no hay bloqueo de una evidencia central necesaria para un hecho de interés público establecido; buscar saldo crediticio reservado no se justifica para esta pista.
- **Reapertura:** solo ante rectificación primaria, documento público que cambie la composición/fecha de las obligaciones, o un acto judicial/financiero concreto que conecte una decisión pública con un interés declarado. No repetir búsquedas generales.

[^oro]: EstadoClaro `gold.duckdb`, corte `2026-10-02T15:43:07+00:00`, cuatro consultas reproducibles con prefijo `moller-bianchi-pasivo-20261006`, ejecutadas el 2026-10-06 mediante `ec-gold-sql` en solo lectura.

## Sources

[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5111973 — InfoProbidad: declaración 2026 de Edmundo Moller Bianchi
    > "Monto global en pesos $ 113.418.471"
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5096077 — InfoProbidad: declaración 2025 Edmundo Moller
    > "Total $ 113.418.471"
[6] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5075910 — InfoProbidad: declaración 2023 Edmundo Moller
    > "Total $ 131.686.077"
