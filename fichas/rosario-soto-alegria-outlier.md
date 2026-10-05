# Rosario Soto Alegría — señal de outlier no sustentable como caso

- **ID:** `rosario-soto-alegria-outlier` · **categoría:** patrimonio y pasivos · **estado:** descartada, sin borrador.
- **Fecha de revisión:** 2026-10-05 UTC · **corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00` (copia local sin cambios, según pre-run).
- **Identidad:** InfoProbidad ID 5118158 vincula el nombre completo ROSARIO ANDREA SOTO ALEGRIA con una declaración de jueza del Poder Judicial por cese de funciones; el formulario consigna cese el 18-05-2026.[1] No atribuyo a esta persona los registros de OSIEL DEL ROSARIO SOTO LAGOS, que es un nombre completo diferente.

## Resultado y afirmaciones

La pantalla del panel con `is_current AND has_outlier` devolvió 28 filas, entre ellas la declaración enlazada a InfoProbidad ID 5118158; la consulta individual guardada `consultas/rosario-soto-alegria-outlier-1.sql` reproduce activos por CLP 1 401 993 190, pasivos por CLP 150 000 000, `has_outlier=true` y `confidence=low`.[1] El número es una suma del artefacto, no una valuación auditada ni evidencia de que cada renglón sea un bien independiente.

La fuente primaria declara un pasivo global de CLP 150 000 000 y lista tres líneas hipotecarias: +CLP 150 000 000, +CLP 150 000 000 y −CLP 150 000 000; el detalle suma nominalmente el mismo global.[1] La consulta `consultas/rosario-soto-alegria-outlier-2.sql` verifica esas tres filas contra `liability` y `declaration`; el acreedor aparece como Scotiabank y con la variante textual «Scotiabak».[1] El panel ajustado excluye la línea negativa y muestra CLP 300 000 000 de pasivos ajustados, pero ese resultado es una transformación del modelo y no un saldo bancario.[1]

La consulta `consultas/rosario-soto-alegria-outlier-3.sql` encuentra grupos repetidos de claves de inmuebles: 7 filas bajo una clave de atributos de Talagante, 6 bajo una clave registral de La Serena y 4 bajo una de Litueche.[1] InfoProbidad lista varias entradas de inmuebles con referencias registrales repetidas y avalúos distintos; esto no establece por sí mismo si son bienes separados, variaciones del formulario o duplicados.[1] El modelo documenta que `asset_id` no identifica un bien a través del tiempo y que las claves de atributo pueden agrupar registros parecidos (`docs/metodologia/modelo-de-datos.md`, §§ «Las tres identidades» y «Las formas de la ausencia»).

La consulta `consultas/rosario-soto-alegria-outlier-4.sql` devuelve dos declaraciones fechadas 07-06-2026, una por asunción y otra por cese; `is_current` selecciona el último snapshot del artefacto y no significa que la persona siga ejerciendo hoy.[1] No interpreto CLP 1 401 993 190 como patrimonio económico independiente ni CLP 150 000 000 como saldo hipotecario efectivo.

## Rutas y contraste (2026-10-05 UTC)

1. **Minería:** filtro de 28 declaraciones con bandera de outlier; la candidata surgió por bandera/confianza, no por umbral monetario.
2. **Panel:** ejecución de `-1.sql`; una fila con identidad, fuente, montos y banderas reproducibles.
3. **Detalle de pasivos:** ejecución de `-2.sql` y cotejo con la declaración original; el total global coincide con la suma nominal de las tres líneas.[1]
4. **Activos:** ejecución de `-3.sql`; comparación con las entradas que muestra InfoProbidad; las claves repetidas no permiten contar cada línea como inmueble único.[1]
5. **Tiempo:** ejecución de `-4.sql` y cotejo de tipo/fecha de cese en InfoProbidad.[1]
6. **Deduplicación:** búsqueda por nombre completo, razón social y RUT societario en casos publicados e índice de investigación: sin coincidencia; la homónima fue descartada por nombre distinto.
7. **Alternativas oficiales:** búsqueda web por nombre completo, ID y RUT societario no devolvió fuente oficial primaria adicional en los resultados consultados; una URL judicial indexada respondió «not found».[2] El portal de verificación documental pide un código de barra no disponible en las fuentes revisadas; no se intentó eludir este control.[3]
8. **Explicación legítima/refutación:** el propio formulario declara un global hipotecario de CLP 150 000 000, detalla los tres signos y conserva asientos inmobiliarios separados; esa estructura puede explicar la diferencia entre montos nominales y ajustados sin probar saldo real, fraude o duplicidad material.[1]

## Decisión editorial

**Descartada como caso.** No se acreditó una medición independiente del patrimonio, un saldo hipotecario efectivo ni un vínculo de esos bienes con una decisión pública; además, la declaración identificada es por cese y fecha ese cese en mayo de 2026.[1] No cumple los requisitos de materialidad/relevancia ni de descartar error de datos; no preparo borrador.

No reabrir con reformulaciones de las búsquedas agotadas; solo reconsiderar si aparece rectificación o documentación primaria registral que aclare titularidades y pasivos, y una pregunta de interés público concreta. No hubo revisor independiente en esta pasada.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5118158 — InfoProbidad — declaración completa de Rosario Andrea Soto Alegría, 07-06-2026
    > "#### Monto global en pesos $ 150.000.000"
    > "Monto adeudado en pesos | -150000000"
    > "Fecha de Cese en el cargo | 18-05-2026"
[2] https://www.pjud.cl/prensa-y-comunicaciones/noticias-del-poder-judicial/110163 — Poder Judicial — URL indexada pero actualmente no encontrada
    > "The requested URL was not found on this server."
[3] https://verificadoc.pjud.cl/ConsultaUniCodWeb — Poder Judicial — verificación de documentos
    > "Debe ingresar un código de barra"
