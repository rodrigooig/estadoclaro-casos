# Ricardo Igor Rivano Aravena: pasivo hipotecario informado en 2026

- ID: `ricardo-rivano-pasivo-hipotecario`
- Estado: `requiere humano` (2026-10-04). Revisión de una cifra de patrimonio señalada en el caso publicado sobre Amulen; no es un caso nuevo.[3]
- Corte: `gold.duckdb`, `meta.build_date=2026-10-02T15:43:07Z`; corrida 2026-10-04.
- Identidad: nombre completo coincidente en InfoProbidad y en el artefacto; el registro indica Subsecretaría de Relaciones Exteriores y cargo diplomático. No se atribuye ningún registro por homonimia ni se reproduce RUT personal.[3][4]

## Mapa de afirmaciones

**Qué se declaró (medido en fuente primaria).**

La declaración InfoProbidad ID 1651879, fechada 24-03-2026, consigna un pasivo de tipo «CRÉDITO HIPOTECARIO», acreedor «BANCO EDWARDS» y monto adeudado de CLP 160.528.863.763.[3]

La actualización periódica del 31-03-2025 consigna el mismo tipo y acreedor por CLP 127.000.000.[4] Dos registros separados de rectificación del 13-03-2025 muestran CLP 164.688.000 y CLP 164.331.560.[5][6]

La ficha actual de InfoProbidad resume CLP 160.528.863.763 en pasivos; el detalle desplegado en la misma página identifica obligación, acreedor y monto.[3]

**Cotejo reproducible con el artefacto.**

La consulta histórica guardada devolvió cuatro filas desde marzo de 2025: la declaración de 2026 y las tres entradas 2025 arriba descritas; el `creditor` se conserva como «BANCO EDWARDS» y `normalized_creditor` aparece como «BANCO DE CHILE».[3][4][5]

La consulta de serie completa contó 14 declaraciones y 22 filas de pasivo; una sola fila alcanza o supera CLP 1.000 millones.[3][4]
La consulta enfocada identifica la entrada de 2026 como una obligación hipotecaria única por CLP 160.528.863.763, frente a CLP 127.000.000 en la actualización de marzo de 2025 y los dos valores de las rectificaciones del 13-03-2025.[3][4][5]

El panel da CLP 512.912.244 de activos y CLP 160.528.863.763 de pasivos para la declaración vigente, con `has_outlier=true` y `confidence=low`.[3] El caso publicado presenta el pasivo como dato declarado no suficientemente confiable para contrastar la evolución patrimonial, no como saldo comprobado.[3]

**Titularidad de Amulen: evidencia nueva y límite.**

Un extracto societario publicado el 05-02-2026 en una página que reproduce avisos del Diario Oficial informa que, en escritura de 29-01-2026, tres personas —una en representación de Ricardo Igor Rivano Aravena— figuraban colectivamente como dueñas del 100% de las acciones de Constructora e Inmobiliaria Amulen SpA, RUT societario 76.073.952-9; además nombra administradora a Renatta Alejandra Rivano Aravena.[1]

El extracto no especifica la fracción individual de cada accionista.[1] Es compatible con que la declaración individual reporte «ACCION» y cantidad/porcentaje 28, pero no determina cómo se calcula ese 28 ni permite inferir control individual.[1][3]

El extracto de modificación societaria de 2013 disponible en la misma fuente secundaria decía que administración, representación y uso de razón social podían corresponder indistintamente a Ricardo Igor Rivano Aravena y/o Renatta Alejandra Rivano Aravena; ese acto antiguo no prueba facultades vigentes en 2026.[2]

## Rutas examinadas (2026-10-04)

