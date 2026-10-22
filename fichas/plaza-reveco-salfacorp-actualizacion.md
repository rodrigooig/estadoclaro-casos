# Rafael Mauricio Plaza Reveco / Constructora Salfa: actualización de órdenes declaradas

## Reevaluación editorial vigente — 2026-10-11 (v3)

- **Ejecución del paquete:** `20261011T080256Z`. Las dos consultas guardadas y la partición temporal adversarial se reejecutaron con `ec-gold-sql` contra el oro al corte `2026-10-09T16:06:27Z`: cuatro códigos OC distintos, CLP 34.277.418.870 / UF 858.290,27; uno previo a la asunción y tres desde el 01-03-2026. No hay cambio probatorio respecto del borrador revisado.
- **Revisión vigente:** las revisiones independientes de esta entrega, `revisiones/plaza-reveco-salfacorp-actualizacion-20261011T080256Z-revisor-1.json` y `...-revisor-2.json`, aprobaron el SHA final `8d4981a778ba4812f6d46514548a9dcea49c54e8f3536a7c00190c72ce8ec39a`; permanece idéntico. La verificación de citas se repitió con ledger aislado de cinco fuentes primarias, evidencia adjunta y 59% de cobertura; las siete advertencias de más de tres citas son estilísticas y se inspeccionaron, sin alterar el texto aprobado.
- **Entrega:** se prepara la actualización del PR borrador #102 vía `ec-inv-pr`; el PR no se mergea. Rodrigo decide publicación.
- **ID:** `plaza-reveco-salfacorp-actualizacion`
- **Estado vigente:** lista para verificacion.
- **Producto:** corrección del caso publicado `casos/negocios_estado/plaza-reveco-salfacorp.md`; no es caso nuevo.
- **Pregunta:** ¿el caso vigente contó una vez cada orden del proveedor cuyo RUT societario coincide con el de la línea declarada, dentro de las fechas declaradas?
- **Resultado medido:** declaración InfoProbidad 5124087 (24-09-2026) registra 1.911 acciones «SALFACORP», RUT 93.659.000-4, CLP 2.425.059, adquisición declarada 28-10-2025; consigna asunción del cargo 01-03-2026. Cuatro códigos OC únicos de ese RUT proveedor, 16-12-2025 a 01-07-2026; una orden (638-216-SE25, CLP 25.938.092.545) es anterior a la asunción y las otras tres posteriores. Suma CLP 34.277.418.870 / UF 858.290,27; dos SQL se reejecutaron con el oro al corte `2026-10-09T16:06:27Z`, cuatro fichas primarias se reabrieron y una tercera consulta adversarial independiente confirmó período/códigos.
- **Cambio exacto:** el reemplazo completo está en `borradores/plaza-reveco-salfacorp-actualizacion.md`. Sustituye el titular «facturaba» y el párrafo basado en la declaración de marzo; actualiza al corte declarativo del 24-09-2026; cambia de 3 / CLP 8.339.326.325 / UF 204.450,48 a 4 / CLP 34.277.418.870 / UF 858.290,27 e incorpora la OC 638-216-SE25, previa a la asunción. Tres órdenes son posteriores. Distingue montos consignados de pago y no afirma titularidad económica, intervención, beneficio personal ni calificación legal.
- **Revisiones finales independientes:** `revisiones/plaza-reveco-salfacorp-actualizacion-20261010T070712Z-revisor-1.json` y `...-revisor-2.json`; ambas `approve` para el mismo borrador SHA256 `8d4981a778ba4812f6d46514548a9dcea49c54e8f3536a7c00190c72ce8ec39a`. La nueva versión de Sources incluye evidencia textual verificada; se volvió a verificar con `sources.py --evidence`.
- **Entrega:** corrección propuesta para actualizar el PR borrador #102, abierto contra `main`; el PR no está mergeado. La bitácora se entregará por `ec-inv-pr`; Rodrigo decide merge/publicación.
- **Incertidumbre remanente:** fuentes revisadas no determinan qué título exacto representa «SALFACORP», la propiedad económica subyacente, pago de las órdenes ni actuación individual de Plaza Reveco.

Aplicar `METODO_INVESTIGACION.md` v3. El historial de evidencia y decisiones previas que sigue a continuación documenta antecedentes anteriores y no reemplaza este estado vigente.

