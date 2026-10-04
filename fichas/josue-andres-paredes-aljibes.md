# Revisión editorial — Josué Andrés Paredes Madariaga y compras de camiones aljibe

> **Ficha de investigación; no es un caso publicable ni una imputación.** Estado: **evidencia insuficiente**. Última revisión: 2026-10-04 UTC. Se redacta el RUT personal en texto y fuentes citadas.

## §0. Resultado ejecutivo

La declaración de InfoProbidad presentada el 01-04-2026 identifica a Josué Andrés Paredes Madariaga como concejal de la Municipalidad de Galvarino y consigna su asunción el 06-12-2024.[1] La ficha registra una participación titulada «ACCION», a su propio nombre, por 100%, con calidad de controlador y fecha de adquisición 15-09-2011; los campos de varias actividades aparecen reservados.[1]

El cruce EstadoClaro, con corte `meta.build_date = 2026-10-02T15:43:07+00:00`, devuelve **11 órdenes únicas** asociadas a la persona como proveedor entre 28-02-2025 y 10-09-2026, por CLP 115.240.000 en la moneda publicada.[consultas/josue-andres-paredes-aljibes-2.sql] Una verificación independiente contra `purchase_order` las distribuye en diez órdenes de la Delegación Presidencial Regional de La Araucanía (CLP 105.260.000) y una de la Municipalidad de Lautaro (CLP 9.980.000); no hay comprador Municipalidad de Galvarino en estas once filas.[consultas/josue-andres-paredes-aljibes-3.sql][6] `same_institution = NULL` en las compras de la Delegación significa que no se pudo determinar, no que se estableciera una institución distinta.

La orden más temprana del conjunto fue enviada el 28-02-2025 por la Delegación y tiene como objeto abastecer de agua potable a Galvarino durante octubre-diciembre de 2024; por tanto, la fecha de la orden es posterior a su asunción, pero el período de servicio descrito es anterior.[5]
Las órdenes de la Delegación se vinculan a procesos abiertos de camiones aljibe y las páginas oficiales identifican al proveedor en los extremos cotejados.[5][19]
La licitación regional examinada incluye Galvarino junto con otras comunas.[21]

Hay también una licitación de Galvarino adjudicada a la misma persona el 17-05-2023, por CLP 21.000.000 para arrendar un camión aljibe por cinco meses; ocurrió antes de que asumiera como concejal.[30][32][1] Es contexto de una relación contractual previa y de continuidad del servicio, no prueba de una intervención en compras durante el cargo.

**Decisión:** no preparar borrador de caso. La relación de interés público es que un concejal de Galvarino aparece como proveedor de servicios de agua para la comuna mediante compras de una Delegación regional; sin embargo, las compras contemporáneas no son de su municipalidad, la más antigua de Galvarino antecede al cargo, y no se obtuvo evidencia de su participación en decisiones, evaluaciones o administración de esos procesos. La licitación regional incluye varias comunas, entre ellas Galvarino; la ficha examinada confirma esa cobertura.[21] La información oficial de la Delegación describe necesidades de agua potable rural en Galvarino y localidades vecinas, explicación legítima plausible que reduce la fuerza de una lectura centrada solo en coincidencia territorial.[36] El artículo 35 quáter regula contratos con personal del organismo comprador y exige analizar con precisión quién contrató y el rol pertinente; esta ficha no emite una conclusión jurídica.[10]

## 1. Identidad, declaración y origen de la pista

**Medido en EstadoClaro:** consulta 1, ejecutada sobre el Gold indicado arriba, devuelve cinco snapshots con coincidencia del nombre completo. Cuatro declaraciones entre 2025-01-05 y 2026-04-01 nombran Municipalidad de Galvarino y el cargo de concejal. En los cuatro registros, la participación aparece con cantidad 100 y control; la ficha de InfoProbidad muestra título «ACCIÓN», el mismo nombre completo y adquisición en 2011.[consultas/josue-andres-paredes-aljibes-1.sql][1]

El registro societario está a nombre de la propia persona y su proveedor en Mercado Público aparece como persona natural con el mismo nombre. No lo presento como sociedad distinta ni deduzco una estructura empresarial adicional. Se omite el RUT personal incluso cuando las fuentes oficiales lo muestran.[1][5][19]

## 2. Hechos reproducidos en compras públicas

**Consulta 2:** 11 filas canónicas de `declared_supply_order`, con `is_primary_for_person = true`, desde 28-02-2025 hasta 10-09-2026. No se sumaron filas espejo de snapshots; todas las 11 figuran como procedentes de licitación pública. Suman CLP 115.240.000 según la columna nominal del artefacto, sin actualización por inflación.[consultas/josue-andres-paredes-aljibes-2.sql]