1. **Serie del oro, ruta independiente:** las consultas guardadas se ejecutaron mediante `ec-gold-sql` contra el corte declarado arriba y devolvieron filas, importes y URI fuente de la serie.[3][4]
2. **Detalle y control de anomalía:** se inspeccionó el esquema `liability`, la fila exacta de la declaración vigente y el conteo de outliers. Resultado: una obligación hipotecaria, no una suma de varias filas, y clasificación `has_outlier=true`/`confidence=low` en panel.[3]
3. **Declaraciones originales:** la lectura directa de InfoProbidad y las consultas por nombre completo corroboran el importe que publica la declaración 1651879.[3]
La comparación con la actualización 1458933 y las rectificaciones 1358306/1358323 muestra importes declarados anteriores sustancialmente menores.[4][5][6]
Las declaraciones son autodeclaradas y no verifican por sí solas saldo bancario o error de digitación.[3][4]
4. **Registro societario / explicación alternativa:** extractos societarios de 2013 y 2026 indexados por una fuente secundaria que reproduce textos del Diario Oficial.[1][2]
Muestran varios titulares y administración histórica compartida, pero no explican ni validan el pasivo hipotecario declarado.[1][2]
5. **Pasada hacia la fuente oficial del extracto:** búsquedas exactas por el identificador 2765719, nombre societario, fecha y la frase «dueños del 100%» no localizaron el PDF oficial; apareció la copia secundaria.[1][unverified] El intento de abrir el PDF oficial respondió HTTP error; no se eludió control alguno.[unverified] El extracto queda como fuente secundaria hasta obtener el ejemplar oficial.[1]
6. **Alternativas/refutación:** se contrastó la hipótesis de saldo auténtico con la posibilidad de error de transcripción o rectificación pendiente. La serie anterior y la repetición del número en resumen y detalle de InfoProbidad no resuelven cuál es correcta.[3][4][5] No se halló en estas búsquedas un documento público de banco, rectificación posterior o pronunciamiento de fiscalización que establezca el saldo real.[unverified] Las búsquedas exactas por el importe y el nombre completo no aportaron corroboración independiente del saldo.[unverified]
El Manual DIP de la Contraloría advierte que reutilizar una declaración anterior puede producir errores de actualización, incluidos los montos de pasivos, y que en Pasivos se declara el saldo actual; esto respalda considerar un error como alternativa, no como conclusión.[7]
El artículo 10 de la Ley 20.880 asigna a la Contraloría fiscalizar oportunidad, integridad y veracidad de las declaraciones; no se localizó constancia pública de verificación de este monto en particular.[8][unverified]
7. **Contexto externo de escala:** la CMF publicó en enero de 2026 su Informe de Endeudamiento 2025, con cifras agregadas de deuda de hogares para junio de 2025.[9] Ese contexto agregado no permite validar ni refutar esta deuda individual; no se usó para juzgar la declaración.[9]
8. **Deduplicación y rotación:** el índice de investigación no tenía ficha separada para esta verificación y el repositorio de casos ya contiene un caso previo sobre Rivano y Amulen.[3] No se propone un segundo caso sobre la misma persona.[3] El cribado amplio del artefacto mostró a Rodrigo Galilea Vial como otro registro de baja confianza con activos empresariales marcados `implausible`; es solo una señal del artefacto, no una pista atribuible ni una conclusión. Próximo ciclo: comprobar primero la declaración fuente y las unidades antes de decidir si merece investigación.

## Explicaciones y límites

- **Saldo correcto o agregado hipotecario real:** es una explicación posible, pero no está corroborada por estado de deuda o antecedentes verificables.[3]
- **Error de entrada, captura o rectificación pendiente:** hipótesis plausible por contraste con los registros 2025; no está demostrada y no debe presentarse como hecho.[3][4]
- **Deuda atribuible a Amulen:** posibilidad hipotética no corroborada; las fuentes revisadas no permiten establecer ese vínculo y la declaración no aporta contrato ni inscripción.[3]
- **Explicación alternativa del vínculo societario:** el extracto 2026 sitúa colectivamente a varios accionistas y nombra a una persona como representante del titular.[1] Eso no prueba relación con el pasivo ni la cuota accionaria individual.[1][3]

El formulario público acredita lo que fue declarado, no el saldo real adeudado.[3]
La consulta de EstadoClaro reproduce el mismo dato y lo marca como outlier; no es una verificación independiente de la obligación.[3]
Para resolver la incertidumbre esencial se requiere una rectificación oficial posterior o evidencia documental legítima que permita cotejar saldo y fecha.[3][4]
No contactaré a las personas ni al banco, ni solicitaré información privada.

**Decisión:** `requiere humano`; no preparar borrador de caso ni PR a `main`.[3] Retomar solo ante documento público nuevo o evidencia de verificación obtenida legítimamente y revisada por una persona autorizada.[3][4] En paralelo, rotar al cribado distinto indicado arriba, sin inferir patrimonio personal desde los activos corporativos marcados como implausibles.

## Sources

[1] https://dequienes.cl/diario-oficial/2026/02/05/constructora-e-inmobiliaria-amulen-spa-76073952-9-2765719
[2] https://dequienes.cl/diario-oficial/2013/12/09/constructora-e-inmobiliaria-amulen-limitada-718631
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1651879 — InfoProbidad declaración 1651879
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1458933
[5] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1358306
[6] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1358323
[7] https://www.ceacgr.cl/CEA/pdf/recursos-educativos/capacitacion-webinario-DIP/MANUAL_DIP.pdf
[8] https://www.bcn.cl/leychile/navegar?idNorma=1086062
[9] https://www.cmfchile.cl/portal/prensa/625/w4-article-102984.html
