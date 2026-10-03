# Miguel Ángel Pérez Vidal y Librería Baúl del Ranco — pista descartada por alcance

- **ID:** `miguel-perez-vidal-libreria-rio-bueno`
- **Categoría:** compras/relaciones con el Estado
- **Estado:** descartada como pista de caso con evidencia disponible; no afirmar irregularidad
- **Fecha de trabajo:** 2026-10-03
- **Corte del artefacto:** `meta.build_date = 2026-10-02T15:43:07+00:00`; copia local informada sin cambios. Consultas de solo lectura con `ec-gold-sql`.
- **Identidad:** el nombre completo, cargo declarado y RUT societario coincidente enlazan las declaraciones con el proveedor; no se atribuyen datos de homónimos.[1][5]

## Síntesis

La declaración de 2023 sitúa a Miguel Ángel Pérez Vidal como concejal de Río Bueno y registra 50% y calidad de controlador de Comercial Baúl del Ranco Ltda.[1] Mercado Público registra dos órdenes aceptadas de la Unidad de Educación municipal al proveedor Librería Baúl del Ranco en 2025: CLP 622.792 el 27-03-2025 y CLP 498.840 el 28-11-2025.[5][6] La suma canónica es CLP 1.121.632 por dos códigos únicos, no cuatro filas espejo del cruce.

Ambas fichas identifican compras generadas por invitaciones a Compra Ágil y describen artículos corrientes de librería, oficina y uso escolar (lápices, tinta, papel y materiales didácticos), compatibles con el giro declarado.[1][5] ChileCompra explica Compra Ágil como mecanismo para compras menores y señala que desde el 12-12-2024 la primera convocatoria se reserva a empresas de menor tamaño; también indica que una selección distinta de la oferta más barata debe fundamentarse en la orden.[8] Esto contextualiza el mecanismo, pero no prueba quién ofertó o cómo se adjudicó cada cotización.

La coincidencia entre participación societaria y compras de Educación es reproducible, pero los montos son acotados, los productos son suministros ordinarios y no apareció evidencia de intervención del concejal. No satisface el gate de relevancia para un caso; se descarta esta pista en su forma actual, sin inferir ausencia absoluta de intervención o ilegalidad. Reabrir únicamente ante órdenes de mayor materialidad/recurrencia o evidencia nueva que conecte al concejal con decisiones de compra.

## Mapa de afirmaciones y consultas reproducibles

- **Identidad/sociedad:** InfoProbidad IDs 1032038 y 1496581 y RUT societario publicado en ambas OCs.[1][5]
- **Snapshots:** [`consultas/miguel-perez-vidal-declaraciones.sql`](../consultas/miguel-perez-vidal-declaraciones.sql) consultada el 2026-10-03: 8 declaraciones, cargo de concejal en snapshots municipales, participación declarada 50% y controlador; además hay declaración electoral de candidatura en 2021 y 2024.[1][2]
- **Órdenes:** [`consultas/miguel-perez-vidal-ordenes.sql`](../consultas/miguel-perez-vidal-ordenes.sql) devuelve cinco filas puente para dos códigos por snapshots/ventanas. Consulta independiente [`consultas/miguel-perez-vidal-verificacion-2026-10-03.sql`](../consultas/miguel-perez-vidal-verificacion-2026-10-03.sql) contra `purchase_order` reproduce exactamente dos órdenes, comprador/proveedor, fechas y montos; suma canónica: CLP 1.121.632.[5][6]
- **OC 3850-145-AG25:** aceptada, enviada 27-03-2025, unidad compradora Educación, proveedor/RUT coincidente, CLP 622.792; generada desde invitación `3850-126-COT25`.[5]
- **OC 3850-691-AG25:** aceptada, enviada 28-11-2025, unidad compradora Educación, proveedor/RUT coincidente, CLP 498.840; generada desde invitación `3850-558-COT25`.[6]
- **Contexto de compras:** portal de transparencia municipal dirige la sección de compras a Mercado Público; ChileCompra describe la Compra Ágil.[8][9]
- **Temporalidad:** la declaración 2023 ya identifica 50%/control; la rectificación de 25-06-2025 vuelve a registrar la sociedad antes de la OC de noviembre. Esto no demuestra influencia ni intervención en ninguna compra.[1][5]

## Pasada amplia (2026-10-03)

1. **Artefacto/declaraciones:** búsqueda por nombre completo y RUT societario; ocho snapshots y cargos/candidaturas. Confirma lo declarado, no titularidad independiente.[1][2]
2. **Artefacto/desduplicación:** consulta del cruce y consulta independiente de órdenes canónicas. Las cuatro filas puente representan dos OCs repetidas en ventanas, no cuatro compras.
3. **Mercado Público primario, OC 3850-145-AG25:** monto, fecha, unidad y líneas de productos comprobados en ficha.[5]
4. **Mercado Público primario, OC 3850-691-AG25:** monto, fecha y líneas de productos comprobados en ficha.[6]
5. **Fuentes municipales e institucionales:** revisión del índice de transparencia de Río Bueno y guía de ChileCompra sobre Compra Ágil; explican dónde consultar y cómo funciona el mecanismo, no la selección en estas solicitudes concretas.[8][9]
6. **Descubrimiento exacto/alternativas:** búsquedas por los dos códigos OC, solicitudes `3850-126-COT25` y `3850-558-COT25`, nombre completo y RUT societario; no se recuperaron fichas indexadas de cotizaciones, comparativas u otros actos. La búsqueda sobre homónimos excluyó perfiles sin coincidencia de cargo/institución. Resultado negativo acotado a consultas web de 2026-10-03; no demuestra inexistencia de documentos en anexos/portal.

**Explicación legítima más plausible:** un comercio minorista de papelería abastece necesidades rutinarias de la Unidad de Educación mediante Compra Ágil. Es compatible con el giro declarado y los productos; los antecedentes públicos consultados no permiten confirmar ofertas comparadas, fundamento de selección ni recepción conforme.[1][5][8]

## Gate editorial y decisión

- Identidad corroborada: **sí**, por nombre/cargo declarados y RUT societario coincidente.[1][5]
- Hecho material reproducible y fuente primaria: **sí**, dos OCs por CLP 1.121.632.[5][6]
- Relevancia pública suficiente: **no** con la escala y descripción verificadas; compras de bajo monto y suministros corrientes sin rol individual demostrado.
- Error del cruce descartado: **sí**, conteo de códigos únicos contra `purchase_order`.
- Alternativa legítima buscada: **sí**, giro y naturaleza de productos/mecanismo; documentos de cotización no hallados en búsquedas públicas indexadas.[1][5][8]

**Decisión:** descartada como caso, no preparar borrador ni solicitar gestión humana. Retomar solo ante materialidad/recurrencia mayor o evidencia funcional nueva. No se afirma que no haya otras compras ni que el concejal no interviniera; no apareció evidencia de ello en las fuentes, campos y búsquedas indicados.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1032038
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1496581
[5] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3850-145-AG25
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3850-691-AG25
[8] https://www.chilecompra.cl/compraagil
[9] https://transparencia.muniriobueno.cl/index.html
