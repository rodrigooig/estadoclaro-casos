# Revisión de pantalla amplia — 2026-10-05

**Resultado:** no se abrió pista nueva. La pantalla de proveedores a su misma institución devolvió a Juan Carlos Sepúlveda Sepúlveda; deduplicación por nombre completo, razón social y RUT societario encontró el caso ya publicado `casos/autocontratacion/sepulveda-sepulveda-servicio-salud-ohiggins.md` (en particular §§1–2 y «Qué queda por verificar», líneas 1–19 y 29–34). No se creó borrador paralelo.

## Nueva evidencia y efecto editorial

InfoProbidad publica la declaración del 28-04-2020 como jefe de unidad del Servicio de Salud O’Higgins, con una actividad médica remunerada en el Hospital de San Fernando y un derecho controlador declarado en Torres y Sepúlveda Limitada (RUT societario 76.759.005-9).[1]

La ficha primaria de Mercado Público para la OC 1627-16-SE20 identifica al Hospital de San Fernando como unidad compradora, al proveedor bajo el mismo RUT societario, la fecha de envío 25-06-2020 y un total de CLP 2.643.840; el detalle describe servicios de intervenciones de otorrinolaringología para listas de espera, con referencia a la Res. Ex. N.º 2705 de 24-12-2019.[2]

Una noticia oficial del Hospital San Fernando, fechada 07-12-2023, identifica a un médico con el nombre completo «Juan Carlos Sepúlveda Sepúlveda» como otorrinolaringólogo del establecimiento.[3]

Dado que la declaración también enlaza el nombre completo con actividad remunerada en ese hospital, esto aporta corroboración institucional para la identidad profesional, aunque posterior a la compra y no prueba quién prestó las 18 unidades del servicio ni qué papel tuvo en la orden.[1][2][3]

Una reproducción del aviso del Diario Oficial informa que en 2025 Torres y Sepúlveda Limitada se transformó en una SpA y que el capital de esa transformación fue suscrito íntegramente por Juan Carlos Sepúlveda Sepúlveda.[4]

Es evidencia posterior al contrato; no establece por sí sola la composición societaria ni su administración en junio de 2020. No se usa para atribuir el proveedor de esa fecha más allá del enlace de RUT de la declaración y de la orden.[1][2][4]

## Rutas examinadas (05-10-2026 UTC)

1. **Pantalla amplia de compras a misma institución:** consulta actual del oro, sin umbral de monto, arrojó 14 filas; el candidato coincide con una pista ya publicada. SQL: `consultas/pantalla-wide-same-institution-20261005.sql`.
2. **Sociedades declaradas por varias personas:** pantalla de declaraciones vigentes y sociedades con al menos tres órdenes produjo principalmente proveedores de amplia propiedad (Entel, Copec, Sonda, Latam y otros); el volumen agregado no atribuye una relación comercial personal exclusiva. SQL: `consultas/pantalla-wide-shared-suppliers-20261005.sql`.
3. **Órdenes por trato directo:** pantalla de proveedores declarados con cinco o más órdenes y al menos tres marcadas como adjudicación directa mostró principalmente grandes proveedores con múltiples declarantes; no convirtió el indicador de modalidad en irregularidad. SQL: `consultas/pantalla-wide-direct-awards-20261005.sql`.
4. **Actividades remuneradas del sector salud:** consulta actual por rubro/entidad identificó 28 registros, con mayoría fuera de la ventana de 12 meses; no se leyó cada cargo propio como vínculo privado distinto. SQL: `consultas/pantalla-wide-health-activities-20261005.sql`.
5. **Serie del declarante y participación:** query individual devolvió dos snapshots (2017 y 2020), enlazando el mismo RUT societario, comprador institucional y una sola OC durante el intervalo; la declaración 2020 y la orden fueron reabiertas directamente en los portales fuente.[1][2] SQL: `consultas/sepulveda-sepulveda-servicio-salud-verificacion-20261005-1.sql`.
6. **Orden y deduplicación del conteo:** query individual de Mercado Público devolvió una fila para `1627-16-SE20`; una consulta separada por `order_code` devolvió una fila, un proveedor y CLP 2.643.840, sin duplicación del contrato. La ficha primaria del portal se cotejó con monto/unidad y descripción del ítem.[2] SQL: `consultas/sepulveda-sepulveda-servicio-salud-verificacion-20261005-2.sql`.
7. **Índice institucional del hospital:** búsqueda web exacta por “1627-16-SE20”, “Res. Ex. 2705”, el texto de la compra y el nombre completo encontró la nota oficial del hospital de 2023, pero no el acto/resolución ni anexos de la compra. La propia ficha de la OC enlaza «Ver Anexos», sin exponerlos en el texto recuperado.[2][3]
8. **Registro societario/contexto alternativo:** búsqueda por razón social y RUT encontró la reproducción del aviso del Diario Oficial de 2025; su fecha posterior impide resolver quién administraba o ejecutó los servicios en 2020.[4]
9. **Deduplicación de casos:** búsqueda en el índice de fichas de investigación no encontró entrada previa con esta pista; una búsqueda literal independiente en el repositorio público de casos sí halló el caso publicado citado arriba. Esto impide abrir una ficha de pista duplicada.

