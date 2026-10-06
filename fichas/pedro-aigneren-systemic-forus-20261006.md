# Pedro Roberto Aigneren Ríos — acciones de Forus y actividad de consultoría declarada

- **ID:** `pedro-aigneren-systemic-forus-20261006`
- **Categoría:** compras/relaciones con el Estado; actividades/cargos/temporalidad; patrimonio e intereses.
- **Estado:** evidencia insuficiente; no preparar caso.
- **Revisión:** 2026-10-06 UTC.
- **Corte del oro:** `meta.build_date=2026-10-06T15:56:08+00:00`; copia local sin cambios según Script Output; consultas read-only mediante `ec-gold-sql`.

## Decisión breve

La declaración de 31-05-2023 identifica a Pedro Roberto Aigneren Ríos como integrante del Panel Técnico de Concesiones y consigna actividad remunerada de consultor para Systemic del Ltda.; el oro registra una participación controladora de 90% en Inversiones e Inmobiliaria Systemic del Ltda., adquirida el 29-06-2006.[1][2][3] En el oro no aparecen órdenes de compra para el RUT societario declarado ni para la variante de nombre consultada, en los registros disponibles desde 2020; esto no cubre otros contratos, pagos o relaciones no reflejados en órdenes de compra.

La misma declaración registra 7.200 acciones de Forus, sin calidad de controlador, adquiridas el 04-11-2010 y valorizadas allí en CLP 9.720.000.[1]

Forus informa que sus acciones cotizan en las bolsas de Santiago y Electrónica, y que un grupo familiar controlaba 68,3% al 31-12-2025.[9]

El oro arroja 49 órdenes de la compañía durante la ventana asociada al cargo, tres marcadas `same_institution`; la base clasifica la compañía como ampliamente difundida y no ofrece filas en `declared_supply_order` que individualicen esas órdenes con él (`consultas/pedro-aigneren-systemic-forus-20261006-c.sql`).

Al desglosar las compras de Forus al MOP/DGA, hay dos adquisiciones ágiles de equipos de protección UV del 11-11-2022.[6][7]

La tercera orden, del 27-11-2023, deriva de una licitación pública para equipos de protección personal de funcionarios de terreno.[8][15]

La cifra agregada del panel corresponde a actividad del proveedor FORUS S A, no a ventas personales de Aigneren.

**Decisión editorial:** no preparar caso. Hay un interés declarado y compras de una compañía cotizada a una unidad del organismo que aparece en la declaración, pero los registros revisados no vinculan a Aigneren con solicitud, especificación, evaluación, adjudicación, administración o recepción de esos suministros. El expediente de la licitación describe prendas y equipos de seguridad para trabajadores de terreno de la Dirección General de Aguas; el vínculo funcional con la competencia técnica sobre discrepancias de concesiones no está probado. La lectura alternativa más plausible para el indicador de Forus es una tenencia accionaria minoritaria declarada en una compañía cuyas acciones se transan públicamente, junto con compras ordinarias de equipamiento de trabajo por la DGA. Esto no determina si hubo cotizaciones suficientes ni acredita la actuación de Aigneren en la compra.

## Mapa de afirmaciones

