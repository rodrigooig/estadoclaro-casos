# Edgar Andrés Mamani García — participación en empresas de transporte

- **ID:** `edgar-andres-mamani-norte-azul-20261006`
- **Categoría:** compras/relaciones con el Estado; intereses y temporalidad.
- **Estado:** evidencia insuficiente; no preparar caso.
- **Revisión:** 2026-10-06 UTC.
- **Corte del oro:** `meta.build_date=2026-10-06T15:56:08+00:00` (copia local informada sin cambios); consultas solo lectura con `ec-gold-sql`.

## Decisión

La minería del oro recuperó una declaración enlazada a Edgar Andrés Mamani García, concejal de Colchane, con participación no controladora de 25% en Sociedad de Importaciones y Servicios de Pasajeros Norte Azul Ltda.; otra declaración registra 100% controlador en una EIRL de transporte distinta.[6][1] El cruce del oro agrega 19 órdenes únicas de Norte Azul por CLP 119.660.000 y 11 de la EIRL por CLP 15.138.000; se deduplicó por código de orden, no por snapshot declarativo (`consultas/edgar-andres-mamani-norte-azul-20261006-b.sql`).[6][1]

La evidencia primaria revisada sitúa las compras de la EIRL en un comprador (Universidad Arturo Prat) y confirma servicios de traslado; la OC 951-79-SE20 de Norte Azul fue emitida por la Intendencia Regional de Tarapacá bajo la causal publicada de emergencia/urgencia/imprevisto para 20 recorridos entre Colchane e Iquique.[2][8] Una OC posterior de Norte Azul a la Universidad Arturo Prat describe transporte para una salida a terreno con la comunidad de la Escuela Fronteriza D-66 de Cariquima.[9] No apareció una OC comprada por la Municipalidad de Colchane en las filas examinadas; para las 19 órdenes de Norte Azul hay tres `same_institution=NULL`, que significan «no se pudo determinar», no una determinación de comprador distinto.

**Decisión editorial:** no redactar caso. El giro de transporte declarado es congruente con los servicios que describen las órdenes verificadas; los compradores revisados son otras entidades y ninguna fuente consultada identifica a Mamani como requirente, evaluador, administrador o receptor. Esa lectura es compatible con prestación ordinaria de transporte, pero no demuestra la regularidad de cada procedimiento ni descarta intervención personal. No se halló nexo funcional entre las decisiones del concejo y estas compras. La escala del agregado, por sí sola, no satisface el gate.

## Mapa de afirmaciones

| Afirmación | Evidencia requerida y revisión | Resultado | Incertidumbre |
|---|---|---|---|
| Identidad y cargos | Declaración primaria completa ID 592963 y acta del Tribunal Electoral Regional de Tarapacá; cotejo contra el `person_id` de la consulta | InfoProbidad nombra a Edgar Andrés Mamani García, concejal de Colchane en 2021; el acta electoral lo proclama concejal para el período que concluye en diciembre de 2024. La declaración de 2025 ID 1327959 enlazada por el oro abrevia el nombre a «Edgar Mamani» y consigna concejal de Colchane.[6][7][1] | La declaración más reciente no muestra nombres segundo y materno; la continuidad de identidad se apoya en el registro enlazado del oro, no en una clave personal publicada aquí. No publicar RUT personal. |
| Participaciones | Declaraciones primarias por ID y RUT societario exacto | La declaración de 2021 registra 25% no controlador en Norte Azul; la de 2025 registra 100% controlador en Pullman Edgar Mamani García EIRL. Son entidades declaradas distintas y no se combinan como si fueran una sola.[6][1] | Las declaraciones son autodeclaradas; no prueban titularidad ininterrumpida fuera de sus fechas ni quién ejecutó materialmente cada servicio. |
| Compras a la EIRL controlada | SQL por `person_id` + razón social, limitado a `is_primary_for_person`; OCs primarias 2013-1163-SE22, 2013-1301-SE22 y 2013-646-SE23 | El oro devuelve 11 códigos únicos por CLP 15.138.000, un comprador, Universidad Arturo Prat, entre 19-08-2022 y 04-10-2024; 11 filas `same_institution=false`. La muestra primaria confirma OC de traslado a la Universidad por CLP 1.309.000 y transporte de académicos en 2023 por CLP 200.000.[2][3][4] | No se descargaron anexos de las órdenes. El clasificador de rubro presenta una fila como maquinaria de minería aunque la mayoría se clasifican como transporte; no se interpreta esa única fila como servicio realmente prestado sin ficha/anexo revisado. |
| Compras a Norte Azul no controlada | SQL exacto por RUT societario y razón social; OC 951-79-SE20 y OC 2013-997-SE23; listado completo de 19 códigos únicos | El oro devuelve 19 OCs por CLP 119.660.000 y cinco compradores entre 03-01-2020 y 14-12-2024; 16 son `same_institution=false` y 3 NULL. La Intendencia compró 20 recorridos Colchane–Iquique por CLP 11.600.000 bajo causal de emergencia/urgencia; la Universidad Arturo Prat compró traslado para una salida pedagógica a Cariquima por CLP 800.000.[8][9] | No se obtuvo en esta pasada el acto/anexo que fundamenta la causal de urgencia ni se cotejaron las 19 fichas una por una. «Emergencia» es el rótulo publicado de la OC, no prueba suficiente de su justificación legal. |
| Vínculo funcional o beneficio personal | Fichas de compra, comprador exacto, indicadores de institución del oro y búsqueda por nombre/códigos | Los códigos comprobados nombran a Universidad Arturo Prat e Intendencia/Delegación Regional de Tarapacá; la lista de 11 EIRL no tiene comprador Municipalidad de Colchane. No se encontró un acto público que identifique a Mamani en evaluación, autorización o ejecución.[2][8][9] | Las fichas revisadas no resuelven quién decidió, evaluó, administró o recibió todos los contratos; la falta de un resultado en estas búsquedas no demuestra ausencia de intervención. |
| Explicación legítima | Objeto de los servicios, giro declarado y alternativas documentales | La explicación ordinaria más plausible es una actividad empresarial de transporte declarada; las fichas revisadas describen recorridos en bus y traslado de académicos.[1][8] La OC de la Universidad Arturo Prat describe por separado una salida pedagógica a Cariquima.[9] | No se afirmó que esa explicación cubra todas las OCs; faltan nueve fichas individuales de la EIRL y 17 de Norte Azul, además de anexos de compras sensibles. |