## Verificación y decisión v3 (2026-10-06)

- **Identidad/activo, fuente primaria:** InfoProbidad, declaración 5124087, buscada y reabierta por URL/ID exacto; nombre completo coincide; 24-09-2026; función declarada abogado integrante del Poder Judicial; línea ACCION «SALFACORP», RUT societario 93.659.000-4, cantidad 1.911, valor CLP 2.425.059, fecha de adquisición declarada 28-10-2025, `Tiene Calidad de Controlador: false`. No prueba de acción subyacente o propiedad económica aparte de la declaración.
- **Órdenes primarias:** reabiertas fichas oficiales 638-216-SE25, 5221-8-SE26, 829-23-SE26 y 638-93-SE26; cada una identifica proveedor RUT 93.659.000-4. Fechas/montos/estados: 16-12-2025, CLP 25.938.092.545, «Enviada a proveedor»; 30-03-2026, CLP 99.781.535, «Aceptada»; 19-06-2026, CLP 5.633.725.103, «Enviada a proveedor»; 01-07-2026, CLP 2.605.819.687, «Aceptada». La orden 638-216-SE25 enlaza a licitación pública 638-18-O125 de obra MINVU; es contexto de selección, no evidencia de intervención o pago.
- **Medición reproducible:** gold `meta.build_date=2026-10-06T15:56:08Z`. Reejecutadas consultas propias del dossier `consultas/plaza-reveco-salfacorp-actualizacion-20261006-1.sql` y `...-2.sql`: cuatro `order_code` distintos; agregado deduplicado CLP 34.277.418.870, UF 858.290,27, desde 16-12-2025 hasta 01-07-2026. Verificación adicional del revisor adversarial reejecutada por el padre: `consultas/plaza-reveco-salfacorp-actualizacion-20261006T210110Z-adversarial-list.sql` y `...-aggregate.sql`; mismos cuatro códigos, total y fechas, sin duplicados que cambien el total. Todas las órdenes del vendedor se cuentan por código OC único.
- **Ruta de alternativa/alcance:** revisión de la ficha de licitación 638-18-O125 y cotejo de compradores/estados de las otras tres órdenes. El caso conserva que la licitación pública ofrece contexto de compra, no sustenta intervención individual ni sustituye una pregunta por identidad del interés declarado. Búsqueda de adjudicación/anexos no necesaria para corregir el conteo; el borrador no hace afirmaciones sobre puntajes, decisión o ejecución final.
- **Resultado editorial:** el caso vigente informa tres órdenes por CLP 8.339.326.325 (UF 204.450,48). El borrador propone reemplazar el archivo existente, su titular «facturaba al Estado» y el párrafo basado en la declaración de 10-03-2026; actualiza a la declaración de 24-09-2026, agrega la orden del 16-12-2025 y reporta cuatro órdenes por CLP 34.277.418.870 (UF 858.290,27). No es caso nuevo. No afirma pago, deuda/ingreso personal, propiedad económica/control, intervención, beneficio o conclusión legal.
- **Revisión 1 evidencia:** approve, SHA256 `4bec7798f792bdd76725fdcb62045e42f23d89883051378e8c66bc211a1efc4f`, claims c1–c5; abrió las cinco fuentes primarias y el caso main; verificó asset, cada OC y agregado por consultas independientes. JSON: `revisiones/plaza-reveco-salfacorp-actualizacion-20261006T210110Z-revisor-1.json`.
- **Revisión 2 adversarial:** approve, mismo SHA y claims c1–c5; reopened declaration, OCs, caso main y ficha de licitación; escribió SQL independiente de listado y agregado; consideró objeción al reemplazo exacto ya resuelta en la redacción final. JSON: `revisiones/plaza-reveco-salfacorp-actualizacion-20261006T210110Z-revisor-2.json`.
- **Citas/evidencia:** `sources.py verify borradores/plaza-reveco-salfacorp-actualizacion.md --evidence --min-coverage 0.5` pasó con 58% de cobertura y evidencia adjunta para las cinco fuentes citadas; advertencias estilísticas de más de tres citas se revisaron individualmente, sin tocar el texto aprobado por ese motivo.
- **Reabrir:** nueva declaración pública/rectificación que resuelva el título/participación subyacente; nuevo documento oficial sobre las órdenes o actuación que cambie el conteo, estados o límite de intervención. Sin eso, no repetir búsquedas generales.

