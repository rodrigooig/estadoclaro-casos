# Revisión editorial de dato — dos valores distintos para un Mitsubishi Outlander 2017

> **Ficha de investigación; no es un caso publicable ni una imputación.** Estado: **evidencia insuficiente**. Última revisión: 2026-10-04 UTC. No se consultó ni reproduce RUT personal.

## §0. Resultado ejecutivo

El cribado del oro encontró una discrepancia material en dos registros de declaración que comparten nombre completo, cargo, fecha y vehículo. La declaración InfoProbidad ID 335692, de 30-03-2019, muestra para un Mitsubishi Outlander año fabricación 2017 un avalúo fiscal de CLP 1.100.011.000.000; la ficha InfoProbidad ID 374654, también fechada 30-03-2019 y del mismo declarante/cargo, muestra CLP 11.000.000 para el mismo vehículo.[1][2]

El oro al corte 2026-10-02 conserva ambos valores; en la fila de CLP 1.100.011.000.000 marca `implausible=true` y `has_outlier=true`, mientras el registro de CLP 11.000.000 no está marcado como implausible (consultas reproducibles del oro, corte 2026-10-02; ejecución 2026-10-04). Una tabla oficial del SII para tasaciones 2019 incluye cuatro Mitsubishi Outlander año 2017 con valores entre CLP 9.580.000 y CLP 13.180.000, según carrocería/versión; el formulario de InfoProbidad no identifica la versión exacta, por lo que esto es contraste contextual, no una tasación individual concluyente.[7]

**Decisión:** no es un caso sobre la persona ni evidencia de patrimonio real. Es una inconsistencia reproducible entre dos declaraciones públicas del mismo día, propagada al artefacto. Queda como `evidencia insuficiente`: las fuentes revisadas no permiten establecer por qué existen dos registros ni cuál fue la causa del importe de 12 dígitos. No se afirma que el portal haya rectificado uno ni que la explicación sea una errata confirmada.

## 1. Proveniencia y reproducibilidad

**Oro EstadoClaro.** `meta.build_date=2026-10-02T15:43:07+00:00`; copia local informada sin cambios desde la sincronización. `consultas/alfonso-urzua-mitsubishi-valuation-discrepancy-1.sql` se ejecutó con `ec-gold-sql` el 2026-10-04 y devolvió cuatro filas para el mismo vehículo: CLP 16.000.000 en 2017 y 2018; CLP 11.000.000 y CLP 1.100.011.000.000 en dos snapshots del 30-03-2019. El monto mayor figura `implausible=true`; no lo interpreto como valor real ni lo sumo con otra cifra.(consultas reproducibles del oro, corte 2026-10-02; ejecución 2026-10-04)

La consulta 2 vuelve a unir las dos filas del 30-03-2019 con `panel`: la entrada fuente 374654 aparece con activos CLP 24.500.000, pasivos CLP 73.006.000, sin `has_outlier`; la entrada 335692, con activos CLP 1.100.037.500.000, pasivos CLP 75.000.000 y `has_outlier=true`, `confidence=low`. Es una reproducción del mismo dato en el oro, no verificación independiente de su veracidad.(consultas reproducibles del oro, corte 2026-10-02; ejecución 2026-10-04)

## 2. Identidad y cotejo del origen

Las dos fichas primarias InfoProbidad muestran el mismo nombre completo, “ALFONSO IVÁN URZÚA GAVILÁN”, el cargo de médico cirujano y el Servicio de Salud Metropolitano Occidente; ambas declaran fecha 30-03-2019. No hay atribución por homonimia en este cotejo.[1][2]

En el vehículo, ambas fichas identifican station wagon Mitsubishi Outlander, año de fabricación 2017, año de inscripción 2016 y gravamen “PRENDA”. La discrepancia entre sus campos “Avalúo fiscal” es 1.100.011.000.000 frente a 11.000.000 pesos.[1][2]

Como control histórico independiente, las fichas InfoProbidad de 29-03-2017 y 18-03-2018 indican CLP 16.000.000 para un Outlander 2017. La ficha de 2017 también registra otros campos patrimoniales diferentes, por lo que no trato sus datos como prueba de que sea el mismo registro subyacente; sirven solo para contexto temporal del vehículo declarado.[4][5]