**Consulta independiente 3:** se consultaron los once códigos en `purchase_order`, agrupados por comprador y contando códigos distintos. Resultado: 10 OCs para la Delegación Presidencial Regional de La Araucanía por CLP 105.260.000 y una OC para I. Municipalidad de Lautaro por CLP 9.980.000. La OC de Lautaro describe arriendo de retroexcavadora y no abastecimiento de agua; separarla evita atribuirle erróneamente el objeto de los demás registros.[consultas/josue-andres-paredes-aljibes-3.sql][6]

**Cotejo primario de extremos y muestra de detalle:** la OC 1202511-1830-SE25, enviada 28-02-2025, asigna al proveedor un servicio de abastecimiento de agua potable de Galvarino para octubre-diciembre de 2024 y consigna total CLP 12.600.000.[5]
La OC 1202511-625-SE26, enviada 10-09-2026, corresponde al servicio de camión aljibe en Galvarino para julio-agosto de 2026 y totaliza CLP 9.860.000.[19]
La compra única de Lautaro, OC 4179-1251-SE25, tiene total CLP 9.980.000 y objeto distinto.[6]
Las once OCs fueron consultadas por código en páginas de Mercado Público; las fichas citadas sirven de cotejo detallado de las órdenes de la Delegación al inicio y al final del período y de la orden separada de Lautaro.[5][6][19]

**Origen histórico y secuencia:** el proceso municipal 4170-52-LE23 fue licitación pública abierta para el arriendo de un camión aljibe destinado a distribuir agua potable en sectores rurales de Galvarino; el API OCDS oficial registra una adjudicación de CLP 21.000.000 a la misma persona el 17-05-2023.[30][32]
La fecha es anterior a la asunción consignada el 06-12-2024.[1]
La licitación regional 1202511-6-LE24 nombra 17 comunas, entre ellas Galvarino, y el comprador es la Delegación Presidencial Regional de La Araucanía.[21]
Se examinaron también las fichas oficiales 1202511-10-LE25 y 1202511-1-LE26; sus endpoints OCDS de award devolvieron error 500 para la primera y error HTTP para la segunda. Se usaron las fichas y órdenes públicas, sin eludir controles.

## 3. Mapa de afirmaciones y evidencia

- **Identidad y cargo.** Fuente primaria requerida: declaración enlazada y registro municipal del cargo. InfoProbidad ID 1772124 y la página municipal oficial de Galvarino se consultaron para corroborar nombre y cargo; InfoProbidad indica la fecha de asunción 06-12-2024.[1] No se atribuyen resultados por coincidencia parcial de nombre.
- **Participación declarada.** La declaración completa muestra acción/100%/controlador desde 2011 a nombre de la persona. La fuente de compra también la muestra directamente como proveedor individual; el RUT se usa solo como dato interno de cotejo y no se publica.[1][5][19]
- **Magnitud y conteo de compras.** Consulta reproducible de órdenes principales más agregación independiente por códigos únicos en `purchase_order`; 11 OCs, CLP 115.240.000, desglosadas por comprador, sin duplicar filas repetidas por declaración/snapshot.[consultas/josue-andres-paredes-aljibes-2.sql][consultas/josue-andres-paredes-aljibes-3.sql]
- **Naturaleza del servicio.** Las fichas oficiales consultadas identifican camiones aljibe/abastecimiento de agua en Galvarino, con licitación regional abierta y OCs emitidas al proveedor.[5][19][21]
La licitación municipal de 2023 también fue pública y para agua potable.[30][32]
- **Vínculo con el organismo propio.** Entre las once órdenes consultadas, diez nombran a la Delegación Regional y una a Lautaro; ninguna nombra a Municipalidad de Galvarino. El dato es acotado a esas órdenes y al Gold con corte indicado, no demuestra que no haya otras compras fuera del rango o universo.[consultas/josue-andres-paredes-aljibes-2.sql][consultas/josue-andres-paredes-aljibes-3.sql]
- **Rol individual/intervención.** Las fuentes y campos consultados acreditan participación como proveedor/adjudicatario, no su papel en autorización, evaluación, administración o recepción por algún órgano. No se localizó ese vínculo en las fuentes públicas accesibles examinadas. Esto es ausencia de evidencia en esta pasada, no prueba de ausencia de intervención.

## 4. Pasada amplia (2026-10-04 UTC): rutas, resultados y límites