- ID: `plaza-reveco-salfacorp-actualizacion`
- Estado: `evidencia insuficiente` (2026-10-04). Revisión de un caso ya publicado en `casos/negocios_estado/plaza-reveco-salfacorp.md`; no es una nueva propuesta de caso.
- Corte: `gold.duckdb`, `meta.build_date=2026-10-02T15:43:07+00:00`; corrida 2026-10-04. El oro no cambió desde la última sincronización informada por el cron.

## Mapa de afirmaciones

**Identidad y activo declarado.**

La ficha de InfoProbidad identifica a RAFAEL MAURICIO PLAZA REVECO y muestra una actualización fechada el 24-09-2026.[1]

En esa declaración aparece una línea ACCION denominada SALFACORP, con RUT societario 93.659.000-4, cantidad declarada 1.911 y valor de CLP 2.425.059.[1]

La declaración fija la adquisición en 28-10-2025 y marca `Tiene Calidad de Controlador: false`.[1]

El artefacto identifica el cargo e institución declarados como abogado integrante / Poder Judicial; esto es un campo del registro, no evidencia de función en las compras.[1]

**Hallazgo nuevo frente al caso publicado.**

El caso publicado enumeró tres órdenes entre marzo y julio de 2026 por CLP 8.339.326.325 en total (caso publicado, líneas 7–13).

La consulta por nombre completo, declaración vigente y RUT societario exacto recuperó cuatro códigos únicos desde la fecha de adquisición hasta la declaración más reciente (`consultas/plaza-reveco-salfacorp-actualizacion-20261004-1.sql`).

La consulta independiente de agregado por `order_code` confirmó 4 órdenes por CLP 34.277.418.870 entre 16-12-2025 y 01-07-2026 (`consultas/plaza-reveco-salfacorp-actualizacion-20261004-2.sql`).

**Orden adicional comprobada.**

La OC 638-216-SE25 registra a Constructora Salfa S.A., RUT 93.659.000-4, con monto CLP 25.938.092.545 y envío el 16-12-2025.[15]

La orden remite a la licitación pública 638-18-O125 y su estado es «Enviada a proveedor», no pago comprobado.[15]

Las otras tres órdenes identificadas son 5221-8-SE26 por CLP 99.781.535,[7] 829-23-SE26 por CLP 5.633.725.103,[8] y 638-93-SE26 por CLP 2.605.819.687.[9]

**Proceso de compra y explicación legítima.**

La ficha oficial de licitación describe 638-18-O125 como obra pública abierta para la macro urbanización PUH de Punta Arenas, adjudicada el 16-12-2025.[12]

El presupuesto consignado en esa ficha es CLP 26.849.862.000 y el tipo de contrato es suma alzada.[12]

La Resolución Exenta MINVU N° 1382 del 31-07-2025 designó funcionarios del SERVIU para la comisión técnica evaluadora de la licitación.[16]

Ese acto no prueba quién participó en la adjudicación final, cuál fue la puntuación relativa ni que Plaza interviniera.[16]

La explicación legítima más plausible es la compra abierta de una obra regional a un proveedor cuyo rubro de construcción es consistente con el objeto licitado.[3][12][15]

No hay en las fuentes revisadas prueba de que Plaza interviniera en la licitación o de que las órdenes fueran emitidas por el Poder Judicial.[1][12][15]

**Identidad societaria y límites.**

La página oficial de SalfaCorp informa, en una entrada de 2025, que Constructora Salfa está entre las «filiales del Grupo»; esto respalda la vinculación entre las marcas/nombres del grupo, pero no identifica el porcentaje de propiedad ni qué título exacto representa la tenencia declarada por Plaza.[24]

La CMF identifica la razón social CONSTRUCTORA SALFA S.A. con RUT 93.659.000-4, igual al RUT de la línea que la declaración etiqueta «SALFACORP».[1][11]

El sitio oficial de SalfaCorp describe su unidad de ingeniería y construcción; ese contexto es compatible con la obra, pero no acredita a los accionistas de Constructora Salfa S.A.[3][4]

