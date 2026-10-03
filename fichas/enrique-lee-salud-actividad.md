# Enrique Lee Flores, práctica médica declarada y Comisión de Salud — pista descartada

- **ID:** `enrique-lee-salud-actividad`
- **Categoría:** actividades/cargos/temporalidad; salud pública
- **Estado:** descartada como pista de caso con la evidencia revisada; no se afirma irregularidad
- **Fecha de trabajo:** 2026-10-03
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; consultas solo lectura con `ec-gold-sql` el 2026-10-03.
- **Deduplicación:** búsqueda por nombre completo, sociedad y RUT societario en el índice, fichas y casos públicos revisados: no apareció ficha o caso previo con esta huella. Resultado acotado a esos repositorios y consultas, no prueba universal de ausencia.

## Síntesis

InfoProbidad muestra una declaración de Enrique Lee Flores, senador, fechada 08-04-2026. Registra una actividad económica remunerada en medicina asociada a SERMED LIMITADA y declara 66% de participación y calidad de controlador en esa sociedad; su giro consignado es «prestadores de servicios médicos y paramédicos».[1]

El perfil del Senado lo describe como médico cirujano con trayectoria en salud pública y privada; la integración oficial del período 2026–2030 lo incluye en la Comisión de Salud.[2][7] La ficha oficial de una sesión del 05-05-2026 registra al senador Lee como integrante y una discusión sobre subsidios de incapacidad laboral y facultades de COMPIN.[4]

La coincidencia entre una actividad económica médica declarada y participación en una comisión parlamentaria de salud es una conexión temática, no prueba de intervención en un asunto que favorezca a SERMED, ni conflicto o infracción. La explicación legítima más plausible es continuidad de su práctica profesional médica, que el propio perfil institucional describe; no se encontró en esta revisión un contrato público enlazado por el RUT de la sociedad que transformara la coincidencia general en una relación concreta con decisiones del Senado.[2]

**Decisión:** descartar la pista en su forma actual. No preparar borrador de caso. Reabrir solo ante evidencia primaria y fechada de una actuación legislativa o gestión individual vinculada a SERMED/Artemed, o de una relación contractual pública específica asociada a esa sociedad y pertinente a una función ejercida por Lee.

## Mapa de afirmaciones y rutas revisadas (2026-10-03)

1. **Identidad, rol declarado e interés económico — fuente primaria.** Se consultó la declaración InfoProbidad ID 1776814: nombre completo, cargo de senador, fecha, actividad remunerada médica en SERMED y 66%/control societario.[1] El perfil del Senado corrobora por separado el nombre completo, la circunscripción y el período senatorial 2026–2034.[2] No se atribuyen datos a homónimos.
2. **Historial del artefacto — consulta directa.** `consultas/enrique-lee-salud-actividad-1.sql` devuelve nueve snapshots entre 2017 y junio de 2026; el snapshot de asunción al Senado (08-04-2026) conserva la actividad profesional remunerada y la económica médica en SERMED. La secuencia incluye además un snapshot separado de la Cámara de Diputados fechado 08-06-2026, cuyo campo `end_date` consigna 11-06-2026; se registra como una declaración distinta y no se infiere de esa fila continuidad o cese del cargo senatorial. Resultado medido contra el oro del corte indicado; la autodeclaración no verifica prestación efectiva o ingresos.
3. **Relación con el trabajo legislativo — fuentes institucionales.** Se comprobó la integración de la Comisión de Salud en la ficha oficial y en el anuncio institucional del Senado para 2026–2030.[3][7] En la sesión de 05-05-2026 se revisó el tema del subsidio por incapacidad laboral y las facultades de COMPIN; el registro identifica a Lee como integrante.[4] Esto prueba pertenencia y tema de sesión, no su voto individual, una gestión por SERMED ni efecto sobre la empresa.
4. **Contraste adversarial / compras públicas — dato canónico e identificador exacto.** Dos búsquedas independientes en el oro por el RUT societario declarado `76.875.240-0`, normalizado a `768752400`, devolvieron cero filas: `purchase_order` canónico y `declared_supply_order` del cruce. SQL reproducible: consultas 2 y 3. Cobertura: tablas del artefacto con órdenes desde 2020; no descarta compras anteriores, subcontratos, vínculos por otra sociedad o datos no incluidos (METODOLOGIA.md:190–194). La búsqueda web exacta por el RUT no encontró una ficha de proveedor pertinente en los resultados consultados el 2026-10-03. No se transforma ese resultado negativo en afirmación de inexistencia.
5. **Desambiguación de resultado de búsqueda.** Una ficha oficial de Mercado Público recuperada al buscar «Sermed» corresponde a licitación 598-63-L115, informada el 10-07-2015 por DIPRECA para abastecer insumos de su SERMED; registra adjudicación múltiple, sin que la ficha extraída identifique a SERMED LIMITADA de Lee como proveedora.[6] Es previa a la ventana del oro, y no se usa como vínculo de negocio de la sociedad investigada.
6. **Corroboración de registro secundario.** InfoTransparencia muestra el nombre completo, la sociedad, el mismo RUT societario y la participación/control; su propia nota explica que integra información proveniente de InfoProbidad y ChileCompra, por lo que se trata como comprobación de consistencia de visualización, no como fuente independiente del contenido de la declaración.[5]
7. **Búsqueda exacta y alternativa legítima.** Consultas por nombre completo, «SERMED LIMITADA», RUT societario y la combinación con Senado/Salud. La explicación de continuidad profesional es congruente con la biografía del Senado, que informa trabajo clínico en hospital hasta 2004 y posterior ejercicio privado en salud.[2] No se obtuvo evidencia primaria pública revisada de una actuación de Lee ante un contrato de su sociedad, ni de que el Senado o un órgano de salud contratara a SERMED en el conjunto de órdenes del oro.

