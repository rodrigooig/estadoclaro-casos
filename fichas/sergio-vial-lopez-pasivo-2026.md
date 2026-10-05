# Revisión editorial — pasivo hipotecario declarado de Sergio Raúl Vial López

> Ficha de investigación; no es un caso publicable ni una imputación. Estado: **evidencia insuficiente**. Revisión: 2026-10-05 UTC. Corte del oro: `meta.build_date=2026-10-02T15:43:07+00:00` (copia local informada sin cambios). No se reproduce RUT personal.

## §0. Resultado ejecutivo

InfoProbidad identifica al declarante como Sergio Raúl Vial López, juez del Poder Judicial.[1]

La declaración periódica del 31-03-2025 resume pasivos por CLP 70.308.975; la del 31-03-2026 informa CLP 6.046.407.297, clasificados como crédito hipotecario con Banco Chile.[2][3]

La ficha 2026 también registra un inmueble en Ñuñoa con avalúo fiscal CLP 176.019.249 y dos gravámenes hipotecarios del año 2011, pero sus números de inscripción y fojas aparecen reservados.[2]

El oro reproduce el monto total de la declaración fuente; una consulta independiente al panel también muestra CLP 6.046.407.297 como pasivo, sin marcar `has_outlier` y con confianza `medium` (corte 2026-10-02; consultas 1–2). Esto verifica la representación de la fuente en el artefacto, no el saldo bancario real.

**Decisión:** la diferencia interanual es una variación declarada y reproducible, no una verificación de deuda efectiva ni evidencia de patrimonio real. El monto podría deberse a un error de digitación, a un dato declarado distinto de un saldo bancario ordinario, o a otra explicación documental; no hay evidencia pública obtenida que permita elegir entre ellas. No se prepara borrador de caso. La explicación legítima más plausible es que la declaración consignó un monto hipotecario reportado por el declarante y que el registro/resumen de 2026 lo replica; la magnitud frente al avalúo declarado hace necesario aclarar el dato antes de interpretarlo.

## 1. Mapa de afirmaciones

- **Hecho que se puede establecer:** el portal publica CLP 70.308.975 en 2025 y CLP 6.046.407.297 en 2026 como pasivos declarados. **Fuente primaria necesaria:** las dos fichas de InfoProbidad. **Resultado:** ambas fueron abiertas; la ficha 2026 muestra como tipo «CRÉDITO HIPOTECARIO», acreedor Banco Chile y el mismo monto como global y adeudado.[2][3]
- **Hecho derivado:** el incremento publicado es de alrededor de 86 veces. Esto compara dos montos nominales declarados, no saldos auditados ni necesariamente magnitudes calculadas bajo una misma base temporal. No se presenta como incremento efectivo de deuda.
- **Contexto del bien:** InfoProbidad registra un inmueble con avalúo fiscal 2026 de CLP 176.019.249 y dos gravámenes hipotecarios inscritos en 2011; los números que permitirían identificar las inscripciones no están visibles en la ficha revisada.[2]
- **Incertidumbre central:** no se obtuvo estado de saldo del banco, rectificación de la declaración ni un certificado/registro público que confirme el saldo adeudado al 31-03-2026. El valor declarado no se puede equiparar automáticamente con saldo hipotecario, valor de la garantía o patrimonio neto.

## 2. Consultas reproducibles del oro

`consultas/sergio-vial-lopez-pasivo-2026-1.sql` devuelve cuatro filas para las declaraciones 2024–2026: 2024 incluye crédito hipotecario CLP 64.676.953 y crédito de consumo CLP 3.685.211 (global CLP 68.362.164); 2025, un crédito hipotecario de CLP 70.308.975; y 2026, uno de CLP 6.046.407.297. Para el inmueble enlazado, el oro conserva comuna Ñuñoa, avalúo fiscal CLP 158.793.577 (2024), CLP 166.019.250 (2025) y CLP 176.019.249 (2026); la inscripción individual está reservada.

`consultas/sergio-vial-lopez-pasivo-2026-2.sql` verifica independientemente los agregados de `panel`: 2023 CLP 77.529.616; 2024 CLP 68.362.164; 2025 CLP 70.308.975; 2026 CLP 6.046.407.297. La última fila lleva `has_outlier=false`, `confidence=medium`; esas banderas no validan la veracidad del saldo.

## 3. Rutas examinadas (2026-10-05 UTC)

