# Inti Alavia Moya, actividad odontológica declarada durante su período como concejal — descartada

- **ID:** `inti-alavia-moya-actividad-odontologica`
- **Categoría:** actividades/cargos/temporalidad; salud pública.
- **Estado:** descartada; no es borrador de caso.
- **Fecha de trabajo:** 2026-10-05 UTC.
- **Corte del oro:** `meta.build_date=2026-10-02T15:43:07+00:00`; copia local sin cambios, según el pre-run.
- **Identidad:** coincidencia de nombre completo en las declaraciones InfoProbidad 1752645 y 1757231; la Cuenta Pública municipal también enumera a Inti Gabriel Alavia Moya entre los concejales. No se reproduce RUT personal.[3][6][7]

## §0. Resultado ejecutivo

La declaración rectificatoria InfoProbidad 1752645, fechada 31-03-2026, identifica a Inti Gabriel Alavia Moya como concejal de la Municipalidad de Calama, con fecha de asunción 06-12-2024.[6] En actividades actuales registra trabajo remunerado como odontólogo en Clínica Dental Miscanti, con inicio declarado 01-03-2026.[6]

Otro snapshot del mismo día, InfoProbidad 1757231, clasifica la declaración como actualización periódica y registra actividades profesionales remuneradas en Clínica Dental Miscanti y Liondent, ambas desde 01-07-2025.[7] El oro enlaza este snapshot como no actual y 1752645 como actual rectificatorio. La diferencia de categorías y fechas se conserva como discrepancia entre declaraciones; no se infiere cuál reemplaza qué dato ni se atribuye error al declarante o al portal.[6][7]

El corte del oro reproduce siete snapshots del nombre completo y cinco filas de actividad. Una consulta independiente por el RUT societario de Clínica Dental Miscanti y los nombres Miscanti/Liondent en `purchase_order` devolvió cero filas; una búsqueda web por RUT y por razón social no localizó una orden específica de estas entidades. Esto limita el resultado a las consultas efectuadas, no prueba que nunca hayan contratado con el Estado.[^oro]

**Decisión: descartada como pista de caso.** La evidencia respalda una actividad profesional privada declarada durante el cargo, pero no una venta al municipio, una intervención en compra o decisión de salud, una relación de propiedad/control societario, ni otra conexión concreta con el ejercicio del cargo. La explicación más plausible es empleo profesional odontológico ordinario, declarado en InfoProbidad; no se presenta como verificado el lugar físico de atención ni la condición societaria de Alavia.[6][7]

## 1. Mapa de afirmaciones

- **Identidad/cargo — reportado en fuente primaria:** la declaración 1752645 consigna el nombre completo, concejal en Municipalidad de Calama y asunción 06-12-2024; la Cuenta Pública municipal lo enumera como integrante del concejo.[3][6]
- **Actividad profesional — reportado en fuentes primarias:** 1752645 indica actividad económica remunerada de odontólogo en Clínica Dental Miscanti desde 01-03-2026.[6] El snapshot 1757231 indica actividad profesional remunerada en Miscanti y Liondent desde 01-07-2025.[7]
- **Discrepancia — medida en el oro y visible en las declaraciones:** ambas declaraciones tienen fecha 31-03-2026, pero difieren en clase de actividad, fecha de inicio y número de entidades; 1752645 figura `is_current=true` en el oro y 1757231 `is_current=false`. No se armonizan ni se trata la diferencia como prueba de ocultamiento o incumplimiento.[6][7]
- **Propiedad societaria:** ninguna de las dos actividades citadas constituye por sí sola una declaración de acciones o control en las sociedades nombradas. La declaración 1752645 dice que no hay información declarada en comunidades/sociedades/empresas; no se atribuye propiedad ni participación en la clínica.[6]
- **Vínculo funcional potencial — inferencia acotada:** la Ley 18.695 contempla funciones municipales relacionadas con salud pública. Eso hace razonable comprobar una eventual conexión funcional, pero no demuestra que este concejal tuviera una atribución individual o interviniera en un asunto de salud.[11]
- **Contratación pública — medido en el oro:** `purchase_order` buscado por RUT societario `76.732.158-9` (normalizado a dígitos) y por nombres con `MISCANTI` o `LIONDENT` devuelve cero filas y cero códigos únicos. La prueba y el universo consultado quedan guardados en la consulta 2; el resultado no cubre variantes no recogidas por esos campos ni demuestra ausencia fuera del artefacto.[^oro]

## 2. Rutas examinadas y contraste (2026-10-05)