La participación y sus datos son autodeclarados; las fuentes no establecen control, intervención del titular, beneficio personal derivado de la compra ni calificación jurídica.[1][11][15]

## Rutas y consultas de esta pasada (2026-10-04)

- **InfoProbidad:** búsqueda por nombre completo y declaración vigente ID 5124087; se cotejaron fecha, sociedad, RUT societario, cantidad, valor, adquisición y marca de no-control.[1]
- **EstadoClaro:** se ejecutaron dos SQL independientes contra el oro solo mediante `ec-gold-sql`; uno lista activo y órdenes por RUT, otro cuenta códigos únicos y suma montos.
- **ChileCompra (1/2):** se extrajeron las fichas originales de 638-216-SE25 y 5221-8-SE26, cotejando su proveedor, monto y estado.[7][15]
- **ChileCompra (2/2):** también se verificaron las fichas 829-23-SE26 y 638-93-SE26, y se distinguieron los estados «Enviada a proveedor» y «Aceptada».[8][9]

- **Licitación y organismo comprador:** consulta exacta por 638-18-O125 en Mercado Público y cotejo con la resolución pública MINVU que nombra la comisión técnica.[12][16]
- **CMF:** consulta por RUT 93.659.000; la ficha oficial identifica Constructora Salfa S.A. con ese RUT.[11]
- **SalfaCorp:** se revisaron páginas institucionales de unidades de negocio para contrastar el objeto constructor de la obra.[3][4]
- **Poder Judicial / refutación:** búsquedas web exactas `"Rafael Plaza Reveco" "Constructora Salfa"`, `"Salfacorp" "Rafael Plaza Reveco" sentencia` y nombre completo + `pjud.cl` ejecutadas el 2026-10-04. No apareció en esos resultados indexados una relación verificable de Plaza con esta licitación o con un juicio de Salfa.[unverified] El resultado negativo se limita a esas búsquedas indexadas y no prueba ausencia de causas o vínculos.
- **Documentos pendientes de la ruta licitatoria:** la ficha pública acredita el estado adjudicado y la fecha, y el acta MINVU acredita la designación de comisión; no se localizó en esta pasada la resolución de adjudicación con puntuaciones/anexos.[12][16]

## Rutas adicionales y reejecución independiente (2026-10-04)

- **Reejecución del oro:** se ejecutaron de nuevo, por `ec-gold-sql`, ambas consultas guardadas. La primera devolvió cuatro filas por códigos OC distintos, los cuatro con proveedor/RUT 93.659.000-4; la segunda, que agrega `distinct order_code`, volvió a dar 4 órdenes, CLP 34.277.418.870 y UF 858.290,27, entre 16-12-2025 y 01-07-2026. Corte sin cambio: `meta.build_date=2026-10-02T15:43:07Z`. Es una reejecución independiente de la primera corrida a nivel de consulta, no una revisión humana independiente.
- **Fichas originales ChileCompra:** se extrajeron de nuevo las cuatro fichas y se cotejaron monto, proveedor/RUT, fecha, comprador, licitación y estado. La nueva ficha confirma 638-216-SE25 en CLP 25.938.092.545, «Enviada a proveedor» y ligada a 638-18-O125.[15] Las otras tres coinciden en sus montos y estado indicados arriba.[7][8][9] Ninguna ficha acredita por sí sola pago efectivo.
- **Proceso/expediente de la compra:** la ficha de 638-18-O125 la describe como licitación pública abierta de obra, suma alzada, presupuesto CLP 26.849.862.000, para obras de urbanización del PUH en Punta Arenas, con adjudicación indicada el 16-12-2025.[12] La Res. Ex. MINVU 1382, del 31-07-2025, nombra a la comisión técnica evaluadora y le encarga acta de apertura, selección y propuesta de adjudicación; no es el acto final de adjudicación ni muestra puntuaciones.[16] Se buscó por ID exacto y en el índice/colección de resoluciones SERVIU-Magallanes 2025; no se localizó allí el acto final o anexo de evaluación.[14] Consultas adicionales exactas `"638-18-O125" Constructora Salfa adjudicada oferta evaluación`, `site:documentos.minvu.cl "638-18-O125" "ADJUDÍCASE"`, `site:documentos.minvu.cl/server/api/core/bitstreams "ADJUDICA" "638-18-O125"` y `"RESOLUCIÓN EXENTA" "638-18-O125" adjudica` (04-10-2026) no devolvieron el acto; resultados con IDs parecidos correspondían a otros procesos.[17][18]
- **Identidad societaria / explicación alternativa:** la página CMF de 12 mayores accionistas de Constructora Salfa S.A. dice que no hay datos para el último período informado; la pestaña de directores/administradores también aparece «Sin Información».[13][11] Por tanto, el registro público consultado no resolvió qué participación exacta representa la etiqueta «SALFACORP» de la declaración. La explicación comercial más plausible sigue siendo una compra abierta de obras públicas a una constructora con actividad compatible, no una adjudicación identificada como intervención del titular.[3][12][15]
- **Búsqueda de refutación e índice de organismos:** consultas exactas por persona+sociedad/licitación, la Colección de Resoluciones SERVIU Magallanes 2025 y fichas alternativas de obras SERVIU consultadas por identificadores 638-5-O124 y 638-44-O125 (04-10-2026) no añadieron documento que conecte a Plaza con evaluación, adjudicación o administración del contrato.[14][17][18] Los dos últimos códigos identifican otras licitaciones, no evidencia del caso; las búsquedas web de coincidencias no se interpretan como prueba de ausencia de vínculos.
- **Ruta secundaria:** Todolicitaciones muestra una ficha del ID como adjudicado, pero su página accesible no expuso la adjudicación ni los anexos; se usa solo como pista y no como sustento del hecho.[21]

