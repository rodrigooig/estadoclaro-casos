# Mario González Rebolledo — actividad farmacéutica remunerada y farmacia municipal

- **ID:** `mario-gonzalez-rebolledo-farmacia-municipal`
- **Categoría:** actividades/cargos/temporalidad; salud pública.
- **Estado:** evidencia insuficiente; sin borrador de caso.
- **Fecha de trabajo:** 2026-10-03.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; copia local sin cambios según pre-run; consultas ejecutadas solo con `ec-gold-sql`.
- **Identidad:** coincidencia del nombre completo MARIO GONZALEZ REBOLLEDO en las declaraciones y el perfil oficial de la Municipalidad de Padre Las Casas, que lo identifica como alcalde.[1][13][15]

## Síntesis y mapa de afirmaciones

Las declaraciones oficiales de asunción de 30-07-2021, actualización de 28-03-2024 y rectificación de 23-03-2026 registran una actividad profesional remunerada de químico farmacéutico en FARMACIA Y PERFUMERIA TANIA ELIZABETH MARQUEZ KACIC EIRL, con fecha de inicio declarada 01-01-2021; las mismas declaraciones ubican a González como alcalde de Padre Las Casas.[13][14][15]

En 2024 y 2026, la actividad económica remunerada de la cónyuge en esa EIRL también aparece declarada; el registro la presenta como empresaria.[14][15]

El perfil oficial municipal dice que González es químico farmacéutico, propietario desde hace décadas de una farmacia llamada “Fármax” y encargado de la farmacia municipal entre 2018 y 2020; el mismo perfil lo identifica después como alcalde.[1]

Una nota secundaria de 2020 también atribuye a González la propiedad de Farmacia Farmax; no establece que esa marca sea la misma persona jurídica que la EIRL nombrada en las declaraciones.[10]

La diferencia entre marca/establecimiento referido por la biografía y razón social de la actividad declarada queda abierta; no se equiparan sin prueba.[1][15]

La Municipalidad mantiene una página identificada como “Farmacia y Óptica Municipal”, y un acta municipal de 2015 registra la incorporación de un derecho de acceso para el programa de Farmacia Municipal, anterior al inicio de la alcaldía de González.[7][8]

La página oficial de alcaldía describe la función general del alcalde como dirección, administración superior y supervigilancia del municipio.[1]

La coincidencia temporal entre una actividad farmacéutica remunerada declarada y la alcaldía puede justificar una pregunta de interés público sobre funciones y decisiones concretas, pero estas fuentes no demuestran intervención de González en la operación, compras, regulación, dirección técnica o decisiones de la farmacia municipal.[1][7][15]

## Consultas reproducibles al oro

| Consulta guardada | Alcance/resultado observado |
|---|---|
| [`consultas/mario-gonzalez-rebolledo-farmacia-1.sql`](../consultas/mario-gonzalez-rebolledo-farmacia-1.sql) | Nombre completo, declaraciones y actividad; 25 filas de 13 declaraciones, con filas duplicadas por fuente/snapshot. Diez source_id municipales contienen la actividad; no se cuentan como diez empleos distintos. |
| [`consultas/mario-gonzalez-rebolledo-farmacia-2.sql`](../consultas/mario-gonzalez-rebolledo-farmacia-2.sql) | `purchase_order`, RUT societario exacto normalizado; 0 filas. |
| [`consultas/mario-gonzalez-rebolledo-farmacia-3.sql`](../consultas/mario-gonzalez-rebolledo-farmacia-3.sql) | `purchase_order`, dos fragmentos de razón social; 0 filas. |

Las consultas B/C son un negativo acotado a órdenes que contiene el oro disponible al corte indicado y a los predicados escritos; no prueban que no haya contratos o compras fuera de esa cobertura, por otra razón social o fuera de Mercado Público. La búsqueda de `declared_supply` por el nombre exacto de González también devolvió cero registros con empresa/sociedad declarada vendiendo al Estado, pero esa herramienta no modela por sí sola la actividad profesional declarada a través de la cónyuge.

## Rutas examinadas (2026-10-03)