## Rutas revisadas — 2026-10-06 UTC

1. **Minería del oro / distinta de la pantalla anterior de proveedores:** `...-a.sql` buscó el nombre del declarante completo disponible en `declarant` y extrajo institución, cargo, declaraciones, razones sociales y señales de compra. Se cotejó nombre, empleador, RUT societarios y huella en `INDICE.md` y el README del repositorio público: no aparece una ficha previa de Mamani ni caso publicado que coincida con esta pista. La salida se amplía en las consultas siguientes; las filas repetidas por snapshots no se trataron como órdenes distintas.
2. **Origen e identidad primaria:** recuperación de InfoProbidad por IDs exactos 592963 y 1327959; recuperación separada del acta electoral TER Tarapacá. La primera muestra el nombre completo y cargo; la más reciente mantiene concejalía pero omite segundo nombre y apellido materno; el acta confirma elección en el período 2021–2024.[1][6][7]
3. **Serie societaria y control:** comparación SQL de las declaraciones/sociedades del `person_id`, RUT societarios y participación/control: Norte Azul (25%, no controlador en la declaración 2021) y Pullman EIRL (100%, controlador en la de 2025). La consulta agregada por `order_code` probó por separado 19/11 transacciones únicas y sumas de CLP 119.660.000 / CLP 15.138.000; segunda consulta contó `true`, `false` y `NULL` en `same_institution` por separado. No se sumaron snapshots.
4. **OC primaria e hipótesis de servicio ordinario:** se extrajeron Mercado Público 2013-1163-SE22, 2013-1301-SE22, 2013-646-SE23 y 2013-997-SE23. Las tres primeras nombran a Universidad Arturo Prat como comprador y servicios de traslado/transporte.[2][3][4] La OC 2013-997-SE23 describe una salida a terreno de Educación Parvularia Intercultural con la Escuela Fronteriza D-66.[9]
5. **Compras de Norte Azul y potencial refutación:** ficha primaria 951-79-SE20: comprador Intendencia Regional de Tarapacá, 20 recorridos Colchane–Iquique solicitados para el 12–13 de abril de 2020, causal de emergencia/urgencia/imprevisto, proveedor por RUT societario exacto y total CLP 11.600.000.[8] Se comprobó contra la lista oro de 19 OCs que el comprador declarado no es la Municipalidad de Colchane en las filas con `false`; tres NULL quedan indeterminadas.
6. **Búsquedas externas por identificadores exactos y alternativas oficiales:** búsquedas web del 06-10-2026 por `"951-79-SE20" "NORTE AZUL"`, nombre legal de Norte Azul, `"EDGAR ANDRÉS MAMANI GARCÍA" Colchane concejal` y `site:colchane.cl "Norte Azul" transporte 2020 emergencia COVID`; también búsqueda/consulta del código 2013-1163-SE22. No apareció acto municipal que vincule al concejal con la compra, ni una copia alternativa de los anexos. La búsqueda exacta por nombre completo recuperó como contraste primario la declaración InfoProbidad 592963 y el acta TER; el índice oficial de compras consultado para el código no mostró resultado web adicional. No se usaron datos de redes sociales ni se contactó a terceros.
7. **Explicación alternativa / documentación institucional:** la propia OC de 2020 identifica la compra como 20 recorridos de pasajeros entre Colchane e Iquique; la OC universitaria 2023 describe transporte para una actividad educativa en Cariquima. Ambos objetos son compatibles con el giro declarado de transporte.[1][8][9] No se equiparó `same_institution=NULL` a un comprador distinto.