| Afirmación | Evidencia revisada | Resultado | Incertidumbre |
|---|---|---|---|
| Identidad y rol | Declaración InfoProbidad ID 1048706 y consulta SQL exacta | Nombre completo y cargo de integrante del Panel en snapshot 31-05-2023; la ficha oficial de la DGC/MOP también lo nombra entre sus integrantes en una noticia institucional cuyo texto no indica año de publicación.[1][2] | No se infiere vigencia actual desde una declaración de 2023 ni desde una noticia sin fecha explícita. |
| Interés ligado a concesiones | Declaración ID 1048706; página oficial sobre competencia del Panel | La declaración consigna consultoría remunerada en Systemic del Ltda. y 90% de participación en Inversiones e Inmobiliaria Systemic del Ltda.; la competencia institucional del Panel incluye discrepancias técnicas o económicas en ejecución de concesiones.[1][3] | La ficha no detalla los clientes, encargos, facturación ni trabajos concretos de Systemic; no se halló nexo documental con una discrepancia particular. |
| Órdenes de Systemic | `consultas/...-d.sql` por RUT societario exacto y `...-e.sql` por nombre parcial en `purchase_order` | Ambas consultas devuelven 0 filas para registros de órdenes de compra desde 2020 hasta el corte del oro. | No descarta contratos, convenios, subcontratos, pagos u operaciones fuera de la tabla de órdenes ni compras anteriores a 2020. |
| Acciones de Forus | Declaración ID 1048706; información corporativa de Forus | 7.200 acciones declaradas, no controladoras, adquisición informada en 2010; la empresa informa cotización bursátil y grupo controlador familiar de 68,3% al 31-12-2025.[1][9] | El snapshot acredita la tenencia al 31-05-2023, no su permanencia posterior. No se conoce desde las fuentes vistas si el titular participó en decisiones de la empresa. |
| Compras Forus–MOP/DGA | `consultas/...-f.sql`, tres fichas primarias de OC y ficha de licitación 5617-9-LE23 | Tres códigos únicos al proveedor por RUT 86.963.200-7, comprador Ministerio de Obras Públicas/Dirección General de Aguas - XIV Región de Los Ríos: 5617-41-AG22 y 5617-43-AG22 (11-11-2022), y 5617-48-SE23 (27-11-2023).[6][7][8] Los dos primeros son adquisiciones ≤30 UTM que indican compra ágil con tres cotizaciones. El tercero deriva de una licitación pública abierta. | La unidad de compra es DGA Los Ríos, no el Panel Técnico. No se revisaron anexos descargables ni se halló documento que nombre a Aigneren en la preparación, evaluación o recepción. |
| Pertinencia: compras ágiles de 2022 | Fichas 5617-41-AG22 y 5617-43-AG22 | Las órdenes describen sombrero de protección UV y camisas filtro UV.[6][7] | No acreditan intervención de Aigneren. |
| Pertinencia: licitación 2023 | OC 5617-48-SE23 y licitación 5617-9-LE23 | La ficha de OC describe primera capa; las bases dicen que la licitación fue para equipos de protección personal de funcionarios de terreno de la DGA en Los Ríos.[8][15] | El vínculo institucional no prueba rol personal ni relación con la función del Panel. |

## Rutas examinadas — 2026-10-06 UTC

1. **Minería amplia del oro.** Se ejecutó una pantalla actual de participaciones declaradas y compras con `same_institution>0`, acotada a sociedades con hasta diez declarantes y no marcadas `is_widely_held` (`...-a.sql`). De diez filas devueltas, no emergió Aigneren; las entradas más visibles eran pistas indexadas previamente. Una segunda extracción por nombre completo de las empresas y el nombre del declarante (`...-b.sql`) recuperó nueve activos declarados, incluida Systemic y Forus.
2. **Interés funcional / origen de los datos.** Se leyó la declaración primaria ID 1048706 completa. La página indica cargo y fecha, la actividad de consultor, nombre y RUT societario, y participación controladora de 90%; no se usó LinkedIn como fuente de hechos. La página oficial del Panel describe su competencia en discrepancias de concesiones, y la DGC/MOP nombra a Aigneren en la composición del Panel en una publicación institucional.[1][2][3]
3. **Verificación societaria por RUT y nombre.** El RUT societario declarado para Systemic (`76.577.870-0`) se consultó en `purchase_order` por sus dígitos base; resultado 0 filas (`...-d.sql`). Una búsqueda alternativa independiente por `supplier_name ILIKE '%SYSTEMIC%'` también devolvió 0 (`...-e.sql`). Ambos resultados se limitan al conjunto oro de OCs desde 2020.
4. **Matriz de compras de las participaciones.** `...-c.sql` devuelve tres empresas emparejadas con compras durante la ventana del cargo: LTM (124 declarantes, ampliamente difundida), Forus (3 declarantes, ampliamente difundida) y Cencosud (6 declarantes, ampliamente difundida). Solo Forus tiene tres coincidencias de organismo; el contador de la matriz no permite atribuir ventas al declarante. Se consultó además `declared_supply_order` por sus señales de compra individualizada; la empresa Forus no arrojó filas para el titular, consistente con tratar su tráfico como actividad de empresa ampliamente difundida y no como negocio personal.
5. **Mercado Público primario e hipótesis de adquisición ordinaria.** Se abrieron las fichas oficiales 5617-41-AG22, 5617-43-AG22 y 5617-48-SE23.

Las dos primeras identifican a la unidad DGA Los Ríos, al mismo RUT proveedor de la declaración, prendas de protección UV y compra ágil ≤30 UTM.[6][7]

