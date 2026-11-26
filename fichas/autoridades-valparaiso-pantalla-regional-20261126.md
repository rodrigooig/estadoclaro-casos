# Pantalla regional de DIP y órdenes — Región de Valparaíso, 26-11-2026

**Estado:** descartada como caso regional único. La pista de Hijuelas/Kude queda separada en su ficha propia; este cierre no concluye que sus órdenes fueran ilegales ni atribuye intervención a Aliaga.

## Corte y método (solo fuentes integradas en EstadoClaro)

Esta ficha corrige el alcance del primer registro. El trabajo pedido es búsqueda desde cruces de declaraciones de intereses y patrimonio (DIP), participaciones societarias, ChileCompra, ventanas de cargo y datos Servel integrados. No se usa prensa, búsqueda web ni denuncias como mecanismo de selección.

- `gold.duckdb` se construyó el **2026-11-24 20:08:20 UTC**; `procurement_cutoff=2026-11-24`. El mayor `sent_date` de `purchase_order` de la Región de Valparaíso en esta base es **2026-11-23**. El feed `novelty` de declaraciones llega al 2026-11-20.
- Pantalla SQL sobre las 38 comunas de Valparaíso y GORE: declaraciones marcadas vigentes en municipios/GORE, sociedades declaradas enlazadas por RUT exacto a proveedores, compras por institución y región, mismas instituciones, trato directo/compra ágil, y ventanas de vigencia. Contraste adicional con el conjunto Servel disponible (municipales/regionales 2024 y presidencial/parlamentario 2025) y novedades materiales del oro.
- La consulta de universo produjo 429 `person_id` de autoridades con declaraciones vigentes en 37 instituciones locales/GORE y 13 personas con algún proveedor societario enlazado. Son filas/personas del modelo de DIP y **no equivalen a padrón completo ni a 429 cargos actuales verificados**: hay declaraciones tardías, suplencias, cambios de mandato y registros incompletos. Cada pista requiere verificar tenure y ventana.
- El join directo por RUT a `purchase_order` es una observación de dos registros, no prueba que el titular controlara la adjudicación o recibiera un beneficio personal. La compañía puede contratar por vía competitiva/ordinaria; la falta de coincidencia con el propio servicio no prueba que no haya relación funcional con otras decisiones. Los montos son CLP de la fecha de cada orden; las UF corresponden a cada fecha según EstadoClaro.

## Pistas que sí emergen del cruce

### 1. Prioridad de seguimiento: José Ricardo Aliaga Cruz / Sociedad Kude / Hijuelas

Es el candidato nuevo más claro de esta pantalla por coincidencia de interés declarado y repetición temporal durante el cargo. La ficha individual está en `fichas/jose-ricardo-aliaga-kude-hijuelas-20261126.md`.

- Tres declaraciones como CORE de Valparaíso (IDs 818055, 860370, 1056896) registran el 50 % no controlador de SOCIEDAD KUDE LIMITADA (RUT 76.603.470), declarado adquirido en 2001.
- La Municipalidad de Hijuelas hizo cuatro OCs al RUT exacto en marzo-junio de 2022, todas marcadas trato directo y causal “Emergencia, urgencia o imprevisto”, rubro principal de artículos de construcción. Cada una fue por CLP $6.168.000; total CLP $24.672.000 (768,78 UF a la fecha de cada orden). Tres órdenes figuran aceptadas y una enviada al proveedor.
- La declaración de CORE presenta inicio del cargo el 11-03-2022. Tres órdenes (abril–junio) quedan dentro de la ventana de cargo/datos declarados posterior a la DIP de 28-03: CLP $18.504.000 (574,13 UF). La primera, de 18-03, está después del inicio declarado del cargo pero antes de la presentación del 28-03 y queda fuera de la ventana de DIP acreditada por el join; se mantiene como tramo temporal separado.
- Comprador: Municipalidad de Hijuelas; cargo declarado: GORE. `same_institution=false`. El gold no documenta intervención de Aliaga, decisión de fondos del GORE, o beneficio individual. La repetición y la causal justifican pedir/revisar expedientes; no permiten afirmar direccionamiento ni ilegalidad.

### 2. Cruce histórico, sin superposición probada con la alcaldía actual: Alberto Patricio Aliaga Díaz / Ferretería Aliaga / Cabildo

- La declaración actual registra 98,5 % y control de SOCIEDAD FERRETERIA ALIAGA LTDA (RUT 76.297.634). Las órdenes encontradas del mismo RUT a la Municipalidad de Cabildo son 28, entre 06-04-2022 y 03-09-2024, por CLP $29.198.279 (821,07 UF en registros de compra); 27 están marcadas trato directo y 21 como compra ágil.
- Las órdenes son anteriores a su fecha de asunción como alcalde, 06-12-2024. El registro anterior de “Jefe de Servicio” en Cabildo tiene ventana cerrada por EstadoClaro el 01-07-2018; la candidatura de 2024 no prueba cargo durante los contratos. Con las fechas y ventanas disponibles, no se acredita coincidencia temporal con autoridad municipal. **No elevar a caso sobre ese cruce.**
- Por separado, el panel de DIP muestra cambios grandes en valores declarados de bienes entre declaraciones de marzo, septiembre y rectificación de 2026 (net worth en el gold: 73.006,38 UF, 51.860,07 UF y 49.340,42 UF). La primera variación coincide con cambios en valores de inmuebles/activos ya existentes, sin nuevos ni retirados en `novelty`, y la última es una rectificación a requerimiento. Tratar como pista de variación/versiones declaradas; no como adquisición de riqueza o falsedad sin cotejar formularios completos y su historia.