1. **Declaración primaria / trayectoria temporal:** consulté InfoProbidad ID 1772124 completa y contrasté cinco snapshots de `declaration`/`company` por nombre exacto. Confirma cargo municipal, asunción, participación declarada desde 2011 y control. Actividades profesionales y parte del detalle están reservados; no sirven para identificar una función en compras.[1][consultas/josue-andres-paredes-aljibes-1.sql]
2. **Licitación municipal anterior al cargo:** revisé la ficha de Mercado Público 4170-52-LE23 y el paquete OCDS tender/award del mismo código; el segundo registra adjudicatario, importe, fecha y objeto. Búsqueda exacta por código; evidencia que el contrato de Galvarino señalado como antecedente se adjudicó en 2023, antes del período de concejal.[30][32]
3. **Órdenes actuales y deduplicación:** revisé las once OCs por código en Mercado Público, la tabla `declared_supply_order` y, de forma independiente, `purchase_order`. Conteo por código distinto y suma por comprador, no por número de filas puente. Las fichas 1830 y 625 describen los períodos de servicio inicial y final; la 4179-1251 de Lautaro tiene otro producto y comprador.[5][6][19]
4. **Licitaciones regionales / catálogos públicos:** revisé las fichas 1202511-6-LE23, 1202511-6-LE24, 1202511-10-LE25, 1202511-1-LE26, 4179-23-LE25 y la ruta API OCDS award/tender. Las primeras cuatro cubren licitaciones de aljibes; los IDs actuales tienen compradores distintos de Galvarino. OCDS devolvió 500 en 1202511-10-LE25 y fallo HTTP para 1202511-1-LE26; se contrastaron las páginas directas de licitación y las OCs asociadas. La secundaria TodoLicitaciones se usó como pista, no como conteo probatorio.
5. **Organismo, cargo y normativa:** consulté la página oficial municipal del Concejo, la lista de cargos de Ley del Lobby y la nota de ChileCompra sobre el artículo 35 quáter; esta última resume el criterio de Contraloría.[10] La diferencia entre municipio y Delegación se consigna como contexto fáctico, no como opinión legal.
6. **Explicación pública alternativa:** consulté las licitaciones abiertas y fuentes de la Delegación sobre el proyecto de agua potable rural en Galvarino y comunas vecinas. La necesidad de distribución de agua en sectores rurales es coherente con los objetos de compra y constituye una explicación plausible que compite con cualquier inferencia de trato personal; no prueba por sí sola cómo se evaluó cada oferta.[30][32][36]
7. **Búsqueda institucional exacta de intervención:** probé búsquedas por «Josué Madariaga», «Paredes Madariaga», «camión aljibe», «abastecimiento de agua» y términos de actas/compras en dominios municipales y Portal de Transparencia. El sitio municipal enlaza las actas del Concejo, pero la ficha oficial del Portal de Transparencia referida a Galvarino respondió 403 tanto a extracción web como a navegador. No se sorteó la barrera ni se accedió a anexos que no fueran públicos desde la ficha. Por ello, no pude revisar las actas del período ni determinar si aparece una deliberación concreta.
8. **Búsqueda secundaria y alternativas:** TodoLicitaciones indexa adjudicaciones de 2023–2026 bajo el proveedor personal, pero se prefirió el API OCDS y las fichas oficiales, que permitieron cotejar las compras concretas. Las búsquedas por nombre/código no entregaron documento público que conecte al concejal con la preparación o decisión de las licitaciones de la Delegación; no se interpreta como prueba de que tal documento no exista.

## 5. Explicación legítima, hipótesis contraria y relevancia

**Explicación legítima más plausible:** el proveedor ofrece un servicio especializado de camión aljibe en licitaciones abiertas para una necesidad básica que afecta a Galvarino y otras comunas rurales.[21][36]
Las compras contemporáneas las contrata y paga la Delegación regional.[5][19]
La contratación municipal documentada es una adjudicación de 2023, anterior al cargo.[30][32][1]

**Contraste adverso:** la persona es concejal de la misma comuna donde se presta el servicio y la orden más temprana del período se emitió ya durante su ejercicio. Ello justifica examinar temporalidad e identificar comprador, pero no cambia que esa OC se refiere a servicio de 2024, ni prueba intervención en la adquisición regional.[1][5] La regla de compras debe aplicarse por organismo comprador y hechos de participación concretos, no por cercanía geográfica; la nota de ChileCompra resume la prohibición para contratos con personal del propio organismo.[10]

**Límite crucial:** el sitio de Mercado Público enlaza anexos y resoluciones para las OCs, pero no se verificaron los actos íntegros que muestren responsables, evaluación y autorización de las compras regionales. El enlace municipal a actas del Concejo quedó inaccesible con respuesta 403. Una acta o resolución oficial que muestre participación del concejal en la decisión, junto con el acto de compra pertinente y su relación con el comprador, podría cambiar la evaluación; en ausencia de eso, no se atribuye función decisoria.

