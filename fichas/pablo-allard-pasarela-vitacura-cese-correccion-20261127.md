# Pablo Allard / Pasarela Lo Curro — corrección por fecha reportada de cese

- **ID:** `pablo-allard-pasarela-vitacura-cese-correccion-20261127`
- **Categoría:** corrección de caso publicado; compras/relaciones con el Estado.
- **Estado:** `correccion lista`.
- **Destino:** `casos/negocios_estado/pablo-allard-serrano-pasarela-vitacura.md`.
- **Publicación confirmada:** el caso está en `origin/main`; el PR de investigación #172 y el PR de caso #173 aparecen MERGED; el PR editor #173 registra «publicado».
- **Corte del oro:** `meta.build_date = 2026-11-26T01:01:56+00:00`.
- **Run:** `20261127T072939Z`.

## Pregunta decisiva

¿Hay un hecho nuevo verificable que deba incorporarse al caso publicado para precisar si Pablo Allard seguía en la Municipalidad de Vitacura cuando ésta contrató en 2023 a un proveedor con el RUT de una sociedad que él había declarado controlar?

## Origen y revisión de duplicidad

La consulta propia al oro identificó una orden directa de la Municipalidad de Vitacura, por 995 UTM, a un proveedor cuyo RUT coincidía con una sociedad declarada por Allard. Antes de tratarlo como caso nuevo, se buscó «Allard» en `INDICE.md`: apareció la pista publicada `pablo-allard-serrano-pasarela-vitacura` y PRs previos. La novedad no es la orden ni el cruce —ya publicados—, sino el dato nuevo de La Tercera sobre su fecha de salida municipal, ausente del caso publicado, que afecta sustancialmente la lectura temporal. Por eso se tramita como corrección, no como caso nuevo.

## Hechos comprobados

1. **Identidad y participación declarada.** InfoProbidad identifica a PABLO ALLARD SERRANO. La declaración 912542, fechada 11-11-2022, es una rectificación a requerimiento de órgano fiscalizador, consigna el cargo declarado «Asesor Alcaldía» y asunción declarada 01-01-2021, y registra 20% y calidad de controlador en ALLARD ASOCIADOS SPA, RUT 76.598.791-1.[1] La declaración previa 703246, de 31-03-2021, también lo identifica con ese cargo declarado.[4] Una declaración es una foto, no prueba de vigencia del empleo en mayo de 2023.
2. **Nómina primaria municipal.** La nómina de honorarios de febrero de 2021 identifica a ALLARD SERRANO PABLO, con período de la prestación 01-01-2020 a 31-12-2020 y pago de boleta de diciembre de 2020. Describe tareas sobre diseño urbano, espacio público, transporte y anteproyectos de movilidad en el cauce del Mapocho.[3] Acredita esa prestación y su término declarado; no prueba que fuera el mismo proyecto de la pasarela ni que siguiera prestando servicios en 2023.
3. **Hecho nuevo, con atribución.** La Tercera publicó el 13-10-2021 que Allard no continuó con la nueva administración y que su asesoría en diseño urbano terminó el 30-08-2021.[5] La nota es una fuente periodística secundaria; no se obtuvo en esta corrida el acto administrativo primario que formalizó ese cese. El hecho corregido debe decir «La Tercera informó…», no presentarse como corroborado independientemente.
4. **Compra primaria.** Mercado Público registra la OC 2659-252-SE23: enviada 02-05-2023, aceptada, compradora Municipalidad de Vitacura, proveedor ALLARD ARQUITECTOS ASOCIADOS LIMITADA, RUT 76.598.791-1, trato directo, servicio de arquitectura y espacio público para Pasarela Lo Curro, total original 995 UTM.[2] El RUT es el vínculo entre el proveedor y la sociedad declarada, pese a las variantes de razón social. El oro convierte la cifra a CLP/UF, pero el borrador conserva la unidad primaria UTM.
5. **Oro y cautela de temporalidad.** La consulta guardada `consultas/pablo-allard-serrano-pasarela-vitacura-cese-correccion-20261127-1.sql` devuelve tres declaraciones para ese nombre/RUT (IDs 10941, 703246 y 912542), todas con 20% y control declarados. La consulta `...-2.sql` devuelve ocho filas de órdenes relacionadas; la OC 2659-252-SE23 aparece dos veces por ventanas de timing distintas (`during` y `after_1y`), pero es una sola orden única. `same_institution=true` y `timing=during` describen campos derivados del cruce societario/ventana declarativa; no son un registro de empleo ni contradicen por sí solos el reporte de cese. No se cuentan filas duplicadas como órdenes distintas.
6. **Servel.** `consultas/pablo-allard-serrano-pasarela-vitacura-cese-correccion-20261127-3.sql` no devuelve una candidatura/cuenta para el `person_id` de Allard en la tabla `campaign` del oro. Es únicamente un negativo de esa tabla y ese corte; no se presenta como revisión completa de rendiciones primarias de Servel.

