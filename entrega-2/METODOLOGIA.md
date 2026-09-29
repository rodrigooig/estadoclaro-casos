# Metodología — segunda entrega

Cómo se encontraron, investigaron y verificaron los casos de esta entrega. Las reglas que
siguen los casos publicados son las mismas de la primera entrega
([METODOLOGIA.md § Qué reglas siguen los casos publicados](../METODOLOGIA.md#qué-reglas-siguen-los-casos-publicados)),
y lo que el cruce no cubre, también.

**Fecha del trabajo:** 23 de septiembre de 2026. **Artefacto:** `gold.duckdb` con build del
22-09-2026 y órdenes de compra hasta el 22-09-2026 (`meta.procurement_cutoff`).

## 1. Por qué una segunda entrega

La primera entrega (22 y 23 de agosto de 2026) usó el artefacto del 21-08-2026. Desde entonces
el artefacto cambió en cinco cosas que abren casos que antes no se veían:

1. **Vigencia de cargos**: una capa que deriva, de las fechas declaradas, quién ejerce hoy cada
   cargo, desde cuándo y hasta cuándo.
2. **Corrección de moneda**: cada monto en otra moneda dice ahora cómo se leyó
   (`currency_reading`); antes 591 instrumentos que ya venían en pesos se multiplicaban por el
   tipo de cambio.
3. **Montos fuera de rango por tipo de bien**, en dólares, con cifras gemelas que los excluyen;
   antes un umbral único de 10.000 millones de pesos escondía patrimonios reales.
4. **Un mes más de órdenes de compra**, hasta el 22-09-2026.
5. **El bronce completo de órdenes** (12,2 millones, 2020-2026), que incluye a los proveedores
   persona natural con su nombre y su comuna. Con él se pueden hacer cruces por nombre, con
   el riesgo de homónimos que eso implica.

## 2. Cómo se hizo

**Minería.** Veintidós agentes minaron, cada uno, un ángulo distinto directamente sobre el
artefacto y el bronce, sin pasar por el modelo de producción. Los ángulos: autoridades
unipersonales que ejercen hoy; concejales, consejeros regionales y parlamentarios; ventas
después del cese; posible fraccionamiento de compras; ventas sin competencia; sociedades de un
solo cliente estatal; saltos patrimoniales con el artefacto corregido; crecimiento patrimonial
frente al grado de la escala de sueldos; sociedades que salen de la declaración y siguen
vendiendo; patrimonio que desaparece al asumir; sociedades en el extranjero; inmuebles en la
comuna que se gobierna; acumulación de inmuebles y vehículos; acreedores no bancarios;
actividades remuneradas en proveedores de la propia institución; sociedades del cónyuge en
declaraciones anexas; redes de declarantes; sociedades médicas; universidades y educación
municipal; obras públicas, vivienda y transporte; fiscalizadores con negocios en el sector
fiscalizado; y funcionarios que aparecen, por nombre, como proveedores persona natural de su
propio servicio. Veintiuno terminaron y devolvieron **111 candidatos sobre 83 personas**. El de
sociedades en el extranjero se detuvo por el límite de uso y se completó en el lote 2.

**Selección.** Se eligieron para investigar los candidatos de mayor interés público, los que
tenían los datos más firmes y los que varios mineros habían encontrado por separado. Una diputada
apareció en siete ángulos distintos. El lote 1 investigó cinco y el lote 2, treinta y cinco.

**Investigación y redacción.** Un agente por caso volvió a verificar desde cero cada hecho que
traían los mineros contra el artefacto, el bronce y las páginas de origen. Reconstruyó la
cronología, buscó activamente las explicaciones legítimas más plausibles con evidencia pública
real, y decidió si publicar o descartar.

**Verificación adversarial (lote 1).** Un agente distinto, en otro modelo, que no escribió los casos,
volvió a correr todas las cifras de cada texto, abrió las fuentes citadas para confirmar que
dijeran lo que el texto les atribuye y revisó las reglas editoriales, con autoridad para
corregir o retirar. Aprobó tres casos tal como estaban y uno con seis correcciones de
redondeo (diferencias de $1 a $5 y de 0,01 UF). No retiró ninguno.

**Lote 2.** Por pedido expreso, en un modelo más económico (Sonnet 5) para todos los
subagentes: 35 casos más, cada uno con un investigador y un verificador adversarial, más el
ángulo de sociedades en el extranjero, que se completó y devolvió dos candidatos débiles que no
pasaron a investigación. De los 35, 11 se descartaron en la investigación y 24 se escribieron.
El verificador corrigió **los 24**, varios en afirmaciones centrales —un titular que atribuía a
una autoridad lo que solo coincidía por nombre, cifras mal agregadas, un fondo que se daba por
omitido y había sido comprado después—. Por eso se agregó un **segundo pase**: otro verificador
por caso, que cerró lo que el primero no pudo confirmar leyendo directamente los certificados
de socios y el registro público de oferentes (OCDS) de Mercado Público, y releyó titular,
privacidad e interés público. Solo los casos que completaron ese segundo pase se publican: 7.
Los otros 17 quedan como borradores, fuera de este repositorio, hasta completarlo.

En total, esta entrega desplegó **109 agentes**: 30 en la minería (22 mineros y 8 revisores de
la primera entrega), 7 en el lote 1, 64 en el lote 2 y 8 en el segundo pase, que se detuvo por
límite de uso.

## 3. Lo que el proceso corrigió antes de publicar

- **Un caso descartado.** Dos mineros, por separado, marcaron a un gobernador regional cuya
  empresa individual dejó de figurar en sus declaraciones al asumir mientras seguía vendiéndole
  al Estado. El investigador encontró dos errores en esa lectura. Primero, la persona no fue
  consejero regional entre 2020 y 2024: renunció en 2020. Segundo, la declaración jurada de
  socios que la propia empresa firma en Mercado Público la muestra a nombre de otra persona
  desde antes de su primera orden como gobernador. El caso no se publica.
- **Un encuadre cambiado.** Un caso que los mineros traían como «omisión» resultó ser una
  sociedad cuyo mismo porcentaje figura hoy a nombre de una familiar directa, según ese mismo
  certificado de socios. La explicación legítima, una enajenación para cumplir el artículo 45
  de la Ley 20.880, se presenta con la misma prominencia que el hallazgo. El texto de ese
  artículo se cotejó con la versión consolidada de la ley: no restringe a quién se enajena.
- **Órdenes mal atribuidas.** En otro caso, tres de las órdenes que los mineros contaban «desde
  la asunción» pagan meses de servicio anteriores a ella. El investigador leyó el nombre de
  cada orden y las separó.
- **Tenencias indirectas.** El cruce automático solo ve las sociedades declaradas directamente.
  Dos casos dependen de participaciones a través de otra sociedad que el cruce no alcanza, y
  el texto lo dice así en vez de sumarlas.

## 4. La primera entrega, revisada contra el artefacto nuevo

Ocho agentes, uno por categoría, volvieron a correr las cifras de los 70 casos publicados en
agosto. Marcaron 13 como «ya no se sostiene», y un segundo verificador independiente confirmó 12
por completo y 1 en parte. Seis de esos trece —cinco saltos patrimoniales leídos sobre montos
en dólares que ya venían en pesos, y un caso de proximidad temporal— ya se habían retirado en la
[corrección del 27 de septiembre de 2026](../METODOLOGIA.md#corrección-del-27-de-septiembre-de-2026).
Los otros siete siguen publicados. No los explica la corrección de moneda, sino errores de la
redacción original —entre ellos un doble conteo de órdenes, el mismo error que la primera entrega
ya había detectado en otros tres casos— o límites del cruce que ya estaban documentados. Su fe
de erratas está redactada y pendiente de decisión editorial.

## 5. Rarezas del dato encontradas en el camino

Para el repositorio de Estado Claro, no para los casos:

- Una rectificación de una declaración antigua, presentada a requerimiento del órgano
  fiscalizador, puede dejar como **vigente** en la capa de vigencia a alguien que renunció al
  cargo hace años.
- Hay al menos una sociedad duplicada dentro de una misma declaración: dos filas con distinto
  identificador de bien, donde la página muestra una sola.
- 106 filas de sociedades traen país **Afganistán**, casi con seguridad el primer valor de la
  lista del formulario y no un dato real.
- Las participaciones a través de una sociedad controlada no entran al cruce con compras
  públicas, así que una sociedad que el declarante tiene por medio de otra es invisible para él.

## 6. Qué queda abierto

- Los 17 casos escritos que esperan el segundo pase de verificación, y los candidatos no
  investigados. Los guarda un expediente de trabajo que no se
  publica, porque son pistas sin verificar sobre personas identificables.
- La verificación cruzada de la revisión de la primera entrega (sección 4).
