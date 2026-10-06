# Georg Richard Wittig Parraguez / DUAOTEC SpA — seguimiento de prensa

## Reevaluación editorial vigente — 2026-10-06

- **ID:** `georg-wittig-duaotec-capj`
- **Estado vigente:** bloqueada por acceso
- **Producto a evaluar:** desenlace disciplinario pendiente.
- **Alcance:** reencuadre del método; sin nueva corroboración de cifras ni aprobación de caso.

La revisión de fuentes/SQL es automatizable. El antecedente pendiente es el acto o desenlace oficial de un procedimiento descrito como reservado por la fuente secundaria; no basta pedir que una persona valide. La reserva y sus límites siguen atribuidos a esa fuente histórica; esta migración no confirma el estado actual ni una participación personal.

**Próxima comprobación autónoma:** Retornar solo ante comunicación/acto oficial público sobre investigación CAPJ o antecedente público nuevo que vincule función y actuación concreta. La ficha cita reserva del procedimiento informada por prensa; no repetir búsquedas generales ni compras a organismos ajenos.

Aplicar METODO_INVESTIGACION.md v3. El historial de abajo no sustituye este estado vigente.

## Historial de evidencia y decisiones previas

- **ID:** `georg-wittig-duaotec-capj`
- **Estado:** `requiere humano` (2026-10-04). Nota de seguimiento y contraste; no es caso ni imputación.
- **Corte del artefacto:** `gold.duckdb`, `meta.build_date=2026-10-02T15:43:07+00:00`; consultas read-only ejecutadas con `ec-gold-sql` el 2026-10-04.
- **Identidad:** la declaración primaria ID 5095757 muestra el nombre completo GEORG RICHARD WITTIG PARRAGUEZ y el cargo «Jefe De Ciberriesgo» en la Corporación Administrativa del Poder Judicial (CAPJ); el panel del artefacto enlaza ese ID y nombre completo, sin usar ni reproducir RUT personal.[5]

## Mapa de afirmaciones

**Registro de intereses.** La declaración de 30-03-2025 registra a DUAOTEC SPA, RUT societario 76.624.276-6, como «ACCION», cantidad 1, valor libro CLP 2.000.000 y «Tiene Calidad de Controlador: false»; la fuente muestra cantidad y no un porcentaje de participación.[5] El cotejo con el oro devuelve la misma fila, y conserva el campo `is_controlling=false` (`consultas/georg-wittig-duaotec-capj-1.sql`).

La declaración indica que el cargo fue asumido el 27-11-2024, pero la regla documentada del cruce abre la ventana probatoria en la fecha de declaración y no retrocede hasta la fecha de asunción; por ello una compra anterior al 30-03-2025 no demuestra por sí sola que la acción ya se tenía entonces (`sql/090_declared_supply.sql`, §§ «When a declaration speaks for a person» y «Order by order»).[5]

**Compras públicas.** La consulta directa sobre `purchase_order` devuelve 28 órdenes de DUAOTEC entre 03-12-2024 y 23-07-2026, asociadas a 22 compradores; ninguna nombra a la CAPJ ni al Poder Judicial, y el resumen no marca órdenes de trato directo ni Compra Ágil (`consultas/georg-wittig-duaotec-capj-3.sql` y `-4.sql`). Este negativo se limita a los nombres de comprador del artefacto y a su corte; no demuestra que no existan otros vínculos o expedientes.

Como cotejo primario puntual, la OC 1754-1509-CM24 del Departamento de Salud de Parral aparece enviada el 03-12-2024, vía convenio marco, por UF 237,1500; la ficha identifica a DUAOTEC como proveedor.[10]

La OC 1057492-1803-CM25 del Hospital Luis Tisné, enviada el 28-02-2025, se titula «Adquisición del servicio de plataforma para contactabilidad omnicanal», identifica a DUAOTEC como proveedor y consigna total UF 252,9600.[11]

La OC 2147-43-CM25 del Hospital de Combarbalá, enviada el 07-02-2025, identifica a DUAOTEC como proveedor de «Gestor de filas y confirmación de horas», por UF 680,7600.[12]

El resumen temporal del cruce registra 13 órdenes dentro de la ventana abierta por la declaración y siete en el tramo adicional de un año; el SQL aclara que `after_1y` es una etiqueta respecto de esa ventana, no prueba de cese efectivo del cargo (`consultas/georg-wittig-duaotec-capj-2.sql`; `sql/090_declared_supply.sql`, líneas 157–169, 204–222).[5]

**Proceso de acceso al convenio.** La ficha oficial de Mercado Público identifica la licitación 2239-19-LR23 como una convocatoria abierta de servicios de desarrollo y mantención de software, servicios TI e infraestructura, adjudicada el 12-07-2024.[6] ChileCompra describe para ese convenio cotizaciones por formulario electrónico y competencia dentro del catálogo; esto es contexto para una explicación legítima, pero no acredita por sí solo cómo se evaluó cada compra posterior ni descarta intervención individual.[7]