## Discrepancias, decisión y siguiente paso

La evidencia nueva cambia una cifra del caso ya publicado: la serie en la ventana de la participación declarada contiene cuatro órdenes, no tres.

La orden omitida es 638-216-SE25 por CLP 25.938.092.545, emitida el 16-12-2025 por SERVIU Magallanes y con estado «Enviada a proveedor».[12][15]

La suma corregida de CLP 34.277.418.870 corresponde a cuatro órdenes únicas; no es dinero probado como pagado ni ingreso personal.

**Decisión:** no proponer un caso nuevo ni una calificación jurídica.

Mantener `evidencia insuficiente` para una actualización editorial hasta una revisión independiente de las dos consultas y cotejo humano del caso publicado.

La conexión con el proveedor se apoya en el RUT societario exacto, pero la tenencia sigue siendo autodeclarada y no prueba intervención personal.[1][11][15]

**Acción concreta:** un revisor humano ajeno a esta corrida debe reejecutar ambas consultas y comprobar una vez cada OC en su ficha original.[7][8][9]

Si el resultado se confirma, recomendar a Rodrigo corregir el caso publicado; no crear un caso duplicado.

Si se desea atribuir un rol en la licitación, obtener y revisar el acto de adjudicación y anexos públicos; no inferirlo del nombramiento de la comisión evaluadora.[12][16]

Sin revisor humano independiente en esta corrida. Sin borrador de caso ni PR a `main`.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5124087
[3] https://salfacorp.com/en/unidades-de-negocio/ingenieria-y-construccion
[4] https://salfacorp.com/en/unidades-de-negocio
[7] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=5221-8-SE26
[8] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=829-23-SE26
[9] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=638-93-SE26
[11] https://cmfchile.cl/institucional/mercados/entidad.php?control=svs&grupo=&mercado=V&pestania=46&row=AAAxIgACgAAAD6IAAJ&rut=93659000&tipoentidad=RVSOC&vig=NV
[12] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=638-18-O125
[13] https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=93659000&grupo=&tipoentidad=RVSOC&row=AAATmjABrAAAGsIAAI&vig=NV&control=svs&pestania=5
[14] https://documentos.minvu.cl/collections/7d05c881-0d7e-4b07-bb65-f05af9b24c40
[15] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=638-216-SE25
[16] https://documentos.minvu.cl/bitstreams/ef62c77a-14d5-4604-81bc-0e8a04cd1b59/download
[17] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?qs=jb77jIdpHotfo6uaLV6UjQ%3D%3D
[18] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?qs=bd1qUWHYOn+IwfnXpPJgXg%3D%3D
[21] https://www.todolicitaciones.cl/licitacion/638-18-O125/const-macro-urbanizacion-puh-punta-arenas
[24] https://salfacorp.com/compania/reconocimientos

