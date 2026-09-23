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
sociedades en el extranjero se detuvo antes de terminar, por el límite de uso, y su ángulo
queda pendiente.

**Selección.** Se eligieron para investigar los candidatos de mayor interés público, los que
tenían los datos más firmes y los que varios mineros habían encontrado por separado. Una diputada
apareció en siete ángulos distintos. Este primer lote investigó cinco: por límite de uso, el
resto quedó para lotes siguientes.

**Investigación y redacción.** Un agente por caso volvió a verificar desde cero cada hecho que
traían los mineros contra el artefacto, el bronce y las páginas de origen. Reconstruyó la
cronología, buscó activamente las explicaciones legítimas más plausibles con evidencia pública
real, y decidió si publicar o descartar.

**Verificación adversarial.** Un agente distinto, en otro modelo, que no escribió los casos,
volvió a correr todas las cifras de cada texto, abrió las fuentes citadas para confirmar que
dijeran lo que el texto les atribuye y revisó las reglas editoriales, con autoridad para
corregir o retirar. Aprobó tres casos tal como estaban y uno con seis correcciones de
redondeo (diferencias de $1 a $5 y de 0,01 UF). No retiró ninguno.

En total, esta entrega desplegó **37 agentes**. Treinta corresponden a la fase de minería:
veintidós mineros más ocho que revisaron la primera entrega (sección 4). Los siete restantes
son cinco investigadores y dos verificadores.

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

En paralelo con la minería, ocho agentes, uno por categoría, volvieron a correr las cifras de
los 70 casos publicados en agosto contra el artefacto actual. Sus veredictos **todavía no han
pasado por un segundo verificador**, y por eso no se publican. Cuando lo hagan, la corrección
irá en el mismo lugar que el caso original, como lo exige el estándar de la primera entrega.

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

- Los candidatos no investigados de este lote. Los guarda un expediente de trabajo que no se
  publica, porque son pistas sin verificar sobre personas identificables.
- La verificación cruzada de la revisión de la primera entrega (sección 4).
- El ángulo de sociedades y bienes en el extranjero, que no terminó.