## 3. Explicaciones contrastadas y límites

- **Error de transcripción/captura en una de las dos entradas:** explicación plausible para la diferencia de doce órdenes de magnitud entre registros del mismo día, pero no se encontró fe de erratas ni acto que determine cuál es el registro correcto. La señal del oro (`implausible`) no es autoridad para corregir la fuente.[1][2](consultas reproducibles del oro, corte 2026-10-02; ejecución 2026-10-04)
- **Diferencia de versión/equipamiento:** la tabla SII 2019 tiene varios Outlander 2017 y tasaciones distintas, entre CLP 9.580.000 y CLP 13.180.000; las fichas consultadas no precisan versión ni transmisión. Esto podría explicar diferencias ordinarias de millones, no acredita por sí solo el importe registrado por una ficha ni permite fijar el valor correcto.[6][7]
- **Dos entradas válidas de una declaración rectificada o complementaria:** las dos páginas abiertas son distintas y ambas se presentan como actualización periódica del mismo día. Las fuentes accesibles no aclaran su secuencia jurídica ni si una reemplaza a la otra.[1][2]

No se consultaron datos privados, no se contactó a personas y no se eludió CAPTCHA, login, pago ni control de acceso. La tasación anual del SII no es un certificado del vehículo individual; falta la versión exacta y un documento público que explique la duplicidad.

## 4. Rutas independientes examinadas (2026-10-04)

1. **Cribado transversal del oro:** ejecuté la consulta guardada de outliers actuales (28 filas), una pantalla de proveedores declarados con órdenes a la misma institución y una pantalla de actividades pagadas recientes. Los resultados de misma institución ya estaban cubiertos por casos/fichas del índice; la pantalla de `last_twelve_months` devolvió cero en ese universo y no se tomó como prueba de ausencia. La pantalla general de actividades pagadas devolvió casos de auto-descripción del cargo, docencia y actividades fuera del sector; no generó una pista nueva de compra para este hallazgo.
2. **Detalle longitudinal de bienes del oro:** la consulta nueva `alfonso-urzua-mitsubishi-valuation-discrepancy-1.sql` devolvió los cuatro snapshots de la llave del vehículo; la segunda consulta compara las dos declaraciones del mismo día con los campos de panel y la bandera de outlier. Se cotejaron además tablas `asset`, `company`, `real_estate` y `financial_asset` para separar el vehículo de otras categorías; estas no cambian la discrepancia del bien mueble.(consultas reproducibles del oro, corte 2026-10-02; ejecución 2026-10-04)
3. **InfoProbidad, identificadores exactos:** abrí por separado las fichas 335692 y 374654. Ambas muestran la misma identidad completa, función, institución, fecha, vehículo y distinto monto; su relación y precedencia no quedan explicadas por las páginas consultadas.[1][2][3]
4. **Serie de declaraciones previas:** abrí las fichas 38403 (2017) y 154380 (2018), que muestran CLP 16.000.000 para el Outlander 2017. Son fuentes primarias diferentes por fecha y ayudan a comprobar continuidad del modelo/año, no la variante exacta ni el origen del monto extremo.[4][5]
5. **Catálogo oficial independiente:** desde la página del SII de descargas de tasaciones históricas llegué al archivo oficial de vehículos livianos 2019; en la hoja `LIV2019` encontré cuatro filas para Outlander modelo/año 2017 con tasaciones CLP 9.580.000, 10.480.000, 11.390.000 y 13.180.000, según versión/tipo.[6][7] El archivo no permite escoger cuál corresponde al vehículo de la ficha porque esta no publica esa variante.
6. **Búsqueda exacta/refutación externa:** búsquedas web por los IDs 335692 y 374654, el nombre completo, la sociedad médica declarada y los términos del vehículo no localizaron una rectificación, acto oficial adicional o evidencia pública independiente pertinente. Las respuestas irrelevantes de búsquedas generales no se usan como prueba negativa de que tales documentos no existan.
7. **Alternativa de tasación:** comparé la posibilidad de una versión más cara con la tabla SII y el valor previo declarado. La tabla cubre una gama de versiones, pero ninguna fuente identifica motor/transmisión del vehículo particular; la alternativa no resuelve la diferencia entre las dos fichas de 2019.[4][5][7]