La tercera enlaza la licitación abierta 5617-9-LE23, especifica primera capa y la misma unidad compradora.[8]

La ficha de la licitación detalla equipos de protección personal para funcionarios de terreno de la DGA en Los Ríos y pondera precio (55%), plazo de entrega (40%) y requisitos formales (5%).[15] Esto apoya una explicación ordinaria del objeto, pero no sustituye la revisión de ofertas ni identifica a quien decidió.
6. **Contraste corporativo / refutación del cruce amplio.** Forus informa cotización en las bolsas de Santiago y Electrónica, y grupo familiar con 68,3% al 31-12-2025; la declaración describe acciones sin control adquiridas en 2010.[1][9] La búsqueda exacta por Systemic no recuperó fuente primaria sobre adjudicaciones; búsquedas web del 06-10-2026 por el nombre completo en el Panel, por Systemic en Panel/DGC/MOP, por el RUT societario y por el nombre más “inhabilidad” no devolvieron un documento oficial pertinente. Ese negativo no demuestra que no existan otros antecedentes.
7. **Fuentes secundarias como pistas, no evidencia.** Consultas web exactas recuperaron resultados ajenos o perfiles profesionales secundarios; no se usan para afirmar los clientes o funciones de Systemic. La explicación se contrasta con declaración, competencia oficial del Panel y fuentes corporativas de Forus.[1][3][9]

Las compras y el objeto de la licitación se cotejaron en fichas primarias.[6][8][15]

## Gate, discrepancias y próxima acción

- **Dato:** snapshot de 2023 con cargo de integrante del Panel, consultoría remunerada declarada y participación controladora en Systemic; 7.200 acciones no controladoras declaradas en Forus.[1]
- **Hecho derivado:** el proveedor cotizado Forus tiene tres órdenes a la Dirección General de Aguas - XIV Región de Los Ríos, incluidas dos compras ágiles y una compra derivada de licitación abierta.[6][7][8]

El sistema de cruce agrega actividad de proveedor y no la atribuye como ventas personales; Forus informa que sus acciones cotizan públicamente.[9]
- **Inferencia limitada:** podría existir interés público en explicar la coexistencia de un cargo técnico sobre controversias de concesiones y una consultoría declarada en el sector; con las fuentes vistas no se establece cliente, caso, incompatibilidad ni intervención concreta.
- **Explicación alternativa:** la consultoría aparece como actividad declarada de larga data; el interés Forus es una tenencia accionaria minoritaria en empresa que cotiza públicamente, y los objetos de las OCs revisadas son vestuario/equipos de seguridad para personal de terreno, no asesorías de concesión.[1][9][15]
- **Errores prevenidos:** no se atribuyen a Aigneren las compras agregadas de Forus; no se equipara la DGA con el Panel Técnico como unidad compradora; no se interpreta el rótulo automático `main_rubro` contra lo que muestran las fichas; se cuentan códigos únicos y se conserva el monto publicado en la fuente si se menciona. RUT personal omitido.
- **Gate:** identidad corroborada; participación y órdenes reproducibles con consulta y fuentes oficiales; la materialidad es acotada y no se acreditó vínculo funcional o intervención en las compras; la lectura de ventas personales falla al contrastar la tenencia minoritaria y el carácter ampliamente difundido de Forus. Evidencia insuficiente para borrador.
- **Revisión independiente:** no hubo segundo revisor en esta corrida. Las consultas exactas del oro sí separan la actividad de empresa de una asociación transaccional individual.
- **Próxima acción:** no repetir búsquedas generales de nombre/empresa. Reabrir solo si aparece documento oficial sobre un encargo de Systemic a una parte de una discrepancia concreta del Panel, una recomendación que identifique participación/inhabilidad del integrante, o evidencia primaria que nombre a Aigneren en la preparación o recepción de las órdenes DGA. En otro caso, mantener pista cerrada sin atribución personal.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1048706
[2] https://concesiones.mop.gob.cl/panel-tecnico-de-concesiones-suma-nuevo-integrante
[3] https://www.panelconcesiones.cl/pagina/composicion
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=5617-43-AG22
[7] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=5617-41-AG22
[8] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=5617-48-SE23
[9] https://www.forus.cl/Spanish/gobierno-corporativo/estructura-de-propiedad
[15] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?qs=4%2Fm9fCy0zk73mlE%2FkHzE7g%3D%3D