### 3. Señal regional de menor prioridad: Paulina Yáñez Gula / Instituto de Capacitación Orión

- El gold registra 10 acciones, sin control, en Instituto de Capacitación Orión Ltda. y tres órdenes ágiles de la Municipalidad de Viña del Mar a ese RUT durante el período CORE: 18-01-2025 ($1.200.000), 14-07-2025 ($2.990.000) y 03-03-2026 ($3.600.000); CLP $7.790.000 acumulados (197,82 UF a fechas de compra). La primera fue posterior al inicio de CORE (06-01-2025) pero anterior a su DIP de 03-02; las otras dos son posteriores.
- No son compras del GORE ni se documenta intervención o relación con transferencias/decisiones CORE. Participación minoritaria, compras ágiles y cuantía limitada; **solo pista de baja prioridad**, mantener cerrada salvo expediente que conecte su función con compras de Viña o un asunto de financiamiento regional.

### 4. Señal menor: Javier Álamos / Gestión Consciente Capacitaciones

Tres órdenes por CLP $500.002 (12,61 UF) en total a dos municipalidades de la Región (Quintero y Puchuncaví), entre 06-11 y 11-11-2025. Declara control de la sociedad; ninguno de los compradores es su institución GORE. Importe pequeño, dos compras “para informar” y una ágil; sin evidencia de intervención. No priorizar salvo expediente que vincule compra con decisión CORE/GORE.

### 5. Cruces de campaña

La pantalla de `campaign_self_supply` para Valparaíso encontró 3 filas agregadas para las campañas cubiertas por el producto. Corresponden a señales ya registradas: Jorge Garcés (caso publicado), Verónica Rossat (caso existente) y Ángela Cabezón (pista descartada); no salió una nueva relación de campaña/proveedor que justifique duplicado. El sistema no cubre rendiciones 2021, así que no se infiere nada sobre la candidatura CORE 2021 de Aliaga a partir de esta consulta.

## Señales descartadas o límites del cruce

- Las empresas ampliamente transadas (p. ej., LATAM) aparecen por participaciones no controladoras y muchísimas ventas del proveedor a organismos distintos; no atribuir sus compras al titular. La pantalla fue filtrada por RUT y ventanas, y las señales de grandes emisores quedan fuera de la prioridad por sí solas.
- No apareció nueva compra de Rossat a Hijuelas; su voluminoso cruce regional ya está documentado en la bitácora. El reporte de actualización de sus compras posteriores no se duplica como nuevo caso.
- Se excluyen órdenes personales como persona natural, relaciones sin RUT coincidente, compras anteriores/siguientes a la ventana declarada y vínculos de nombre sin identidad confirmada.
- Las fechas/status de cargo son las derivadas de declaraciones y del modelo de EstadoClaro, no un padrón de nombramientos perfecto. `same_institution` NULL siempre significa no determinable, no “distinto”.

## Decisión y cierre

La pantalla regional como objeto agregado no pasa a caso editorial: las coincidencias cruzan personas, organismos y períodos distintos. Su señal más concreta es José Ricardo Aliaga Cruz, CORE, socio del 50% no controlador declarado de Sociedad Kude Ltda. (RUT 77.603.470-3), y cuatro órdenes de la Municipalidad de Hijuelas a la misma sociedad por mantenimiento de jardines/áreas verdes, cada una CLP $6.168.000; tres son posteriores a la DIP del 28-03-2022. Mercado Público identifica los cuatro pedidos como emergencia/urgencia/imprevisto. La unidad de compra fue la Secretaría Comunal de Planificación municipal, no el GORE. **Hechos de compra y participación no acreditan que Aliaga interviniera, que hubiera fondos GORE, ni que el municipio lo favoreciera por su cargo.** El servicio recurrente de mantención es la explicación legítima más fuerte; el fundamento y los antecedentes de los anexos de las OCs siguen siendo el punto a verificar.

Cotejo primario complementario para el cierre: InfoProbidad, declaraciones de Aliaga (IDs 818055, 860370 y 1056896: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=818055 ; https://www.infoprobidad.cl/Declaracion/Declaracion?ID=860370 ; https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1056896); Mercado Público, órdenes 3775-28-SE22, 3775-30-SE22, 3775-43-SE22 y 3775-48-SE22 (las páginas originales citan sociedad, RUT, comprador, ítem, fecha, monto y categoría de emergencia). El barrido general consignado arriba usó el gold 2026-11-24; esta verificación reproducible de persona/sociedad/órdenes utilizó el corte más reciente de la corrida, `meta.build_date=2026-11-26T01:01:56+00:00` (consulta `consultas/jose-ricardo-aliaga-kude-hijuelas-1.sql`).

Por ser una línea distinta, no se incorpora a esta ficha regional un caso sobre Aliaga: su ficha individual permanece separada para el cierre de esa pista. Reabrir esta pantalla solo ante un nexo documental específico entre una decisión/fondo del GORE y las compras municipales, o un documento primario que atribuya intervención del CORE; las otras comunas también requieren expedientes propios. Las señales secundarias Alberto Aliaga–Cabildo y Paulina Yáñez–Viña no justifican casos con la evidencia disponible. Esta pantalla no fue un censo exhaustivo y no descarta alertas pendientes de investigación individual.
