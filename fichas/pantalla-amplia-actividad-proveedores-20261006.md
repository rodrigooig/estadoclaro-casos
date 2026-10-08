# Pantalla amplia de actividades y proveedores — revisión editorial

- **ID:** `pantalla-amplia-actividad-proveedores-20261006`
- **Categoría:** compras/relaciones con el Estado; actividades/cargos/temporalidad.
- **Estado:** evidencia insuficiente; control de minería, no pista individual ni caso.
- **Fecha de revisión:** 2026-10-06 UTC.
- **Corte del oro:** `meta.build_date=2026-10-02T15:43:07+00:00`; copia local sin cambios según pre-run. Consultas solo lectura con `ec-gold-sql`.

## Resultado

**Sin avance material hacia una pista nueva.** Se hizo una pasada amplia por actividades declaradas, proveedores compartidos, compras directas y compras a la institución propia en seis consultas. Los resultados útiles fueron mayoritariamente señales ya indexadas o agregados dominados por proveedores de muy amplia difusión. No se elevó ningún nombre a investigación individual con esta pantalla; no se infiere intervención, relación personal con cada orden, ni irregularidad.

## Rutas y verificaciones — 2026-10-06 UTC

1. **Agregación de actividad pagada y temporalidad:** se ejecutó `consultas/pantalla-actividad-pagada-reciente-20261006-2.sql`. En sus siete filas agrupadas por tipo, `paid_recent_people=0` y `paid_recent_named_entity_people=0` para cada tipo. Es un resultado de los indicadores/flags disponibles en el artefacto; no demuestra que no existan actividades remuneradas recientes en los formularios ni sustituye revisar declaraciones fuente.
2. **Actividad declarada junto a proveedores declarados:** `consultas/pantalla-actividades-intereses-20261006-2.sql`, salida limitada a 60 filas. Predominan intersecciones con proveedores muy difundidos (p. ej., LATAM, COPEC, SONDA, ENTEL) y actividades gremiales/beneficencia; aparecen nombres con fichas previas, incluidos Ramon Martín Illanes, Juan Pablo Glasinovic y Pablo Allard. Esta consulta une filas de actividad y de proveedor y puede repetir personas por cada actividad/proveedor; sus montos agregados no se suman como hallazgos independientes.
3. **Proveedores compartidos:** `consultas/pantalla-wide-shared-suppliers-20261005.sql`, 100 filas del ranking limitado. Los primeros resultados están dominados por empresas ampliamente declaradas (ENTEL, COPEC, SONDA, LATAM, entre otras), con decenas o centenas de declarantes; se revisó como ruta independiente de actividades y no produjo una empresa/persona nueva priorizable en esta pasada.
4. **Premios directos reiterados:** `consultas/pantalla-wide-direct-awards-20261005.sql`, salida limitada a 60 filas. El ranking vuelve a estar dominado por proveedores corporativos de gran difusión y candidaturas ya indexadas. `n_direct_award` es el conteo de la métrica del artefacto, no una conclusión sobre legalidad o procedimiento.
5. **Compras a institución propia con proveedor no ampliamente difundido:** `consultas/pantalla-wide-same-institution-current-20261005.sql` devolvió 12 filas; entre ellas aparecen leads ya existentes en el índice, como Aliaga, Martínez Rubio, Díaz Reyes, Lotito, Opazo y Allard, además de otros nombres con baja materialidad/temporalidad en esta salida. Se deduplicó por nombre, institución y huella contra el índice leído antes de esta minería; no se abrió ficha repetida.
6. **Proveedores de baja recurrencia con compras a institución propia:** `consultas/pantalla-proveedores-baja-recurrencia-20261006-2.sql` devolvió cinco filas: cuatro corresponden a nombres ya indexados (Lotito, García Muñoz, Opazo y Allard) y una a Juan Carlos Sepúlveda con una orden de CLP 2.643.840 del 25-06-2020, fuera de una ventana reciente y sin nueva evidencia de papel individual. No se abrió una pista nueva solo por coincidencia estadística.
7. **Filtro por proveedor controlador, compras a la misma institución y adjudicación directa:** se ejecutó `consultas/pantalla-amplia-actividad-proveedores-20261006-control-direct-award-20261008.sql` contra el oro sincronizado con `meta.build_date=2026-10-08T05:08:05+00:00`. La consulta devolvió una fila: PABLO ALLARD SERRANO / Allard Partners (RUT societario 76.598.791), 3 órdenes durante la ventana, 1 marcada misma institución, 1 adjudicación directa y CLP 341.626.060 entre 07-01-2022 y 02-05-2023. La ficha ya existe como `pablo-allard-serrano-pasarela-vitacura` y el caso está en PR borrador #108; por tanto es una coincidencia duplicada, no candidato nuevo ni evidencia nueva que altere su disposición. El filtro combina métricas del artefacto y no acredita intervención individual ni legalidad de la modalidad.
8. **Deduplicación y contraste:** los nombres que salieron de las pantallas se cotejaron con `INDICE.md` y el índice público en `estadoclaro-casos/README.md` (61 casos según ese archivo). Las coincidencias identificables se trataron como ya investigadas, no como nuevos hallazgos. No se atribuyeron registros por homonimia ni se usó RUT personal.