## 6. Gate editorial y decisión

- Identidad corroborada: **sí**, nombre completo, cargo declarado y correspondencia de proveedor corroborada con fuente primaria; no se publica el RUT personal.[1][5][19]
- Hecho material reproducible y consulta guardada: **sí**, once órdenes canónicas y desglose independiente por comprador en consultas 2 y 3; las fichas primarias cotejan los extremos del período y Lautaro.[5][6][19]
- Relevancia pública explicable: **parcial**; el servicio abastece de agua a Galvarino durante su período de concejal, aunque compra y paga la Delegación regional, no su municipalidad.[5][19][21]
- Descartado error de enlace/conteo: **sí para las once OCs consultadas**; nombre completo y control de identidad en la fuente primaria, consulta de códigos únicos y verificación independiente contra `purchase_order`. No se sumaron varias filas puente.
- Explicación legítima buscada y documentada: **sí**; licitación pública regional y necesidad de agua potable en varias comunas.[21][36]
La adjudicación municipal hallada fue previa a la asunción.[30][32][1]
- Evidencia de intervención personal en el procedimiento durante el cargo: **no obtenida**; el acta pública enlazada quedó en 403 y los anexos relevantes no fueron revisados.

**Decisión: evidencia insuficiente; no preparar borrador.** La coincidencia entre un concejal y un proveedor de servicios para su comuna amerita describirse solo como dato contextual. La mayoría de las compras del período provienen de otro organismo público, las compras propias de Galvarino encontradas son anteriores a la asunción y no hay documento accesible que acredite intervención personal. Reabrir solo si se obtiene por vía pública accesible un acta/resolución o anexo oficial que identifique intervención concreta en una contratación pertinente. No se afirma conflicto de interés, infracción ni ausencia absoluta de otras compras.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1772124 — InfoProbidad, declaración 1-04-2026 de Josue Paredes
    > "Asume el cargo: 06-12-2024"
    > "Fecha de Asunción en el cargo"
    > "Tiene Calidad de Controlador"
    > "JOSUE ANDRES PAREDES MADARIAGA"
[5] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1202511-1830-SE25 — Mercado Público, OC 1202511-1830-SE25
    > "Fecha de Envío | 28-02-2025"
    > "TOTAL OC | $ 12.600.000"
    > "SERVICIO DE ABASTECIMIENTO DE AGUA POTABLE COMUNA DE GALVARINO PERIODO OCTUBRE- NOVIEMBRE Y DICIEMBRE 2024"
    > "JOSUE ANDRES PAREDES MADARIAGA"
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4179-1251-SE25 — Mercado Público, OC 4179-1251-SE25
    > "Razón Social | I MUNICIPALIDAD DE LAUTARO"
    > "TOTAL OC | $ 9.980.000"
[10] https://www.chilecompra.cl/2025/04/contraloria-general-imparte-instrucciones-sobre-la-aplicacion-del-articulo-35-quater-de-la-ley-de-compras-publicas — ChileCompra, instrucciones CGR sobre art. 35 quáter
    > "una prohibición general para que los organismos del Estado celebren contratos administrativos"
[19] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1202511-625-SE26 — Mercado Público, OC 1202511-625-SE26
    > "Fecha de Envío | 10-09-2026"
    > "TOTAL OC | $ 9.860.000"
    > "JOSUE ANDRES PAREDES MADARIAGA"
[21] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=1202511-6-LE24 — Mercado Público, licitación 1202511-6-LE24
    > "COMUNA DE GALVARINO"
    > "Responsable de esta licitación: DELEGACIÓN PRESIDENCIAL REGIONAL DE LA ARAUCANÍA"
    > "Tipo de convocatoria: ABIERTO"
[30] https://api.mercadopublico.cl/APISOCDS/OCDS/award/4170-52-LE23 — ChileCompra OCDS, adjudicación 4170-52-LE23
    > "amount": 21000000.0, "currency": "CLP""
    > "JOSUE ANDRÉS PAREDES MADARIAGA | JB"
    > ""status": "active", "date": "2023-05-17T17:24:09Z", "value": {"
[32] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?qs=5pvawLf5gGDMmmDYHs4pzw== — Mercado Público, licitación 4170-52-LE23
    > "Arriendo de Camión aljibe por 5 meses para la distribución de agua potable"
[36] https://dprlaaraucania.dpr.gob.cl/noticias/apr-que-beneficiara-a-mas-de-10-mil-personas-de-temuco-galvarino-y-cholchol-ya-cuenta-con-recomendacion-satisfactoria — Delegación Presidencial Regional, sistema APR en Galvarino
    > "dependen de fuentes de agua no potables, como vertientes, norias y pozos artesanales"