1. **Declaraciones primarias / identidad y temporalidad:** InfoProbidad IDs 731572 (30-07-2021), 1183026 (28-03-2024), 1665580 (23-03-2026) y la ficha oficial de 17-07-2024; cotejados nombre, cargo, profesión, actividad propia remunerada, actividad empresarial de la cónyuge y razón social.[13][14][15]
Acreditan qué se declaró y cuándo, no una verificación externa de empleo, titularidad o remuneración real.[13][14][15]
2. **Serie de datos de EstadoClaro:** consulta 1 sobre todas las declaraciones de nombre completo al corte 2026-10-02.[13][14][15]
Resultado compatible con las tres páginas oficiales cotejadas; `is_paid=true` refleja el campo fuente procesado, no recibos ni continuidad laboral diaria.[13][14][15]
3. **Mercado Público / compras por identificador exacto:** consulta 2 a `purchase_order` con el RUT de la EIRL, sin hallar filas (0). El buscador web tampoco devolvió resultados al consultar ese RUT con Mercado Público. No se obtuvo ficha de compra primaria que vincule la EIRL con el municipio.
4. **Mercado Público / búsqueda por razón social:** consulta 3 con `marquez kacic` y `farmacia y perfumeria tania`, 0 filas; búsquedas abiertas exactas por ambos textos y “ChileCompra” no dieron coincidencias pertinentes de contratos. Es un resultado negativo delimitado, no prueba de inexistencia.
5. **Función e institución municipal:** perfil oficial de alcaldía sobre su cargo y trayectoria, página municipal de Farmacia y Óptica Municipal y acuerdo de concejo de noviembre de 2015 sobre la Farmacia Municipal.[1][7][8]
Prueban que existe el servicio municipal y que el programa es anterior al período de González, no que él tuviera tareas particulares sobre sus compras o proveedores durante la alcaldía.[1][7][8]
6. **Explicación y contraste externo:** el perfil oficial caracteriza una farmacia privada “Fármax” como propiedad de González; nota de 2020 también lo presenta como propietario y químico farmacéutico a cargo.[1][10]
La explicación legítima más plausible es continuidad de una actividad profesional/farmacéutica preexistente, transparentada en las declaraciones, junto con un programa municipal preexistente.[1][8][13]
La diferencia entre Fármax y la EIRL nombrada en las declaraciones, así como el alcance exacto de la actividad en cada fecha, no queda resuelta.[1][10][15]
7. **Deduplicación:** revisión del índice de investigaciones, fichas y búsqueda textual en el repositorio público de casos el 2026-10-03; no apareció ficha/caso con este nombre completo, razón social ni huella de esta pista.

No se intentó acceso con CAPTCHA, login o pago, no se contactó a personas ni se presentaron solicitudes.

## Decisión editorial y brechas

**Evidencia insuficiente; no redactar caso ni afirmar conflicto de interés.**
La fuente primaria registra una actividad remunerada como farmacéutico desde la fecha de inicio declarada de 2021, coincidente en los snapshots consultados con su alcaldía; también identifica la EIRL como actividad económica empresarial de la cónyuge.[13][14][15]
Hay contexto público de una farmacia municipal y de la experiencia farmacéutica del alcalde, pero no evidencia individual sobre decisiones, funciones, abstenciones, fiscalización o compras municipales relacionadas con esa actividad.[1][7][8]
Además, el origen y la identidad jurídica de Fármax frente a la EIRL quedan por aclarar.[1][10][15]

- **Identidad corroborada:** sí, nombre completo y cargo/institución en declaración enlazada y fuente municipal.[1][13][14]
- **Hecho material reproducible y fuente primaria:** sí, es reproducible qué actividad se declaró y su fecha; no se acreditó que el registro sea un hecho laboral verificado externamente.[13][14][15]
- **Relevancia pública:** posible por la concurrencia temporal con un servicio municipal de farmacia y el ámbito profesional, pero aún demasiado general para caso sin una decisión o rol concreto.[1][7][13]
- **Error de cruce/heurística:** no se usa el cruce Mercado Público como hallazgo; la búsqueda de órdenes por identificador y razón social fue negativa. No se infiere venta o propiedad desde parecido de nombres.
- **Explicación legítima:** continuidad de una profesión/actividad privada expresamente declarada, más la existencia pre-2021 de la farmacia municipal; falta evidencia pública de intervención particular para ponderar cualquier lectura ulterior.[1][8][13]

Reabrir solo ante documento público primario que identifique una decisión, compra, contrato, acto de autorización o rol municipal específico de González relacionado con la EIRL/Fármax o con el servicio municipal, o una nueva declaración/documentación primaria que aclare la identidad jurídica y el alcance de su actividad. No repetir las mismas búsquedas exactas sin fuente o pregunta nueva.

## Sources

[1] https://padrelascasas.cl/newplc/alcalde — Municipalidad de Padre Las Casas, Alcalde
    > "Químico farmacéutico de profesión, titulado de la Universidad de Chile, dueño hace 25 años de la primera farmacia de Padre Las Casas “fármax”"
[7] https://padrelascasas.cl/newplc/1907-2 — Municipalidad de Padre Las Casas, Farmacia y Óptica Municipal
    > "FARMACIA Y ÓPTICA MUNICIPAL"
[8] https://padrelascasas.cl/transparencia/15_otros_antecedentes/actas_ordinarias/Resumen%20acuerdos%20Sesion%20Ordinaria%20N%20106-2015.pdf — Municipalidad de Padre Las Casas, acta acuerdos farmacia comunal
    > "Los beneficiarios del Programa Social denominado "Farmacia Municipal", pagarán una contraprestación por accesibilidad a la compra de medicamentos por mes o fracción, de 0,023 UTM."
[10] https://araucanianoticias.cl/2020/reabre-tradicional-farmacia-farmax-de-padre-las-casas/0902188044 — Araucanía Noticias, reapertura Farmacia Farmax, 2020
    > "Se trata de la farmacia de propiedad del ex seremi de gobierno, Mario González"
[13] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=731572 — InfoProbidad, declaración asunción 30-07-2021
    > "Nombre o Razón Social | FARMACIA Y PERFUMERIA TANIA ELIZABETH MARQUEZ KACIC EIRL"
[14] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1183026 — InfoProbidad, actualización 28-03-2024
    > "Fecha inicio | 01-01-2021"
[15] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1665580 — InfoProbidad, rectificación 23-03-2026
    > "Rubro o Área o Tipo de actividad | EMPRESARIA"