## Tercera pasada amplia — 2026-10-08 UTC

**Decisión:** sin avance material hacia una pista nueva. Con el corte `2026-10-08T05:08:05+00:00`, se filtraron declarantes con empresa controladora, al menos dos órdenes durante la ventana, compra a la misma institución y alguna adjudicación directa. `consultas/pantalla-amplia-actividad-proveedores-20261006-control-direct-award-20261008.sql` devolvió solo a Pablo Allard Serrano / Allard Partners, ya indexado y con caso en PR borrador #108. La consulta es una señal de cribado, no verificación de intervención ni juicio sobre el procedimiento.

El resultado no cambia el paquete del caso existente ni satisface la misión de preparar un caso nuevo. No se abrió una ficha individual ni se inició otro barrido de rankings. Próximo paso: rotar a una fuente primaria o sector distinto con identificador concreto antes de profundizar; no repetir este filtro sin un dato o ruta nueva.

## Lectura, límites y próxima acción

El hallazgo verificable de esta corrida es metodológico: estas pantallas generales vuelven a recuperar proveedores de amplia difusión y expedientes ya conocidos; no aportan en sí mismas la identidad de quien requirió, evaluó, aprobó o recibió una compra. La ausencia de un nuevo candidato en las salidas revisadas no prueba que no existan relaciones de interés o documentos adicionales. La priorización siguiente debe rotar a una fuente o sector distinto y partir de un identificador/documento primario, en lugar de ampliar rankings de volumen. No requiere intervención humana: en esta corrida no se identificó una barrera de acceso central para una pista concreta.

No hubo segunda revisión independiente. Las salidas y consultas indicadas son reproducibles contra el corte consignado; las limitaciones de truncamiento se declaran donde aplica. Ninguna consulta abre ni modifica el oro.

## Segunda pasada amplia — 2026-10-06 UTC

**Decisión:** sin avance material hacia una pista nueva. No se abrió una ficha individual ni se preparó borrador. Esta ronda guardó y ejecutó cuatro consultas distintas y deduplicó los nombres salientes contra el índice y el repositorio público; dos señales altas resultaron corresponder a casos ya publicados. La cifra o el ranking del oro no se toma por hallazgo.