## Gate, límites y próxima acción

- **Dato:** participación 25% no controladora en Norte Azul y 100% controladora en una EIRL de transporte según declaraciones con fechas distintas; 19 y 11 órdenes únicas, respectivamente, en el cruce.
- **Hecho derivado:** las compras y OCs revisadas incluyen varias contrataciones de transporte por otros organismos, incluida una contratación de emergencia de 2020 de la Intendencia y servicios de una universidad estatal.
- **Explicación plausible:** la actividad comercial declarada de transporte es congruente con esos objetos. La ficha de emergencia y los objetivos pedagógicos son descripciones documentales; no se usan como veredicto sobre procedimiento ni justifican todas las compras.
- **Hipótesis no acreditada:** que la participación o el cargo de concejal influyera en la contratación. No se encontró evidencia de vínculo funcional con las decisiones de compra ni órdenes de la Municipalidad de Colchane en el conjunto de EIRL; no atribuir intervención.
- **Discrepancias/errores prevenidos:** no se sumaron filas duplicadas por declaración; se separaron dos RUT societarios/entidades; la métrica de rubro de una OC difiere de las demás y queda sin afirmar el objeto real hasta leer su detalle; `NULL` queda indeterminado; los montos se conservan como pesos nominales del oro, sin reajuste ni conversión.
- **Gate:** identidad corroborada por declaración primaria completa y acta electoral; el hecho del oro es reproducible y se cotejaron OCs primarias seleccionadas; el vínculo funcional no está acreditado; el riesgo de error por snapshots fue controlado, pero no se cotejaron todas las fichas; alternativa de transporte documentada. No alcanza para borrador.
- **Revisor independiente:** no hubo segunda revisión independiente en esta corrida.
- **Próxima acción:** mantener en evidencia insuficiente y rotar la minería. Reabrir solo si aparece expediente/anexo o acta que nombre a Mamani en decisión, evaluación o recepción; o un documento institucional que conecte su función de concejal con una compra concreta. No repetir búsquedas generales de nombre/RUT ni inferir por modalidad de compra.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1327959 — InfoProbidad, declaración 19-02-2025
    > "Cargo o función | Concejal"
    > "Tiene Calidad de Controlador | true"
    > "Giro registrado en SII | TRANSPORTE DE PASAJEROS"
    > "Cantidad / Porcentaje | 100"
[2] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2013-1163-SE22 — Mercado Público OC 2013-1163-SE22
    > "Unidad de Compra | UNIVERSIDAD ARTURO PRAT SEDE IQUIQUE"
    > "SERVICIO DE TRASLADO HUARA - HAMBERTONE BUS LO915 MERCEDEZ BENZ 20 ASIENTOS"
[3] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2013-1301-SE22 — Mercado Público OC 2013-1301-SE22
    > "Nombre de la Orden de Compra | TRASLADO A PICA"
[4] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2013-646-SE23 — Mercado Público OC 2013-646-SE23
    > "ADQUISICION DE SERVICIO DE TRASLADO DE ACADEMICOS"
    > "TOTAL OC | $ 200.000"
[6] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=592963 — InfoProbidad, declaración de Edgar Andrés Mamani García, 10-02-2021
    > "Tiene Calidad de Controlador | NO"
    > "Fecha de adquisición | 23-07-2014"
    > "Cantidad / Porcentaje | 25"
[7] https://tribunalelectoraliquique.cl/wp-content/uploads/2021/06/Acta-de-Proclamacion-Concejales-Colchane.pdf — Tribunal Electoral Regional de Tarapacá, Acta de proclamación de concejales de Colchane, 10-06-2021
    > "Que, han resultado electos como concejales de la comuna de Colchane, hasta el 6 de diciembre de 2024, doña MARIBEL ANGÉLICA MAMANI GARCÍA, don YAMIL SANDRO GARCÍA CHOQUE, don GUILLERMO JAVIER MOSCOSO MAMANI, don EDGAR ANDRÉS MAMANI GARCÍA, don JUAN CHOQUE MAMANI y don ELISEO ELOY GARCÍA CHALLAPA."
[8] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=951-79-SE20 — Mercado Público OC 951-79-SE20
    > "Orden de Compra Emergencia, urgencia o imprevisto"
    > "CONTRATACIÓN DE 20 RECORRIDOS VÍA TERRESTRE DE DESDE LA COMUNA DE COLCHANE A IQUIQUE ENTRE LOS DIAS 12 Y 13 DE ABRIL 2020"
    > "TOTAL OC | $ 11.600.000"
[9] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2013-997-SE23 — Mercado Público OC 2013-997-SE23
    > "para salida a terreno para compartir con la comunidad de la escuela Fronteriza D-66 del pueblo de Cariquima"
    > "TOTAL OC | $ 800.000"