## Gate editorial

- Identidad corroborada por nombre completo y cargo: **sí**.[1][2]
- Hecho reproducible y fuente primaria: **sí**, actividad e interés societario autodeclarados; no son prueba independiente de actividad efectiva o beneficio.[1]
- Relevancia pública concreta: **insuficiente**; la comisión y el rubro comparten ámbito, pero no se acreditó acción legislativa o gestión relativa a la empresa.[3][4]
- Error de cruce descartado: **sí, dentro del oro y la cobertura indicada**, por consulta directa y consulta separada por RUT a tablas canónicas/de cruce; cero coincidencias.
- Explicación legítima buscada: **sí**; práctica médica privada previa y declarada, congruente con su perfil institucional.[1][2]

**Conclusión editorial:** coincidencia temática de interés para orientar una futura búsqueda documental, no caso publicable. No se afirma que no haya actividad fuera de las fuentes y tablas examinadas ni se atribuye conducta impropia. No se hicieron solicitudes, contactos ni accesos autenticados.

## Reapertura

Solo ante fuente primaria nueva que identifique: (a) acto, proyecto, votación o gestión concreta de Lee relacionada con SERMED/Artemed; o (b) contrato público con coincidencia exacta de RUT societario y una pregunta verificable sobre una función ejercida por él. No repetir la búsqueda genérica por nombre/RUT mientras no aparezca una fuente o identificador nuevo.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1776814 — InfoProbidad, declaración 1776814, Enrique Lee Flores
[2] https://www.senado.cl/senadoras-y-senadores/listado-de-senadoras-y-senadores/enrique-lee-flores-sen — Senado, perfil oficial de Enrique Lee
[3] https://tramitacion.senado.cl/appsenado/index.php?ac=ficha&id=195&mo=comisiones&tipo_comision=10 — Senado, Comisión de Salud, integrantes
[4] https://www.senado.cl/actividad-legislativa/comisiones/195/22493 — Senado, sesión Comisión de Salud 5 mayo 2026
[5] https://www.infotransparencia.cl/AutoridadFuncionario/c10f631d356e265813d72beaa99b3bbf — Consejo para la Transparencia, InfoTransparencia Enrique Lee
[6] https://www.mercadopublico.cl/Procurement/Modules/RFB/StepsProcessAward/PreviewAwardAct.aspx?qs=7MeNlCTzCXVu9mIl+QL2rcmkAu75h7SzIVT6oWVepi0= — Mercado Público, licitación 598-63-L115
[7] https://www.senado.cl/comunicaciones/noticias/conozca-la-integracion-de-las-comisiones-legislativas-para-el-periodo-2026 — Senado, integración de comisiones 2026-2030