El Poder Judicial describe a la CAPJ como administradora de recursos humanos, físicos, financieros y tecnológicos de los tribunales.[13]

La coincidencia temática entre el cargo de ciber-riesgo y una empresa declarada que provee software/servicios TI justifica una pregunta periodística, pero no acredita intervención en las compras.[5][6]

Las tres OCs primarias cotejadas corresponden a compradores distintos del empleador.[10][11][12]

## Rutas examinadas (2026-10-04)

1. **Identidad y declaración original:** página InfoProbidad ID 5095757 abierta y desplegada en navegador; cotejados nombre completo, cargo, fecha de asunción, sociedad, cantidad, valor libro y marca de controlador. El resumen web no bastaba; el detalle completo se abrió en el portal oficial.[5]
2. **Reproducción independiente en oro:** consulta por nombre completo + RUT societario (query 1) y consulta agregada de cruce (query 2); coincidieron en declaración, sociedad, cargo y marcas. Corte: 2026-10-02T15:43:07Z.
3. **Historial de órdenes y falsación de vínculo con el empleador:** consulta independiente sobre `purchase_order` por RUT societario (query 3) y conteo explícito de todas las órdenes por nombre de comprador, compradores, route, flags direct/ágil (query 4). Resultado acotado: 28 filas, 22 compradores, cero compradores con «CAPJ» o «Poder Judicial» en el nombre, cero direct awards/Compra Ágil; no se convirtió `same_institution=NULL` en una conclusión negativa.
4. **Documentos primarios de compras:** se abrieron fichas oficiales de tres órdenes identificadas en el oro; proveedor, comprador, fecha, mecanismo y UF se contrastaron directamente. Los tres ejemplos son de compradores ajenos a la CAPJ.[10][11][12]
5. **Índice del procedimiento y desenlace:** búsquedas web exactas por «Georg Richard Wittig Parraguez», «Richard Wittig Parraguez», «DUAOTEC», «Consejo Superior», «investigación disciplinaria» y 08-09-2025 en dominios del Poder Judicial/CAPJ; no apareció un acta o resolución oficial identificable del procedimiento ni una actualización sobre su resultado. La nota de Interferencia del 16-10-2025 informa que el Consejo Superior acordó iniciar una investigación el 08-09-2025 y que entonces era reservada y seguía en curso; es fuente periodística secundaria, no resolución ni hallazgo disciplinario.[1]
6. **Alternativa de contratación legítima:** la licitación 2239-19-LR23 fue de convocatoria abierta.[6]

ChileCompra dice que el convenio requiere cotización en formulario electrónico y competencia en el catálogo.[7]

Las órdenes de muestra son de compradores distintos.[10][11][12]

Esto es contexto plausible para recurrencia, no prueba de inocuidad ni de ausencia de gestión individual.
7. **Dedupe:** búsqueda exacta de nombre, empresa y RUT societario en `INDICE.md`, fichas disponibles y casos públicos: sin ficha previa ni caso publicado coincidente. La única referencia periodística localizada es la cobertura citada arriba; esta nota es seguimiento, no duplicado de caso publicado.

## Explicaciones, discrepancias y límites

- **Explicación legítima más plausible:** la sociedad habría quedado habilitada en un convenio marco abierto con catálogo/competencia.[6][7] Los registros revisados muestran compras de distintos hospitales y municipalidades, no de la CAPJ (`consultas/georg-wittig-duaotec-capj-3.sql` y `-4.sql`). Esto no permite saber quién solicitó, evaluó o recibió los servicios ni quién participó por la empresa en las cotizaciones de cada compra.
- **Discrepancia de porcentaje:** la nota de prensa caracteriza la participación como minoritaria y atribuye mayoría a su cónyuge; la declaración primaria expuesta informa «cantidad 1» y `false` en la casilla de controlador, pero no entrega un porcentaje. No se toma la caracterización de porcentaje como hecho verificado ni se publica información familiar que no sea necesaria.[1][5]
- **Límite temporal:** la declaración primaria es de 30-03-2025 y la primera OC de este corte es de 03-12-2024. El artefacto no atribuye la acción retrospectivamente a la fecha de asunción. Tampoco se interpreta `after_1y` como prueba de salida del cargo; el panel registra la declaración como actual al corte.[5]
- **Límite del procedimiento:** transcurrió más de un año desde la noticia, pero no se localizó una resolución pública ni se puede inferir si la investigación continuó, terminó, fue archivada o produjo una decisión. La fuente periodística informó reserva en octubre de 2025; no se accedió a documentación reservada ni se intentó eludir controles.[1]
- **Contraste adversarial:** el resultado que refutaría una lectura de ventas al empleador es la consulta por nombre de comprador, que devuelve cero compras CAPJ/Poder Judicial en las 28 filas. El elemento que sostiene que la pregunta merece seguimiento es el contenido profesional del convenio/categoría, no un acto de Wittig acreditado en una compra. No hubo revisor independiente en esta corrida.

