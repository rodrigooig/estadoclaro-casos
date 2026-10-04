# BRAVOS SPA y ventas al Estado durante la función declarada — evidencia insuficiente

- **ID:** `naslo-bravo-perez-bravos-spa`
- **Categoría:** compras / relaciones con el Estado; actividades y temporalidad.
- **Estado:** evidencia insuficiente; no preparar caso.
- **Fecha de revisión:** 2026-10-04.
- **Corte de datos:** `meta.build_date = 2026-10-02T15:43:07+00:00`; el pre-run informó que el oro local no cambió desde la sincronización.
- **Identidad:** la declaración original de InfoProbidad contiene el nombre completo NASLO ALBERTO BRAVO PÉREZ, y el oro enlaza esa persona por `person_id` a su serie de declaraciones. No se atribuyen compras por parecido de nombre.[20]

## Resultado breve y mapa de afirmaciones

La declaración de 31-03-2026 lo identifica como jefe de Sección de Finanzas y Presupuesto del Poder Judicial y registra asunción el 01-01-2021; la declaración anterior consultada (01-10-2025) repite organismo, cargo y fecha de asunción.[20][21]

En esa declaración de 2026 aparece BRAVOS SPA, con RUT societario publicado en el origen, título ACCION, cantidad/porcentaje 100 y adquisición declarada el 21-12-2018. El formulario marca a la vez «Tiene Calidad de Controlador: false»; se conserva esa discrepancia sin reinterpretar el dato ni resolver qué quiso decir el declarante.[20]

La consulta guardada [`consultas/naslo-bravo-perez-bravos-spa-1.sql`](../consultas/naslo-bravo-perez-bravos-spa-1.sql), contra el oro del corte indicado, devuelve 95 códigos de orden únicos atribuidos en la ventana `during`, entre 01-04-2025 y 01-10-2026, a 21 compradores distintos, con CLP 140.973.877 sumados por el artefacto. Son montos del cruce, no ingresos personales; el total no fue cotejado orden por orden con fuentes primarias y no debe publicarse como cifra de dinero recibido por la persona.

La consulta independiente por comprador [`consultas/naslo-bravo-perez-bravos-spa-2.sql`](../consultas/naslo-bravo-perez-bravos-spa-2.sql) reproduce 95 órdenes. El artefacto clasifica 57 como Compra Ágil, 12 como trato directo y 38 con licitación pública enlazada; esas etiquetas no evalúan la justificación ni el resultado de cada contratación.

La base oficial de Mercado Público registra una OC enviada el 01-10-2026 al proveedor «naslo alberto», con RUT societario concordante, total $196.945 y productos alimentarios.[34]
Otra OC enviada el 30-09-2026 registra el mismo RUT y herramientas por $188.020.[35]
Una tercera OC del 16-09-2026 también consigna ese RUT, asciende a $1.038.275 y se vincula expresamente a la licitación 838106-1-LE26 para suministros alimentarios.[22][23]
Son verificaciones puntuales: no verifican cada una de las 95 órdenes ni el trabajo personal del titular.

La ruta alternativa de nómina pública del Poder Judicial fue consultada en el endpoint institucional de transparencia el 2026-10-04; la vista textual accesible mostraba una tabla de funcionarios, pero no encontré una coincidencia textual con el nombre en el contenido renderizado revisado. No se interpreta como prueba de que no trabaje allí: el cargo y la fecha se sostienen aquí por la declaración original.[6][20]

**Relevancia pública posible:** un funcionario que declara trabajar en finanzas y presupuesto de un poder del Estado también declara una participación accionaria en un proveedor con compras públicas en varias entidades; la relación potencial amerita describir con precisión, pero el conjunto consultado no vincula a la persona con la contratación ni muestra ventas de esta sociedad al Poder Judicial.[20]

## Rutas independientes y comprobaciones (2026-10-04)

1. **Minería transversal del oro:** cruce de `declared_supply`, `declared_supply_order`, `company`, `declaration` y `person`; el candidato no figura en `INDICE.md`, fichas previas ni casos publicados por nombre completo, sociedad o RUT societario. Se seleccionó como pista nueva por la aparición en la búsqueda de proveedores con participaciones declaradas y ventas en ventana de cargo.
2. **Consulta focalizada y segunda implementación:** se guardaron y ejecutaron las consultas 1 y 2. Ambas deduplican por código de OC, exigen `is_primary_for_person` y `timing = 'during'`; sus resultados coinciden en 95 órdenes. No se suman las filas `after_1y` ni repeticiones de declaraciones sucesivas.
3. **Origen de identidad, cargo y participación:** se cotejaron las declaraciones originales 5114511 (31-03-2026) y 5105229 (01-10-2025) de InfoProbidad; el nombre completo, Poder Judicial, cargo y fecha de asunción concuerdan. La participación en BRAVOS SPA solo se atribuye a lo autodeclarado, no a una verificación societaria independiente.[20][21]
4. **Contratación primaria y vínculo de identificador:** se leyeron fichas oficiales de Mercado Público para órdenes de 01-10-2026, 30-09-2026 y 16-09-2026; en las tres aparece el proveedor/RUT societario concordante con la declaración y figuran compras alimentarias y herramientas.[22][34][35]
La OC 838106-41-SE26 está enlazada a la licitación 838106-1-LE26, cuya ficha describe una convocatoria abierta para suministros alimentarios.[22][23]
Estos ejemplos confirman registros bajo el mismo RUT, no el universo de órdenes.
5. **Temporalidad y comprador:** la consulta independiente por comprador (consulta 2) devuelve 21 entidades; el filtro explícito `buyer_name ILIKE '%PODER JUDICIAL%'` devuelve cero órdenes principales en ventana. La consulta 3 desglosa `same_institution`: 0 true, 2 NULL («no se pudo determinar») y 93 false. Esto no prueba ausencia de otras transacciones fuera de la cobertura ni que el cargo carezca de relación con compras en general.
6. **Explicación legítima más plausible y prueba en contra:** la hipótesis es actividad comercial de abastecimiento de bienes a compradores públicos, con compras alimentarias y herramientas observadas en OCs, incluyendo una orden asociada a un proceso público abierto.[22][23][34]
El giro anotado en la declaración es venta minorista de otros productos en pequeños almacenes, compatible en parte con los alimentos pero no concluyente para los demás rubros.[20]
No se obtuvo documento primario sobre el giro completo actual, operaciones privadas ni papel individual del declarante.
7. **Contraste del posible vínculo funcional:** el cargo presupuestario podría ser relevante para la administración interna del Poder Judicial, pero no hay evidencia pública consultada de que el titular evaluara, autorizara, administrara o recibiera las órdenes de compradores distintos. La búsqueda en el endpoint público de empleados fue limitada al texto renderizado disponible y no resuelve funciones internas.[6][20]
8. **Límite institucional:** la consulta 3 cuenta por separado las etiquetas institucionales conocidas/desconocidas; las dos filas `NULL` se conservan como «no se pudo determinar», no como coincidencia ni como descarte.