1. **Barrido amplio del oro — compras propias por institución.** Corrí una consulta sobre persona con `declared_supply`, órdenes durante la ventana, `article_4_stake`, coincidencia institucional y nombre de proveedor. De siete filas, los candidatos con mayor materialidad corresponden a pistas ya registradas (Allard, Martínez Rubio, Vaccaro, Aliaga, Lotito, Pérez Vidal y Vidal Moraga); no los reabrí.
2. **Barrido sectorial de salud y proveedores declarados.** Consulta por instituciones, nombres y actividades de salud/medicina: 14 filas. Incluyó pistas existentes y coincidencias que no acreditan relación con el comprador; no atribuí contratos personales.
3. **Barrido de panel de compras en la propia institución.** La pantalla devolvió 12 personas. Las coincidencias sustantivas estaban en el índice o en casos ya publicados; la pasada no aportó una pista nueva por compras.
4. **Barrido de pasivos/outliers.** La consulta de saldos altos o banderas de outlier devolvió 35 filas. Se deduplicó por nombre completo contra el índice y las fichas; se seleccionó esta variación de pasivo para verificar contra origen, no por presumir que el monto sea real.
5. **Oro, serie y detalle de Sergio Vial.** Ejecuté la consulta longitudinal y otra agregada sobre `panel`; ambas se guardan en las consultas 1 y 2. La primera comprueba tipo de deuda, acreedor, monto declarado y datos visibles del inmueble, y la segunda comprueba de forma separada el agregado. No sumé snapshots duplicados.
6. **Origen primario InfoProbidad.** Abrí las fichas enlazadas de 31-03-2025 y 31-03-2026, revisé resumen y detalle completo de 2026. El portal respalda el cambio del total publicado y el tipo/crédito declarado, pero no certifica con el banco el saldo real.[2][3]
7. **Función e identidad, fuente institucional distinta.** Una publicación del Poder Judicial del 10-07-2025 identifica a Sergio Vial López como juez del Primer Juzgado de Letras de San Bernardo; sirve como contraste de identidad/cargo, no como fuente patrimonial.[4]
8. **Búsquedas exactas y alternativas/refutación.** Consultas web por nombre completo junto al monto, Banco Chile/hipoteca, y por el nombre y el cargo no hallaron una rectificación, explicación oficial o documento financiero adicional pertinente en los resultados devueltos. Una búsqueda del sitio del CBR de Santiago sobre consulta de hipotecas tampoco devolvió una ruta documental concreta. La ficha InfoProbidad reserva los identificadores del asiento de 2011; no intenté eludir controles ni consultar datos privados.
9. **Explicación legítima y límites.** El inmueble muestra dos gravámenes hipotecarios del mismo año, y el acreedor de la deuda declarada coincide con Banco Chile; eso podría ser contexto de la obligación, pero no explica ni valida la cifra reportada. La alternativa de error de transcripción sigue abierta y no se puede dar por confirmada sin rectificación o antecedente primario adicional.[2][3]
10. **Deduplicación.** Búsqueda textual del nombre completo en el índice/fichas de investigación y repositorio público de casos: sin coincidencia. Alcance limitado a esos archivos revisados el 2026-10-05.

## 4. Gate editorial y próxima acción

- **Identidad:** nombre completo y cargo concuerdan en InfoProbidad y en la fuente institucional del Poder Judicial.[2][4]
- **Hecho material reproducible:** sí, como dato declarado/publicado y como representación del oro; no como saldo efectivo verificado.[2][3]
- **Relevancia pública:** verificabilidad y calidad de un pasivo publicado para un juez, sin inferir conducta.
- **Error del cruce:** mitigado al cotejar la ficha primaria, el detalle de liability y un query agregado independiente; no se encontró doble conteo de compras porque no es una pista de compras.
- **Explicación legítima:** considerada y contrastada con los dos gravámenes hipotecarios de 2011, Banco Chile y la valoración fiscal publicada; no resuelve el saldo.
- **Gate de borrador:** no se cumple. Falta un documento primario público que aclare la cifra (rectificación/historial de versión o documento oficial verificable de saldo/obligación). No se buscarán ni divulgarán datos bancarios privados.
- **Revisión adversarial independiente:** no hubo revisor humano; los dos SQL son una comprobación reproducible de extracción/agregado, no una revisión editorial independiente.

**Próxima acción:** mantener como evidencia insuficiente y no repetir consultas generales. Reabrir únicamente si aparece una rectificación o un documento público verificable que aclare el saldo declarado; no interpretar la cifra como deuda efectiva mientras eso falte.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=bbc397e6b367c413170a78c0e875280d — InfoProbidad — Sergio Raúl Vial López, búsqueda de declaraciones
    > "SERGIO RAUL VIAL LOPEZ"
[2] https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=566c36bc773bb614bd62c7af15ff0f73 — InfoProbidad — Sergio Vial, declaración 31-03-2026
    > "Monto global en pesos $ 6.046.407.297"
[3] https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=7d7e8a9a758e7c8d6d743d7a0515f722 — InfoProbidad — Sergio Vial, declaración 31-03-2025
    > "Total $ 70.308.975"
[4] https://www.pjud.cl/prensa-y-comunicaciones/noticias-del-poder-judicial/128464 — Poder Judicial - San Bernardo court activities, July 2025
    > "mediante instancias pedagógicas, recorridos guiados y charlas interactivas dictadas por el juez Sergio Vial López."