**Decisión:** `requiere humano`; no preparar borrador de caso. La pista no cruza el gate porque no hay fuente primaria pública que acredite participación individual en una compra, intervención funcional, porcentaje accionarial ni desenlace oficial del procedimiento reportado. **Gestión concreta:** una revisión humana autorizada debe comprobar si existe una comunicación o acto público posterior que cierre/actualice la investigación; mientras siga reservado o no exista documento público, detener el seguimiento. No contactar a personas ni pedir acceso a antecedentes confidenciales.

## Consultas guardadas

- [`georg-wittig-duaotec-capj-1.sql`](../consultas/georg-wittig-duaotec-capj-1.sql): declaración y sociedad.
- [`georg-wittig-duaotec-capj-2.sql`](../consultas/georg-wittig-duaotec-capj-2.sql): agregado temporal persona–sociedad.
- [`georg-wittig-duaotec-capj-3.sql`](../consultas/georg-wittig-duaotec-capj-3.sql): órdenes completas del proveedor societario.
- [`georg-wittig-duaotec-capj-4.sql`](../consultas/georg-wittig-duaotec-capj-4.sql): conteo y refutación de comprador CAPJ/Poder Judicial.

## Sources

[1] https://interferencia.cl/articulos/corporacion-administrativa-del-poder-judicial-investiga-alto-funcionario-que-tiene — Interferencia: investigación disciplinaria y órdenes DUAOTEC
    > "Fue el Consejo Superior de la CAPJ el que acordó, el 8 de septiembre de 2025, iniciar esta investigación disciplinaria en contra de Wittig"
    > "Pero el procedimiento es reservado, por lo que no pudieron entregar mayores antecedentes sobre sobre las consultas realizadas por nuestro medio."
[5] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5095757 — InfoProbidad declaración ID 5095757
    > "Asume el cargo: 27-11-2024"
    > "Nombre o Razón Social DUAOTEC SPA"
    > "Cantidad / Porcentaje 1"
    > "Valor Corriente en plazo o Valor Libro 2.000.000"
    > "Tiene Calidad de Controlador false"
    > "Declaración completa de GEORG RICHARD WITTIG PARRAGUEZ"
    > "Cargo o función Jefe De Ciberriesgo"
    > "30-03-2025 Primera Declaración (Por Asunción De Cargo)"
[6] https://www.mercadopublico.cl/fichaLicitacion.html?idLicitacion=2239-19-LR23 — Mercado Público ficha licitación 2239-19-LR23
    > "Fecha de Adjudicación:12-07-2024 17:22:34"
    > "Licitación ID: 2239-19-LR23"
    > "Desarrollo y mantención de software, servicios profesionales TI e infraestructura como servicio."
    > "Tipo de convocatoria: ABIERTO"
[7] https://www.chilecompra.cl/2024/01/participa-de-la-licitacion-publica-de-convenio-marco-de-servicios-de-desarrollo-y-mantencion-de-software-servicios-profesionales-ti-e-infraestructura — ChileCompra convocatoria convenio marco 2239-19-LR23
    > "El Convenio establece la obligación de cotizar vía formulario electrónico, en un proceso competitivo en la operación del catálogo, permitiendo obtener mejores precios y mayor transparencia de los procesos."
[10] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1754-1509-CM24 — Mercado Público OC 1754-1509-CM24
    > "Fecha de Envío | 03-12-2024"
    > "TOTAL OC | UF 237,1500"
    > "Unidad de Compra | Departamento de Salud Parral"
    > "Proveedor | DUAOTEC SPA"
    > "Número de la Orden de Compra | 1754-1509-CM24"
    > "Orden de Compra Proveniente de convenio marco"
[11] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1057492-1803-CM25 — Mercado Público OC 1057492-1803-CM25
    > "Nombre de la Orden de Compra | ADQUISICIÓN DEL SERVICIO DE PLATAFORMA PARA CONTACTABILIDAD OMNICANAL"
    > "TOTAL OC | UF 252,9600"
    > "Unidad de Compra | HOSPITAL ORIENTE DR LUIS TISNE BROUSSE"
    > "Proveedor | DUAOTEC SPA"
    > "Fecha de Envío | 28-02-2025"
[12] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2147-43-CM25 — Mercado Público OC 2147-43-CM25
    > "TOTAL OC | UF 680,7600"
    > "Unidad de Compra | Hospital Combarbalá"
    > "Nombre de la Orden de Compra | Gestor de filas y confirmación de horas"
    > "Proveedor | DUAOTEC SPA"
    > "Fecha de Envío | 07-02-2025"
[13] https://www.pjud.cl/post/que-es-capj — Poder Judicial: qué es la CAPJ
    > "La Corporación Administrativa del Poder Judicial (CAPJ) es una institución al servicio de los tribunales de justicia, administrando los recursos humanos, físicos, financieros y tecnológicos del Poder Judicial."