## Explicación legítima más sólida y límites

La orden se describe como una contratación para un proyecto municipal de arquitectura y espacio público. La prestación de honorarios documentada oficialmente se limita a 2020, y La Tercera reportó el cese municipal de Allard en agosto de 2021, casi veinte meses antes de la OC. Esta cronología hace más débil la inferencia de un nexo laboral vigente; no demuestra por sí sola la fecha administrativa exacta, la inexistencia de otro vínculo o la regularidad de la selección. No se halló evidencia de intervención individual, beneficio o pago.

## Decisión editorial

**Corrección lista.** El caso está publicado y su texto deja la continuidad del cargo en mayo de 2023 como incertidumbre. El dato nuevo directamente incide en esa cuestión: una nota periodística contemporánea reportó que Allard dejó la Municipalidad el 30-08-2021. La corrección propuesta atribuye el dato a La Tercera, distingue ese reporte de la nómina primaria de 2020 y preserva que no se localizó el acto de cese. Cambia el encuadre de «asesor» sin atribuirle intervención, responsabilidad o irregularidad. No se crea un segundo caso.

**Afirmación más débil:** la fecha exacta de cese, porque la fuente disponible para ella es secundaria y no se obtuvo el acto municipal. Si el editor exige confirmación primaria, puede dejarla expresamente como reporte periodístico y la pregunta documental abierta; no debe elevarse a hecho primario.

**Reabrir:** si aparece acto municipal que contradiga o confirme el 30-08-2021, evidencia de recontratación/otro vínculo en mayo de 2023, o documentos de la OC que prueben participación personal. El expediente citado por la OC y la autoría de decisiones no se revisaron en esta pasada.

## Consultas reproducibles

- `consultas/pablo-allard-serrano-pasarela-vitacura-cese-correccion-20261127-1.sql` — declaraciones por nombre completo y cuerpo de RUT societario.
- `consultas/pablo-allard-serrano-pasarela-vitacura-cese-correccion-20261127-2.sql` — órdenes por persona/RUT, incluida la orden única y sus ventanas derivadas.
- `consultas/pablo-allard-serrano-pasarela-vitacura-cese-correccion-20261127-3.sql` — cuentas/candidaturas en `campaign`.

## Fuentes

- InfoProbidad, declaración 912542: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=912542
- Mercado Público, OC 2659-252-SE23: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2659-252-SE23
- Municipalidad de Vitacura, nómina de honorarios, febrero de 2021: https://transparencia.vitacura.cl/resources/descargas/transparencia/pdf/regimen/2021/personal_municipal_honorarios_febrero_2021.pdf
- InfoProbidad, declaración 703246: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=703246
- La Tercera, 13-10-2021: https://www.latercera.com/la-tercera-pm/noticia/alcaldesa-de-vitacura-renueva-plana-mayor-de-municipio-en-un-intento-de-desmarcarse-de-la-administracion-de-torrealba/QY2K4J7SV5GR3LI5B2DD5IK3VE/
