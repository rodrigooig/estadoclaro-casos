# Variaciones abruptas de un pasivo hipotecario declarado — Álvaro Domingo Jara Bucarey

## Reevaluación editorial vigente — 2026-10-06

- **ID:** `alvaro-jara-bucarey-pasivo-hipotecario`
- **Estado vigente:** en curso
- **Producto a evaluar:** discrepancia de declaración.
- **Alcance:** reencuadre del método; sin nueva corroboración de cifras ni aprobación de caso.

La pregunta pública sobre variaciones del registro no requiere certificado privado de saldo ni gravámenes. La ficha histórica aporta una serie como antecedente, todavía pendiente de nueva corroboración. Si se redacta, atribuir los importes al formulario y mantener como alternativas errores o cambios reales no resueltos.

**Próxima comprobación autónoma:** Reabrir originales 1170324, 1412441 y 1703401; comparar campo, moneda, versiones, acreedor y serie, repetir consultas y controles de duplicación. Evaluar inconsistencia material del registro con dos revisores, sin afirmar saldo real.

Aplicar METODO_INVESTIGACION.md v3. El historial de abajo no sustituye este estado vigente.

## Historial de evidencia y decisiones previas

- **ID estable:** `alvaro-jara-bucarey-pasivo-hipotecario`
- **Categoría / estado:** patrimonio y pasivos · requiere humano; no preparar caso
- **Revisión:** 2026-10-03 · **corte del oro:** `2026-10-02T15:43:07Z`, sin cambio reportado desde la sincronización.
- **Identidad:** coincidencia íntegra del nombre en InfoProbidad; las declaraciones examinadas lo identifican como embajador de primera categoría exterior en la Subsecretaría de Relaciones Exteriores.[1][3][8]

## Resultado y mapa de afirmaciones

Las declaraciones originales informan créditos hipotecarios por CLP 13.711.534.231 (26-03-2024), CLP 133.221.540 (31-03-2025) y CLP 42.667.234.500 (30-03-2026).[1][3][8]
En las tres páginas el acreedor aparece escrito «BANCO ITAHU».[1][3][8]
El oro reproduce las tres cifras en pesos nominales, una deuda por declaración, moneda CLP y lectura `local`; las UF derivadas son 370.004,50, 3.425,24 y 1.070.918,49, respectivamente, a la fecha de cada declaración.[`consulta 1`](../consultas/alvaro-jara-bucarey-pasivo-hipotecario-1.sql)[`consulta 2`](../consultas/alvaro-jara-bucarey-pasivo-hipotecario-2.sql)
En las declaraciones de 2024 y 2026 el oro registra activos totales de CLP 333.953.711 y CLP 342.856.263, respectivamente.[`consulta 1`](../consultas/alvaro-jara-bucarey-pasivo-hipotecario-1.sql)
El formulario original confirma qué cifra se informó, pero no certifica el saldo que el acreedor llevaba en esa fecha.[1][3][8]

Una errata de ingreso, una rectificación incompleta o cambios reales de la obligación son hipótesis compatibles con esta secuencia.[1][3][8]
Los formularios no permiten escoger entre esas hipótesis.[1][3][8]
El error de cifra es una alternativa plausible por comprobar, no una conclusión.[1][3][8]
No se infiere deuda efectiva por esos importes, falsedad, infracción ni irregularidad.[1][3][8]

## Evidencia reproducible y rutas examinadas

- [`consulta 1`](../consultas/alvaro-jara-bucarey-pasivo-hipotecario-1.sql): serie del panel con fecha, institución, cargo, activos, pasivos, neto nominal/UF, `confidence` y `has_outlier`.
- [`consulta 2`](../consultas/alvaro-jara-bucarey-pasivo-hipotecario-2.sql): recálculo independiente desde `liability_uf`, con moneda, lectura de moneda, acreedor y marca `implausible`.
- [`consulta 3`](../consultas/alvaro-jara-bucarey-pasivo-hipotecario-3.sql): contraste por separado de activos y propiedades para evitar multiplicación de filas por joins; cuatro inmuebles en 2024 y 2026, sin enlace del oro entre una inscripción y la deuda.

| Ruta independiente (2026-10-03) | Consultas/acciones concretas | Resultado y límite |
|---|---|---|
| Oro EstadoClaro | Consultas 1 y 2 (serie y deuda) y consulta 3 (activos e inmuebles). | Las fuentes tabulares pertinentes concuerdan; deuda CLP/local, sin valor alternativo de moneda y sin duplicación de filas. `has_outlier = false` no valida el dato. |
| Fuente primaria | InfoProbidad IDs 1170324, 1412441 y 1703401. | Confirma los tres montos informados; no aporta certificado bancario ni enlaza una inscripción hipotecaria con el pasivo.[1][3][8] |
| Búsqueda exacta web | Nombre completo + CLP 42.667.234.500; CLP 13.711.534.231; «BANCO ITAHU». | No apareció corroboración independiente pertinente en estas consultas; los resultados irrelevantes no se trataron como prueba.[unverified] |
| Repositorios institucionales | Buscador de pronunciamientos de Contraloría y dominio de transparencia de Relaciones Exteriores. | No se recuperó documento sobre el saldo; esto no prueba que no exista.[unverified] |
| Registro de gravámenes | Revisión del trámite oficial GP del CBRS; no se pidió ni pagó. | El certificado incluye hipotecas y gravámenes, tiene costo informado de CLP 6.600 y exige datos de inscripción.[13] |
| Alternativa legítima | Contraste del tipo de deuda hipotecaria y de los inmuebles declarados en InfoProbidad. | Hace plausible una obligación hipotecaria real, pero no explica los saltos ni vincula la deuda a un inmueble concreto.[3][8] |

La búsqueda literal en casos publicados, fichas existentes e índice no encontró coincidencia previa del nombre completo; el resultado solo describe esos archivos consultados el 2026-10-03.[unverified]

## Decisión editorial y próxima acción

**Decisión:** `requiere humano`; evidencia insuficiente para un borrador público.[1][3][8]
Las cifras están verificadas como montos declarados, no como saldos bancarios reales.[1][3][8]

**Gestión humana exacta:** si se reconsidera, obtener por vía autorizada un certificado de saldo del acreedor con fechas próximas a marzo de 2024 y marzo de 2026, o una rectificación documentada de InfoProbidad.[1][3][8]
Como comprobación separada, puede verificarse en CBRS si existe una inscripción de garantía vinculable a uno de los inmuebles declarados; el certificado GP informa gravámenes, no necesariamente el saldo actual.[13]
No contactar personas, solicitar documentos, iniciar trámites ni pagar en esta corrida.
Reabrir solo ante ese documento o evidencia pública nueva; si no aparece, no repetir estas búsquedas y rotar a otra pista deduplicada.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1412441 — InfoProbidad, declaración 2025 de Álvaro Domingo Jara Bucarey
    > "Monto global en pesos $ 133.221.540"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1170324 — InfoProbidad, declaración 2024 de Álvaro Domingo Jara Bucarey
    > "Monto global en pesos $ 13.711.534.231"
    > "Monto adeudado en pesos | $ 13.711.534.231"
[8] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1703401 — InfoProbidad, declaración 2026 de Álvaro Domingo Jara Bucarey
    > "Monto global en pesos $ 42.667.234.500"
[13] https://www.conservador.cl/portal/gp — CBRS: certificado de hipotecas, gravámenes y prohibiciones
    > "Es un certificado que incluye los gravámenes que afectan a un bien raíz como hipotecas, servidumbres, usufructos, etc."
    > "El costo asociado a este documento es de $6.600."