## Decisión editorial (2026-10-16): abierta

Descartada. Las cuatro órdenes de compra y su suma (CLP 34.277.418.870) coinciden con Mercado Público, pero la corrección empeora el caso. El 76% del nuevo total es la OC 638-216-SE25 (16-12-2025), anterior a la primera declaración que informa la tenencia (5109772, 10-03-2026), y la regla de ventana vigente no la cuenta. «Precede la asunción» también es engañoso: la declaración 5099047 ya lo registraba como abogado integrante con asunción el 01-03-2025. La declaración lista nemotécnicos bursátiles comprados el mismo día, y la CMF asigna «SALFACORP» a SalfaCorp S.A. (RUT 96.885.880-7): el RUT 93.659.000-4 declarado es probablemente un error de registro, así que no hay una pregunta pública que justifique ampliar la cifra. El borrador además eliminaba la explicación legítima e incluía metadatos internos.

— Editor de EstadoClaro. Criterio: [METODO_INVESTIGACION.md § Decisión editorial](https://github.com/rodrigooig/estadoclaro-casos/blob/investigacion/METODO_INVESTIGACION.md#decisi%C3%B3n-editorial).

**Seguimiento:** Revisar el caso publicado plaza-reveco-salfacorp por el mismo motivo. Si «SALFACORP» es la acción bursátil SalfaCorp S.A. (RUT 96.885.880-7) y el RUT 93.659.000-4 de Constructora Salfa S.A. es un error de registro del declarante, el cruce con las órdenes de compra no se sostiene. En ese caso corresponde una corrección o un retiro, redactado como probable error de registro. Verificar con la CMF y con declaraciones de otros declarantes que tengan SALFACORP.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/102

## Seguimiento del editor — evidencia nueva (2026-10-18)

- **Pregunta decisiva:** ¿la etiqueta «SALFACORP» identifica la acción bursátil de SalfaCorp S.A. o una participación en Constructora Salfa S.A.? Si la declaración contiene el ticker pero un RUT de otra sociedad, ¿es defendible el cruce con las órdenes del proveedor? Se confirma el uso del ticker por la CMF; la discrepancia del RUT junto a las declaraciones comparables hace probable un error de registro, pero no identifica el título subyacente ni demuestra la intención del declarante.
- **CMF, fuente primaria:** la ficha de emisores identifica a SALFACORP S.A. con RUT societario 96.885.880-7 y «Nombre con que transa en la Bolsa 2: SALFACORP» (consulta 2026-10-18): https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=96885880&tipoentidad=RVEMI&vig=VI&control=svs&pestania=1. La ficha distinta de otras sociedades identifica a CONSTRUCTORA SALFA S.A. con RUT 93.659.000-4 (consulta 2026-10-18): https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=93659000&tipoentidad=RVSOC&row=AABc8WABrAAAEaIAAJ&vig=NV&control=svs&pestania=1.
- **Declaraciones comparables, oro:** consulta `consultas/plaza-reveco-salfacorp-actualizacion-20261018T080516Z-1.sql`, reejecutada con `ec-gold-sql`; corte `meta.build_date=2026-10-16T22:31:27+00:00`. Entre las filas cuya etiqueta contiene SALFACORP, seis declarantes (28 filas) informan el RUT societario de la emisora listada; otras tres personas (13 filas) usan «SALFACORP S.A.» con ese RUT. La línea de Plaza aparece en dos declaraciones y es la única de estas filas cuya etiqueta exacta SALFACORP lleva el RUT societario de Constructora Salfa. Hay etiquetas SALFACORP con otros RUT, por lo que no se infiere que cualquier fila homónima sea necesariamente esa acción. La matriz completa del resultado está en el output de esta corrida; los nombres completos quedan en el registro local de evidencia, no se copian a la ficha.
- **Conclusión acotada:** la ficha CMF confirma que «SALFACORP» es el nombre de transacción de la emisora con RUT diferente del que figura en la declaración de Plaza; el oro muestra que el patrón usual en otras declaraciones con esa etiqueta usa el RUT de la emisora. La existencia de una fila aislada con RUT de Constructora Salfa no prueba participación en esa compañía ni permite trasladarle al declarante las ventas de ese proveedor. Resultado: la afirmación de que la tenencia declarada corresponde al proveedor del Estado no está sustentada y debe retirarse del caso publicado. El wording editorial, si se corrige, será «probable error de registro de RUT», no afirmación sobre intención ni juicio.
- **Límite/retorno:** la declaración pública muestra la etiqueta y RUT, no el certificado de custodia ni la identificación del título por el emisor. Esa evidencia no está disponible en las fuentes revisadas. No afirma titularidad efectiva o actuación personal, y no se repite búsqueda general.

## Cierre de la corrida — corrección lista (2026-10-22)

- **Pregunta decisiva:** ¿está sustentado identificar la acción declarada «SALFACORP» por Plaza Reveco como participación en Constructora Salfa S.A. y atribuirle las órdenes de esa sociedad?
- **Primarias reabiertas:** InfoProbidad, declaración 5124087, 24-09-2026: acción «SALFACORP», RUT 93.659.000-4, cantidad declarada 1.911, valor CLP 2.425.059, adquisición declarada 28-10-2025. CMF: SALFACORP es el nombre con que transa en bolsa SALFACORP S.A., RUT 96.885.880-7; otra ficha CMF identifica CONSTRUCTORA SALFA S.A., RUT 93.659.000-4. URLs: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5124087 ; https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=96885880&tipoentidad=RVEMI&vig=VI&control=svs&pestania=1 ; https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=93659000&tipoentidad=RVSOC&row=AABc8WABrAAAEaIAAJ&vig=NV&control=svs&pestania=1.
- **Verificación oro:** ejecutada de nuevo la consulta guardada `consultas/plaza-reveco-salfacorp-actualizacion-20261022T094655Z-1.sql` con `ec-gold-sql`; corte `meta.build_date=2026-10-21T19:32:15+00:00`. Resultado: seis registros agrupados; 28 filas/6 declarantes con etiqueta SALFACORP y RUT de SALFACORP S.A.; 13 filas/3 declarantes con SALFACORP S.A. y ese RUT; dos filas en dos declaraciones de Plaza con RUT 93.659.000; etiquetas con otros RUT existen. Esto refuerza que la línea de Plaza es discrepante en los registros consultados, pero no identifica el título ni demuestra intención de error.
- **Conclusión y límite:** el caso publicado empleó la coincidencia exacta del RUT de Constructora Salfa para conectar la declaración con sus órdenes. La declaración no prueba que el activo sea de esa constructora; CMF confirma que la etiqueta también coincide con el nombre bursátil de una sociedad con distinto RUT. No hay base para afirmar que Plaza tuviera acciones de Constructora Salfa ni para vincularle las órdenes de su proveedor. La explicación legítima más sólida es que el activo puede corresponder al valor bursátil SALFACORP y que el RUT de la línea esté equivocado; es una hipótesis, no un hecho confirmado. El borrador no afirma ni la hipótesis ni titularidad, intervención, beneficio o irregularidad.
- **Decisión:** corrección al caso publicado, no caso nuevo. Se propone retirar la atribución de las compras a la tenencia declarada y explicitar la discrepancia sin imputar error intencional. `borradores/plaza-reveco-salfacorp-actualizacion.md` reemplaza el caso en `casos/negocios_estado/plaza-reveco-salfacorp.md`. Citas primarias verificadas con `sources.py verify --evidence --min-coverage 0.5`: OK, 71% de cobertura; una advertencia estilística de más de tres citas fue inspeccionada.
- **Reabrir:** solo si aparece documentación primaria que identifique el instrumento subyacente o una rectificación de la declaración; no repetir la búsqueda general ni atribuir compras desde el RUT aislado.

## Decisión editorial (2026-10-22): publicado

Publicar como corrección: reabrí InfoProbidad 5124087, que registra «SALFACORP» con RUT 93.659.000-4, 1.911 unidades y CLP 2.425.059; CMF identifica el nombre bursátil SALFACORP con RUT 96.885.880-7. La ficha CMF de Constructora Salfa citada en el PR no cargó directamente; la discrepancia y el retiro de atribución son prudentes, sin afirmar qué título posee ni que hubo error intencional. Comparé con dos casos de la categoría: el texto conserva hechos, alcance y fuentes sin metadatos. La corrección mejora el caso publicado y no sostiene imputación alguna.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/171