1. **Dedupe de identidad y declaración:** busqué nombre completo, sociedad/entidades y huella en `INDICE.md`, fichas y casos públicos. No encontré ficha ni caso previo con esta persona y pista; no se atribuye a un homónimo. La búsqueda del repositorio público y la base local fue negativa dentro de esos ámbitos revisados.
2. **Serie y actividades del oro:** ejecuté `consultas/inti-alavia-moya-actividad-odontologica-1.sql`, que devuelve siete snapshots, incluidos los dos del 31-03-2026 y cinco filas de actividad. Se reprodujeron nombre completo, institución, cargo, fecha, declaración de origen, tipo de actividad, entidad y marca de remuneración. No se contó cada snapshot como una actividad distinta.
3. **Declaraciones de origen:** abrí InfoProbidad 1752645 y 1757231. La primera se identifica como rectificación a requerimiento de órgano fiscalizador y presenta la actividad económica en Miscanti desde marzo de 2026.[6] La segunda identifica actualización periódica y dos empleadores odontológicos desde julio de 2025.[7] No se obtuvo una explicación pública del motivo de la diferencia; no se la interpreta como irregularidad.
4. **Corroboración institucional del cargo:** consulté la Cuenta Pública municipal, que enumera a Inti Gabriel Alavia Moya como uno de los integrantes del Concejo Municipal.[3] La página municipal de concejales fue consultada, pero su contenido extraído en esta sesión no mostró la ficha de Alavia; no la uso para afirmar más que el nombre localizado en resultados del sitio.
5. **Contexto de la función:** revisé la versión de Ley 18.695 en Ley Chile/BCN. Su artículo 4 incluye funciones relacionadas con salud pública.[11] Es contexto normativo general, no prueba de una asignación de Alavia a una comisión, fiscalización, presupuesto o decisión sanitaria particular.
6. **Proveedores y compras:** ejecuté `consultas/inti-alavia-moya-actividad-odontologica-2.sql`. La búsqueda exacta por el RUT societario de Miscanti y por nombres normalizados de las dos clínicas arrojó 0 filas, 0 códigos de OC y 0 compradores. En web busqué el RUT y la razón social junto a Mercado Público, y el nombre completo junto a Miscanti/Calama; los resultados visibles no identificaron una compra pertinente. No eludí CAPTCHA, login ni controles.
7. **Actividad comercial y alternativa legítima:** el perfil público de la clínica se denomina Miscanti Clínicas Odontológicas; el sitio de Lion Dent se presenta como clínica dental y describe servicios odontológicos.[5][8] Son fuentes de las entidades, no evidencia independiente de que Alavia prestara un servicio específico ni de la sede donde trabajaba. La explicación más plausible es prestación odontológica remunerada en una clínica; la declaración no reporta una relación con compras municipales.[6][7]
8. **Contraste adversarial:** separé los snapshots por ID, reagrupé la búsqueda de órdenes por código y RUT societario, y contrasté el cargo en un documento municipal. Esto reduce riesgo de mezclar snapshots o proveedores, pero no hubo un segundo revisor independiente en esta corrida.

## 3. Gate, límites y próxima acción

- **Identidad corroborada:** sí, nombre completo en declaraciones de InfoProbidad y en fuente municipal de composición del concejo.[3][6][7]
- **Hecho reproducible:** sí: actividad remunerada de odontólogo declarada; existe una diferencia entre dos snapshots del mismo día y quedó descrita sin resolver.[6][7]
- **Relevancia pública explicable:** solo hay una potencial superposición temática abstracta entre salud municipal y profesión odontológica. No apareció un acto, contrato, proveedor municipal, decisión de salud o intervención que la vuelva material en este caso.[11]
- **Independencia del cruce:** la actividad se cotejó en InfoProbidad y en el oro; el nulo de compras queda acotado a filtros explícitos. No se atribuyen ingresos, acciones ni control de las clínicas.
- **Explicación legítima:** empleo profesional odontológico declarado en una clínica, compatible con actividad ordinaria. Las fuentes consultadas no acreditan una compra pública, beneficio municipal ni participación del concejal en decisiones relativas a esos empleadores.[5][6][7]

No cumple el gate para borrador. Se descarta esta huella y se reabrirá únicamente si aparece un documento primario fechado que vincule a Alavia con una decisión municipal concreta sobre uno de esos empleadores, una compra pública pertinente o una intervención en presupuesto/servicios de salud que afecte a una entidad nombrada. No se requiere gestión humana ahora: la evidencia esencial que falta no está detrás de un bloqueo identificado.

[^oro]: EstadoClaro `gold.duckdb`, corte `2026-10-02T15:43:07Z`, consultas reproducibles [`consultas/inti-alavia-moya-actividad-odontologica-1.sql`](../consultas/inti-alavia-moya-actividad-odontologica-1.sql) y [`consultas/inti-alavia-moya-actividad-odontologica-2.sql`](../consultas/inti-alavia-moya-actividad-odontologica-2.sql), ejecutadas el 2026-10-05 con `ec-gold-sql` en modo de solo lectura.

## Sources

[3] https://www.municipalidadcalama.cl/assets/docs/CTA_PUBLICA_DIGITAL_OK-PENDRIVE.pdf — Municipalidad de Calama: Cuenta Pública 2024
    > "Los integrantes del Concejo Municipal son"
    > "8. Sr. Inti Gabriel Alavia Moya"
[5] https://www.instagram.com/clinicadentalmiscanti?hl=en — Clínica Dental Miscanti: perfil institucional
    > "Miscanti Clínicas Odontológicas"
[6] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1752645 — InfoProbidad: declaración de Inti Alavia (31-03-2026)
    > "Cargo o función | Concejal"
    > "Nombre o Razón Social | CLINICA DENTAL MISCANTI"
    > "Fecha inicio | 01-03-2026"
    > "No tiene información declarada en esta sección"
[7] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1757231 — InfoProbidad: otra declaración de Inti Alavia (31-03-2026)
    > "Nombre o Razón Social CLINICA DENTAL MISCANTI"
    > "Nombre o Razón Social LIONDENT"
    > "Fecha inicio 01-07-2025"
[8] https://liondent.cl — Lion Dent: sitio institucional
    > "Clínica Dental Lion Dent"
[11] https://www.bcn.cl/leychile/navegar?idNorma=251693 — Ley Chile/BCN: Ley 18.695 Orgánica Constitucional de Municipalidades
    > "funciones relacionadas con: b) La salud pública"
    > "b) La salud pública y la protección del medio ambiente"