## 5. Mapa de afirmaciones y gate editorial

- **Hecho por establecer:** si el registro de CLP 1.100.011.000.000 es una errata. **Fuente primaria necesaria:** rectificación, historial del registro o respuesta documental del custodio. **Alternativas consultadas:** la ficha paralela del mismo día, snapshots 2017/2018 y tabla anual SII. **Resultado:** inconsistencias corroboradas; causa no determinada.[1][2]
- **Contexto histórico:** las fichas previas respaldan contexto de valores declarados, no la variante particular.[4][5] La tabla SII documenta valores por versión, sin identificar el vehículo exacto.[7]
- **Hecho derivado:** el monto de doce dígitos se replica en el oro y dispara el outlier. **Fuente:** queries 1 y 2, corte y ejecución señalados. Esto solo demuestra cómo el artefacto representa el campo fuente, no la situación patrimonial real.(consultas reproducibles del oro, corte 2026-10-02; ejecución 2026-10-04)
- **Identidad:** coincidencia del nombre completo más cargo, institución y ficha enlazada; no se publica RUT personal.[1][2]
- **Gate de caso:** no cruza relevancia personal ni hecho de patrimonio real verificado; el hecho material es una inconsistencia documental. No se prepara borrador de caso. La utilidad pública está en la calidad y trazabilidad del dato patrimonial público, no en atribuir conducta al declarante.

**Próxima acción concreta:** reabrir solo si aparece una rectificación, historial oficial de versiones o registro SII con la variante identificable. Mientras tanto, conservar como discrepancia editorial y no repetir las búsquedas generales.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=335692 — InfoProbidad — declaración 335692, Alfonso Urzúa, 30-03-2019
    > "Avalúo fiscal $ 1.100.011.000.000"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=374654 — InfoProbidad — declaración 374654, Alfonso Urzúa, 30-03-2019
    > "Avalúo fiscal $ 11.000.000"
[3] https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=b5bff0dbe004c1a10ef349f7fa82457d — InfoProbidad — búsqueda por identificador de declaración
    > "Declaración de ALFONSO IVÁN URZÚA GAVILÁN"
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=154380 — InfoProbidad — declaración de Alfonso Urzúa, 18-03-2018
    > "Avalúo fiscal $ 16.000.000"
[5] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=38403 — InfoProbidad — declaración de Alfonso Urzúa, 29-03-2017
    > "Avalúo fiscal $ 16.000.000"
[6] https://www.sii.cl/servicios_online/1049-2612.html — SII — descarga de tasaciones históricas de vehículos
    > "En esta página Ud. encontrará información sobre las tasaciones de vehículos de años anteriores a la última publicación."
[7] https://www.sii.cl/servicios_online/tasacion_fiscal_vehiculos/tasac-liv-2019.zip — SII — tasación fiscal de vehículos livianos 2019
    > "2017 | Suv | MITSUBISHI | OUTLANDER | 4X2 | 4 | 2000"
    > "SU1660032 | J340075 | 2017 | Suv | MITSUBISHI | OUTLANDER | 4X2 | 4 | 2000 |  | Bencina | Automatica |  |  |  | Full |  | 10480000 | 227365"
    > "SU1660033 | J340079 | 2017 | Suv | MITSUBISHI | OUTLANDER | 2.0 4X2 MT | 4 | 2000 |  | Bencina | Mecanica |  |  |  | Full |  | 9580000 | 200365"
    > "VN1660074 | J340077 | 2017 | Van | MITSUBISHI | OUTLANDER | 4X4 GLS | 4 | 2400 |  | Bencina | Automatica |  |  |  | Full |  | 13180000 | 319282"
    > "VN1660075 | J340076 | 2017 | Van | MITSUBISHI | OUTLANDER | 4X4 GLX | 4 | 2400 |  | Bencina | Automatica |  |  |  | Full |  | 11390000 | 254665"
