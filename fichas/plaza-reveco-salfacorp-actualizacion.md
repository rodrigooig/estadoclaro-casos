# Rafael Mauricio Plaza Reveco / Constructora Salfa: actualización de órdenes declaradas

## Reevaluación editorial vigente — 2026-10-08 (v3)

- **ID:** `plaza-reveco-salfacorp-actualizacion`
- **Estado vigente:** correccion lista.
- **Producto:** corrección del caso publicado `casos/negocios_estado/plaza-reveco-salfacorp.md`; no es caso nuevo.
- **Pregunta:** ¿el caso vigente contó una vez cada orden del proveedor cuyo RUT societario coincide con el de la línea declarada, dentro de las fechas declaradas?
- **Resultado medido:** declaración InfoProbidad 5124087 (24-09-2026) registra 1.911 acciones «SALFACORP», RUT 93.659.000-4, CLP 2.425.059, adquisición declarada 28-10-2025; consigna asunción del cargo 01-03-2026. Cuatro códigos OC únicos de ese RUT proveedor, 16-12-2025 a 01-07-2026; una orden (638-216-SE25, CLP 25.938.092.545) es anterior a la asunción y las otras tres posteriores. Suma: CLP 34.277.418.870 / UF 858.290,27, al corte gold `2026-10-08T05:08:05Z`; dos consultas actualizadas e independientes reejecutadas; cuatro fichas primarias reabiertas.
- **Cambio exacto:** sustituir archivo actual por `borradores/plaza-reveco-salfacorp-actualizacion.md`. Reemplaza el titular que dice «facturaba» y el párrafo inicial basado en declaración de marzo por una formulación de órdenes consignadas y la actualización del 24-09-2026; cambia el conteo de 3 / CLP 8.339.326.325 / UF 204.450,48 a 4 / CLP 34.277.418.870 / UF 858.290,27 e incorpora 638-216-SE25. El borrador explicita que esa OC precede a la asunción y las tres restantes son posteriores. Mantiene los estados OC y no afirma pago, titularidad económica, intervención, beneficio personal ni calificación legal.
- **Revisiones finales independientes:** `revisiones/plaza-reveco-salfacorp-actualizacion-20261008T120620Z-revisor-1.json` y `...-revisor-2.json`; ambas `approve` para SHA256 `aeb201e545b63ea76ecf8420a573ac71280c0fa97293b890b10a23ad23b49972`. La revisión adversarial previa pidió aclarar que la orden de mayor monto precede a la asunción; se incorporó esa distinción y ambos revisores aprobaron el texto final.
- **Próxima acción:** entregar como `correccion lista` con `ec-inv-pr`; verificar PR integrado en `investigacion` y PR de corrección abierto como borrador contra `main`. Rodrigo decide merge/publicación.
- **Incertidumbre remanente:** fuentes revisadas no determinan qué título exacto representa «SALFACORP», propiedad económica subyacente, pago de las órdenes o actuación individual de Plaza Reveco.

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