## Mapa de afirmaciones, alternativa y gate

- **Hecho establecido:** declaración de cargo, entidad, actividad médica y derecho controlador en la empresa; orden pública de un comprador del mismo servicio de salud al RUT de la sociedad, con una sola OC y monto nominal reproducible.[1][2]
- **Hecho nuevo:** fuente institucional del hospital corrobora que una persona con el nombre completo aparece como otorrinolaringólogo del Hospital San Fernando en diciembre de 2023.[3]
- **Inferencia limitada:** la correspondencia entre nombre completo, actividad declarada, hospital y especialidad refuerza que el otorrinolaringólogo citado por el hospital es probablemente el mismo declarante; no prueba que participara en autorización, evaluación, administración, recepción ni prestación del contrato de 2019/2020.[1][2][3]
- **Explicación legítima más plausible:** compra de prestaciones médicas especializadas para intervenciones quirúrgicas y listas de espera por una sociedad declarada de servicios médicos, dentro de un plan cuya resolución citada antecede a la orden enviada en 2020.[1][2] Es compatible con una prestación médica institucional ordinaria, pero no determina quién realizó el trabajo ni explica por sí sola la modalidad registrada «Emergencia, urgencia o imprevisto».
- **Refutación activa:** la OC registra 18 unidades de servicios médicos de otorrinolaringología y apunta a una resolución del 24-12-2019; esto debilita una lectura basada solo en la etiqueta del trato directo o en la fecha de envío de 2020. No se obtuvo el texto de esa resolución, respaldo de recepción, contrato, ni evidencia de intervención individual.
- **Gate:** identidad profesional mejor corroborada, hecho material reproducible, pero no hay documento que vincule a Sepúlveda con la decisión o ejecución del contrato ni el expediente/acto justificativo completo. La pista no requiere una ficha nueva porque es caso público existente; no se propone borrador ni cambio a `main`.

## Decisión y próxima acción

**Sin avance material en la cuestión central del caso publicado; evidencia nueva acotada sobre identidad profesional.** No se afirma irregularidad ni se reabre como pista separada. Recomiendo revisión editorial humana del caso existente para decidir si la nota oficial de 2023 debe incorporarse como corroboración de identidad, manteniendo expresamente la incertidumbre sobre intervención en la compra. El expediente esencial para resolver el punto pendiente sigue siendo la Res. Ex. N.º 2705 de 24-12-2019, anexos/contrato y respaldo de recepción de la OC, más evidencia documental del rol de Sepúlveda en la compra. No se eludieron controles, no se contactó a terceros y no hubo revisor independiente en esta corrida.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=543527 — InfoProbidad declaracion Juan Carlos Sepulveda 2020
    > "TORRES Y SEPULVEDA LIMITADA"
    > "Organismo | Servicio De Salud O’Higgins"
    > "Fecha | 28-04-2020"
    > "Tiene Calidad de Controlador | SI"
[2] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1627-16-SE20 — Mercado Publico orden 1627-16-SE20
    > "TOTAL OC | $ 2.643.840"
    > "Fecha de Envío | 25-06-2020"
    > "Proveedor | JUAN CARLOS"
    > "R.U.T. | 76.759.005-9"
    > "Producto / Servicio | Personal médico temporal"
[3] https://www.hospitalsanfernando.cl/noticias/id/2327/Comit%C3%A9-de-Etica-Asistencial-de-Hospital-San-Fernando-organiz%C3%B3-primera-jornada-de-participaci%C3%B3n-y-capacitaci%C3%B3n — Hospital de San Fernando — actividad de Comité de Ética Asistencial
    > "otorrinolaringólogo del Hospital San Fernando"
    > "jueves 07 de diciembre del 2023"
[4] https://www.portalchile.org/diario-oficial/2025/02/26/torres-y-sepulveda-limitada-76-759-005-9-2615758 — Diario Oficial reproducido por PortalChile: transformación societaria, 2025
    > "transformaron la Sociedad Comercial de Responsabilidad Limitada TORRES Y SEPÚLVEDA LIMITADA en la sociedad por acciones razón social “SOCIEDAD TORRES Y SEPÚLVEDA SpA”"
    > "Capital: $1.000.000 y dividido en 1000 acciones, que corresponde al capital de la sociedad que por este acto se transforma aportado y suscrito íntegramente por don Juan Carlos Sepúlveda Sepúlveda."
