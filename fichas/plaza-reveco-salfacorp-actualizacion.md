# Rafael Mauricio Plaza Reveco / Constructora Salfa: actualización de órdenes declaradas

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

La CMF identifica la razón social CONSTRUCTORA SALFA S.A. con RUT 93.659.000-4, igual al RUT de la línea que la declaración etiqueta «SALFACORP».[1][2]

El sitio oficial de SalfaCorp describe su unidad de ingeniería y construcción; ese contexto es compatible con la obra, pero no acredita a los accionistas de Constructora Salfa S.A.[3][4]

La participación y sus datos son autodeclarados; las fuentes no establecen control, intervención del titular, beneficio personal derivado de la compra ni calificación jurídica.[1][2][15]

## Rutas y consultas de esta pasada (2026-10-04)

- **InfoProbidad:** búsqueda por nombre completo y declaración vigente ID 5124087; se cotejaron fecha, sociedad, RUT societario, cantidad, valor, adquisición y marca de no-control.[1]
- **EstadoClaro:** se ejecutaron dos SQL independientes contra el oro solo mediante `ec-gold-sql`; uno lista activo y órdenes por RUT, otro cuenta códigos únicos y suma montos.
- **ChileCompra (1/2):** se extrajeron las fichas originales de 638-216-SE25 y 5221-8-SE26, cotejando su proveedor, monto y estado.[7][15]
- **ChileCompra (2/2):** también se verificaron las fichas 829-23-SE26 y 638-93-SE26, y se distinguieron los estados «Enviada a proveedor» y «Aceptada».[8][9]

- **Licitación y organismo comprador:** consulta exacta por 638-18-O125 en Mercado Público y cotejo con la resolución pública MINVU que nombra la comisión técnica.[12][16]
- **CMF:** consulta por RUT 93.659.000; la ficha oficial entrega la razón social Constructora Salfa S.A.[2]
- **SalfaCorp:** se revisaron páginas institucionales de unidades de negocio para contrastar el objeto constructor de la obra.[3][4]
- **Poder Judicial / refutación:** búsquedas web exactas `"Rafael Plaza Reveco" "Constructora Salfa"`, `"Salfacorp" "Rafael Plaza Reveco" sentencia` y nombre completo + `pjud.cl` ejecutadas el 2026-10-04. No apareció en esos resultados indexados una relación verificable de Plaza con esta licitación o con un juicio de Salfa.[unverified] El resultado negativo se limita a esas búsquedas indexadas y no prueba ausencia de causas o vínculos.
- **Documentos pendientes de la ruta licitatoria:** la ficha pública acredita el estado adjudicado y la fecha, y el acta MINVU acredita la designación de comisión; no se localizó en esta pasada la resolución de adjudicación con puntuaciones/anexos.[12][16]

## Discrepancias, decisión y siguiente paso

La evidencia nueva cambia una cifra del caso ya publicado: la serie en la ventana de la participación declarada contiene cuatro órdenes, no tres.

La orden omitida es 638-216-SE25 por CLP 25.938.092.545, emitida el 16-12-2025 por SERVIU Magallanes y con estado «Enviada a proveedor».[12][15]

La suma corregida de CLP 34.277.418.870 corresponde a cuatro órdenes únicas; no es dinero probado como pagado ni ingreso personal.

**Decisión:** no proponer un caso nuevo ni una calificación jurídica.

Mantener `evidencia insuficiente` para una actualización editorial hasta una revisión independiente de las dos consultas y cotejo humano del caso publicado.

La conexión con el proveedor se apoya en el RUT societario exacto, pero la tenencia sigue siendo autodeclarada y no prueba intervención personal.[1][2][15]

**Acción concreta:** un revisor humano ajeno a esta corrida debe reejecutar ambas consultas y comprobar una vez cada OC en su ficha original.[7][8][9]

Si el resultado se confirma, recomendar a Rodrigo corregir el caso publicado; no crear un caso duplicado.

Si se desea atribuir un rol en la licitación, obtener y revisar el acto de adjudicación y anexos públicos; no inferirlo del nombramiento de la comisión evaluadora.[12][16]

Sin revisor humano independiente en esta corrida. Sin borrador de caso ni PR a `main`.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5124087 — InfoProbidad declaración Rafael Plaza ID 5124087
    > "| Nombre o Razón Social | SALFACORP |"
    > "24-09-2026 Actualización Periódica (Marzo)"
    > "| R.U.T. | 93.659.000-4 |"
[2] https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=93659000&grupo=&tipoentidad=RVSOC&row=AAATmjABrAAAGsIAAI&vig=NV&control=svs&pestania=47 — CMF Constructora Salfa S.A.
    > "Razón Social: CONSTRUCTORA SALFA S.A. RUT: 93659000-4"
[3] https://salfacorp.com/en/unidades-de-negocio/ingenieria-y-construccion — SalfaCorp: Ingeniería y Construcción
    > "civil works, and housing business."
[4] https://salfacorp.com/en/unidades-de-negocio — SalfaCorp: unidades de negocio
    > "Through its Business Units, the Company encompasses various business segments."
[7] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=5221-8-SE26 — Mercado Público OC 5221-8-SE26
    > "TOTAL OC | $ 99.781.535"
[8] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=829-23-SE26 — Mercado Público OC 829-23-SE26
    > "TOTAL OC | $ 5.633.725.103"
[9] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=638-93-SE26 — Mercado Público OC 638-93-SE26
    > "TOTAL OC | $ 2.605.819.687"
[12] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=638-18-O125 — Mercado Público licitación 638-18-O125
    > "Fecha de Adjudicación: 16-12-2025 8:59:23"
    > "Tipo de licitación: Licitación Pública de Obra"
[15] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=638-216-SE25 — Mercado Público OC 638-216-SE25
    > "Fecha de Envío | 16-12-2025"
    > "TOTAL OC | $ 25.938.092.545"
[16] https://documentos.minvu.cl/bitstreams/ef62c77a-14d5-4604-81bc-0e8a04cd1b59/download — Resolución comisión evaluadora licitación 638-18-O125
    > "RESOLUCIÓN EXENTA Nº 1382"