## Evaluación adversarial, límites y decisión

- La unidad de identidad societaria es el RUT que aparece en InfoProbidad y en las fichas de Mercado Público, no la similitud de las etiquetas comerciales «BRAVOS SPA» y «naslo alberto».[20][34][35]
- No se presenta CLP 140.973.877 como ingreso de la persona ni como cifra verificada con fuente primaria. Para publicar una suma, habría que cotejar cada OC única y excluir órdenes canceladas, reemplazos o modificaciones; la minería del oro es solo reproducible dentro del artefacto.
- La declaración menciona una actividad minorista y 100 como cantidad/porcentaje, pero marca «false» en la calidad de controlador. No se resuelve esa discrepancia con una conclusión propia.[20]
- Las compras se distribuyen entre varias entidades; el cruce no muestra órdenes al Poder Judicial. Una actividad laboral en finanzas no demuestra participación en adquisiciones de otros organismos.
- La convocatoria abierta de la licitación 838106-1-LE26 ofrece una explicación competitiva concreta para ese procedimiento, pero no es evidencia sobre los restantes códigos ni sobre la calidad de cada compra.[23]
- No se revisó el expediente completo, las ofertas, las adjudicaciones o los anexos de las 95 órdenes; no se buscó a la persona en redes ni se contactó a nadie. La vista textual del endpoint de nómina fue acotada; su resultado negativo no demuestra ausencia.[6]

**Decisión:** mantener **evidencia insuficiente**, sin borrador público y sin declarar «requiere humano». La identidad, la participación autodeclarada y la existencia de compras al mismo RUT son comprobables; falta establecer una conexión documentada con la función concreta del declarante y verificar en fuente primaria el universo/monto completo. El dato observado no basta para sugerir conflicto, intervención o infracción.

**Condición de reapertura:** una fuente oficial fechada que describa las atribuciones concretas del cargo sobre adquisiciones y documentos primarios que vinculen al titular con decisiones, evaluación, recepción o pago de contratos específicos; además, cotejo de las órdenes principales para cualquier cifra agregada. Si no aparece ese vínculo, conservar como participación societaria declarada concurrente con ventas comerciales, sin atribución personal.

## Sources

[6] https://www.pjud.cl/ajax/Transparency/getJudicialPowerEmployees
    > "Nombre | Profesión | Cargo | Calidad Juridica | Unidad | Región | Grado | Remuneración Bruta | Sueldo Líquido | Asignaciones Especiales | Fecha Inicio | Fecha Término"
[20] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5114511
    > "Declaración completa de NASLO ALBERTO BRAVO PÉREZ"
    > "Cargo o función | Jefe Seccion Finanzas Y Presupuesto"
    > "Nombre o Razón Social | bravos spa"
    > "Cantidad / Porcentaje | 100"
    > "Tiene Calidad de Controlador | false"
    > "Fecha | 31-03-2026"
    > "Organismo | Poder Judicial"
    > "Fecha de Asunción en el cargo | 01-01-2021"
    > "Giro registrado en SII | VENTA AL POR MENOR DE OTROS PRODUCTOS EN PEQUENOS ALMACENES NO ESPECIALIZADOS"
[21] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5105229
    > "Declaración completa de NASLO ALBERTO BRAVO PÉREZ"
    > "Cargo o función | Jefe Seccion Finanzas Y Presupuesto"
[22] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=838106-41-SE26
    > "Número de la Orden de Compra | 838106-41-SE26"
    > "R.U.T. | 73.923.800-5"
    > "Proveedor | naslo alberto"
    > "Fecha de Envío | 16-09-2026"
    > "R.U.T. | 76.958.669-5"
    > "Proveniente de Licitación | 838106-1-LE26"
    > "TOTAL OC | $ 1.038.275"
[23] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=838106-1-LE26
    > "Contrato de suministro de alimentos perecibles y no perecibles y bebidas alcohólicas y no alcohólicas para la Casa de Huéspedes"
    > "Tipo de convocatoria: ABIERTO"
    > "Estado: Adjudicada Descripción: Contrato de suministro de alimentos perecibles y no perecibles"
[34] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2986-432-SE26
    > "Proveedor | naslo alberto"
    > "R.U.T. | 76.958.669-5"
    > "TOTAL OC | $ 196.945"
[35] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1057547-14436-SE26
    > "R.U.T. | 76.958.669-5"
    > "TOTAL OC | $ 188.020"