1. **Actividades pagadas declaradas, contraparte y cargo:** consulta SQL guardada (70 filas). Incluye relaciones profesionales, cargos propios y líneas duplicadas; sin identidad/temporalidad suficiente, no se infiere relación externa ni continuidad.
2. **Titulares vigentes con participación marcada y proveedor poco difundido; filtrar actividad de compra directa, cantidad de órdenes y similitud de razón social:** consulta SQL guardada (32 filas). El ranking incluye candidaturas conocidas y al menos un nombre ya publicado (Carolina Pía Rossi Pantoja). Deduplicación: el caso público de Rossi ya está en `estadoclaro-casos/entrega-2/casos/declaraciones_incompletas/rossi-pantoja-health-consulting-partners-subsecretaria-ciencia.md`; no se abrió caso paralelo.
3. **Cruce actual de compras a institución declarada:** consulta SQL guardada (12 filas), todos los nombres cotejados con `INDICE.md` y `estadoclaro-casos/README.md`/fichas por nombre e institución. No generó candidato inédito.
4. **Pasivos declarados por sobre activos y > CLP 1.000 millones:** consulta SQL guardada (19 filas). Predominan pistas patrimoniales ya indexadas; cifra declarada/outlier no valida saldo efectivo.
5. **Contraste de deduplicación específico:** búsquedas locales por nombre completo, razón social y RUT societario identificaron también a Manuel Jesús Godoy Velásquez y QUEILEN BUS en un caso ya publicado (`estadoclaro-casos/casos/negocios_estado/godoy-velasquez-queilen-bus-chilecompra.md`). Su fila de 317 órdenes y `n_same_institution=0` no se reabre ni se interpreta como intervención.
6. **Verificación primaria incidental sobre el caso ya publicado de Rossi:** la declaración de InfoProbidad del 19-05-2026 registra 500 acciones de Health Consulting Partners SpA adquiridas el 10-03-2021, valor declarado CLP 353.000 y sin calidad de controladora; la misma declaración consigna fecha de asunción como jefa de división el 20-04-2026.[3] Presidencia informó su designación como subsecretaria el 16-06-2026.[1] La ficha oficial de Mercado Público de Renca indica que la licitación 4956-23-LE26 fue abierta y adjudicada el 15-05-2026.[7] La orden 4956-85-SE26, enviada el 11-06-2026, registra a Health Consulting Partners como proveedor por CLP 31.489.135.[8] Es una compra municipal ajena a la Subsecretaría; adjudicación y envío de OC ocurrieron cuando Rossi ya declaraba el cargo de jefa de división, pero antes de su nombramiento como subsecretaria. Ni las fichas ni las consultas revisadas acreditan intervención personal, ni se leyó el expediente/anexo evaluador de la licitación. Este dato amplía el cotejo de un caso público existente; no resuelve si la participación se enajenó ni modifica el gate editorial.

**Mapa de afirmaciones y límites:** (i) identidad/acciones/cargo de jefa: declaración primaria de InfoProbidad, cotejada por nombre completo y sociedad; RUT societario, no personal.[3] (ii) nombramiento a subsecretaria: comunicado de Presidencia con fecha 16-06-2026; no detalla la compra municipal.[1] (iii) licitación: ficha primaria de Mercado Público, convocatoria abierta, adjudicación el 15 de mayo.[7] La OC identifica proveedor, fecha de envío y total pagado nominal.[8] (iv) hipótesis que debilita una lectura de intervención: compra a una municipalidad distinta de su organismo, licitación iniciada en marzo; no se revisó el expediente de evaluación y la ficha/OC no identifican intervención de Rossi. La declaración de 19 de mayo consigna que ya había asumido como jefa de división el 20 de abril, por lo que la adjudicación y OC coinciden temporalmente con ese cargo, aunque preceden su nombramiento como subsecretaria; proximidad temporal por sí sola no prueba participación personal.[3] No se repitieron búsquedas generales de la venta de acciones ni del expediente del Hospital del Salvador: esas incertidumbres están descritas en el caso público y no apareció una vía pública nueva para responderlas.

**Próxima acción:** mantener este control de minería en `evidencia insuficiente`; no duplicar el caso Rossi ni reabrir Godoy. Rotar a otra fuente o institución en el siguiente ciclo. No se identificó un bloqueo central nuevo ni se requiere gestión humana a partir de esta pasada.

Fuentes nuevas del cotejo quedan renderizadas abajo; corte del oro: `2026-10-02T15:43:07+00:00`. Consultas solo lectura.

## Sources

[1] https://prensa.presidencia.cl/comunicado.aspx?id=331760 — Presidencia: nombramiento de Carolina Rossi, 16 junio 2026
    > "En el Ministerio de Ciencias, Tecnología, Conocimiento e Innovación asumió como subsecretaria Carolina Rossi, quien subrogaba el cargo mientras era jefa de la División de Tecnologías Emergentes del Ministerio de Ciencia, Tecnología, Conocimiento e Innovación."
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1793014 — InfoProbidad: declaración 19 mayo 2026, página completa
    > "Cantidad / Porcentaje | 500"
    > "Cargo o función | Jefe De Division"
    > "Fecha de adquisición | 10-03-2021"
    > "Valor Corriente en plazo o Valor Libro | 353.000"
    > "Tiene Calidad de Controlador | false"
    > "Fecha de Asunción en el cargo | 20-04-2026"
[7] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=4956-23-LE26 — Mercado Público: licitación Renca 4956-23-LE26
    > "Fecha de Adjudicación: 15-05-2026 17:21:07"
    > "Tipo de convocatoria: ABIERTO"
[8] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4956-85-SE26 — Mercado Público: OC 4956-85-SE26
    > "Fecha de Envío | 11-06-2026"
    > "TOTAL OC | $ 31.489.135"
