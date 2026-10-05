# Ramón Alfredo Martín Illanes — acciones declaradas de Empresas Copec y señal agregada de compras

- **ID:** `ramon-martin-illanes-copec`
- **Estado:** evidencia insuficiente
- **Revisado:** 2026-10-05 UTC
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00` (Script Output)
- **Consulta reproducible:** `consultas/ramon-martin-illanes-copec-1.sql`, ejecutada con `ec-gold-sql`.
- **Deduplicación:** búsquedas exactas por nombre completo en `INDICE.md`, fichas y casos públicos no encontraron una ficha/caso existente de esta persona en esta pista; el filtro fue nombre completo + sociedad. No se atribuyen datos de homónimos.

## Síntesis editorial

Una pantalla de sociedades declaradas que tienen compras estatales mostró a Ramón Alfredo Martín Illanes, notario del Poder Judicial, con 1.813 acciones no controladoras de Empresas Copec S.A. (RUT societario 99.520.000-7), adquiridas según su declaración el 24-02-2011. En cinco declaraciones entre 2022 y 2025 el oro conserva esas 1.813 acciones; la declaración más reciente lista $6.713 como valor/libro, no como estimación actual ni como participación porcentual [1]. InfoProbidad confirma la identidad, institución, cargo y datos de la declaración 2025; un documento anterior de InfoProbidad también lo describe como notario y la acción como no controladora [1][7].

La pantalla agregada relaciona Empresas Copec con 8 declarantes y 43.968 órdenes en el período analizado (RUT societario 99.520.000-7; comprador e institución en la fila agregada no equivalen a intervención del declarante). Una consulta independiente con nombre completo + RUT societario en `declared_supply_order` devolvió 0 filas. Por ello no hay aquí un conjunto de contratos individuales atribuible a Martín Illanes. No presento conteo, monto ni comprador agregado como ventas personales, beneficio suyo o actuación en una compra.

## Rutas examinadas (2026-10-05 UTC)

1. **Pantalla amplia de proveedores declarados:** ejecuté `consultas/pantalla-wide-shared-suppliers-20261005.sql`. Identificó la combinación Empresas Copec / Martín Illanes en una sociedad con múltiples declarantes; el total agregado no es evidencia de participación personal en órdenes.
2. **Snapshots patrimoniales:** consulté nombre completo + RUT societario en `person`, `declaration` y `company`. Cinco filas, 02-09-2022, 19-12-2022, 20-03-2023, 31-03-2024 y 25-03-2025; las cinco informan 1.813 acciones, `is_controlling=false`, adquisición 24-02-2011. La consulta guardada reproduce las filas. No se trató la repetición por snapshots como cinco adquisiciones.
3. **Desagregación a órdenes por titular:** una consulta por nombre completo + RUT societario + `is_primary_for_person` sobre `declared_supply_order` devolvió 0 filas. Es un resultado limitado a esa unión/filtro, no prueba que la empresa no tenga contratos ni que no existan otros registros públicos.
4. **Fuente primaria de declaración:** consulta de InfoProbidad ID 5097093, presentada el 25-03-2025, corroboró nombre, cargo de notario, organismo Poder Judicial, fecha declarada de asunción 01-07-2004 y su registro societario. Una declaración 2019 del mismo nombre también mostró Empresas Copec como acción no controladora; el identificador societario de esa copia está en blanco [1][7].
5. **Ruta institucional del cargo:** búsqueda por nombre completo en sitio del Poder Judicial no produjo documento institucional recuperable que lo nombre en contratos de Copec; el primer resultado institucional consultado devolvió «Not Found». No se toma esa búsqueda negativa como prueba de ausencia. El sitio de la notaría identifica al titular y publica datos de contacto institucionales, pero no contiene material de compras públicas [6].
6. **Ruta pública de compras / entidad:** búsqueda en Mercado Público por razón social/RUT societario halló una ficha de proveedor que identifica a COPEC S.A. y el RUT societario; no identifica a Martín Illanes como oferente, comprador ni responsable de proceso. No seleccioné una orden de esa sociedad como suya [4].
7. **Ruta regulatoria/corporativa:** consulté la ficha de entidad de la CMF para Empresas Copec. La pestaña de prospectos de emisión de acciones indicó que no había información registrada en esa sección; no resolvió participación accionaria ni permitió computar porcentaje individual [3]. El portal de notarías del Registro de Empresas y Sociedades se revisó; su contenido recuperado no mostró una ficha individual aplicable a esta pregunta [5].
8. **Búsquedas adversariales:** queries separadas por nombre + empresa, nombre + notario, dominio del Poder Judicial, proveedor Copec en Mercado Público y número societario. No apareció evidencia pública independiente de que el notario hubiera intervenido en una adjudicación, fiscalización o decisión sobre una compra de Copec.

## Mapa de afirmaciones, alternativa y gate

- **Hecho:** la declaración de 2025 informa 1.813 acciones de Empresas Copec, adquiridas el 24-02-2011, no controladoras. **Primaria:** InfoProbidad ID 5097093 [1]. **Contraste:** cinco filas del oro en consultas con RUT societario exacto. **Límite:** declaración autoinformada; no establece porcentaje de capital ni precio actual.
- **Señal que motivó el cribado:** la pantalla agregada enlaza una gran cantidad de órdenes del proveedor al universo de personas que declaran ese proveedor. **Verificación adversarial:** unión transaccional exacta por persona y RUT dio 0 filas; no se pudo atribuir una orden a Martín Illanes. **Inferencia que se rechaza:** no concluir que las 43.968 compras o los montos de Copec correspondan a sus ingresos/gestión.
- **Explicación legítima más plausible:** una inversión minoritaria, no controladora, declarada desde 2011 en una empresa proveedora amplia que tiene ventas a muchas instituciones. Esto es compatible con tenencia de cartera; no demuestra cuál era su porcentaje ni si alguna compra concreta tuvo relación con su labor notarial.
- **Gate:** identidad corroborada y declaración reproducible; relevancia potencial explicable por compras del Estado, pero no hay hecho material individualizado, fuente primaria que lo nombre en una compra ni vínculo funcional con compras, evaluación, autorización, administración o recepción. No supera el gate editorial y no se prepara caso.
- **Próxima acción/reapertura:** solo reabrir si aparece una fuente primaria que vincule al notario con una orden/proceso concreto o que permita verificar un interés específico en el proveedor durante ese proceso. No repetir búsquedas generales ni inferir vínculo por accionariado minoritario.

## Fuentes

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5097093 — InfoProbidad, declaración 25-03-2025.
[3] https://www.cmfchile.cl/institucional/mercados/entidad.php?control=svs&grupo&mercado=V&pestania=45&row&rut=90690000&tipoentidad=RVEMI&tpl=alt&vig=VI — CMF, consulta a prospectos de acciones de Empresas Copec.
[4] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?qs=14kDFD1hXnPAtB2qvY2Ixg== — Mercado Público, ficha de proveedor Copec encontrada en búsqueda.
[5] https://www.registrodeempresasysociedades.cl/Notarias.aspx — Registro de Empresas y Sociedades, notarías en operación.
[6] https://www.notarial.cl/index.php?cons_sel=not_a_martinil&modo= — Notaría Alfredo Martin Illanes.
[7] https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=3f2a98e64b9abd9ae71c3cf2f96af482 — InfoProbidad, declaración 20-08-2019.

**Contraste independiente:** no disponible en esta corrida. La consulta exacta de órdenes no arrojó un conjunto de transacciones al que aplicar un segundo conteo.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5097093 — InfoProbidad declaración 2025 de Ramón Alfredo Martín Illanes
    > "| Nombre o Razón Social | EMPRESAS COPEC S.A. |"
    > "| Cantidad / Porcentaje | 1813 |"
    > "| Fecha de adquisición | 24-02-2011 |"
    > "| Tiene Calidad de Controlador | false |"
[3] https://www.cmfchile.cl/institucional/mercados/entidad.php?control=svs&grupo&mercado=V&pestania=45&row&rut=90690000&tipoentidad=RVEMI&tpl=alt&vig=VI — CMF Empresas Copec
    > "Al día de hoy no hay información registrada."
[4] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?qs=14kDFD1hXnPAtB2qvY2Ixg== — Mercado Público orden de compra a Copec
    > "| R.U.T. | 99.520.000-7 |"
    > "| Proveedor | COPEC S.A. |"
[5] https://www.registrodeempresasysociedades.cl/Notarias.aspx — Registro de Empresas y Sociedades: notarías en operación
    > "Notarías en Operación"
[6] https://www.notarial.cl/index.php?cons_sel=not_a_martinil&modo= — Notaría Alfredo Martin Illanes
    > "Notaria Alfredo Martin Illanes - Providencia"
[7] https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=3f2a98e64b9abd9ae71c3cf2f96af482 — InfoProbidad declaración 2019: Empresas Copec no controlador
    > "| Nombre o Razón Social | EMPRESAS COPEC S.A. |"
    > "| Tiene Calidad de Controlador | NO |"
