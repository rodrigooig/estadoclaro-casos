# Revisión editorial: sociedad médica CRS de Maipú — Zandra Parisi

## Reevaluación editorial vigente — 2026-10-06

- **ID:** `parisi-fernandez-sociedad-medica-crs-maipu`
- **Estado vigente:** bloqueada por acceso
- **Producto a evaluar:** historial societario pendiente.
- **Alcance:** reencuadre del método; sin nueva corroboración de cifras ni aprobación de caso.

El bloqueo se limita al historial societario indispensable para afirmar vigencia o término de participación. Una revisión automática puede contrastar hechos disponibles, pero no reemplaza ese documento. La transcripción vLex nombra otros titulares y no demuestra la salida de Zandra Parisi. Mantener seguimiento en reserva hasta ruta/documento público nuevo; no trasladar toda la investigación a una aprobación humana genérica.

**Próxima comprobación autónoma:** Retornar con PDF oficial CVE-2766692 o copia oficial accesible del asiento fojas 24.734 N.º 20.106 (1994) y anotaciones que establezca titularidad/fechas. CBRS exigió login y copia cuenta/pago. No atribuir salida, parentesco o intervención desde apellidos/transcripción; no duplicar caso existente.

Aplicar METODO_INVESTIGACION.md v3. El historial de abajo no sustituye este estado vigente.

## Historial de evidencia y decisiones previas

**ID:** `parisi-fernandez-sociedad-medica-crs-maipu` (seguimiento de caso ya publicado; no es una nueva pista).  
**Disposición:** requiere humano para resolver titularidad societaria; no cambiar el caso ni preparar borrador hasta revisar la inscripción con anotaciones marginales.
**Revisión:** 2026-10-05 UTC.  
**Corte de datos:** `meta.build_date = 2026-10-02T15:43:07+00:00` (oro de solo lectura).

## Pregunta nueva

¿Aporta el extracto societario publicado el 07-02-2026 información verificable sobre la salida del 48% de Prestaciones Médicas Ltda. que Zandra Esther Parisi Fernández declaró en agosto de 2025, y permite determinar su participación al asumir como diputada o durante compras posteriores?

## Hechos verificados en esta pasada

La declaración de candidatura del 20-08-2025 consigna que Parisi declaró un derecho del 48% en PRESTACIONES MEDICAS LTDA y que no era controladora.[1]

La declaración por asunción, fechada 01-04-2026, la identifica como diputada desde el 11-03-2026 y lista dos sociedades (Inversiones Parisi SpA y Paz Inversiones SpA), pero no Prestaciones Médicas.[2]

La ficha de la OC 2115-747-SE25 identifica a Prestacones Médicas Z y M Limitada, con el mismo RUT societario 78.593.810-0, por $26.863.000; la orden deriva de la licitación 2115-36-LR24.[3]

La ficha de 2115-36-LR24 la caracteriza como licitación pública abierta, adjudicada el 03-09-2024.[4]

La licitación posterior 2115-24-LR25 también se presenta como pública y abierta; la ficha recuperada muestra fecha de adjudicación 19-01-2026.[5]

La OC 2115-368-SE26, enviada el 12-05-2026, asocia el mismo proveedor y RUT societario con un pago de $25.208.000 por servicios médicos, bajo la licitación 2115-24-LR25, y figura en recepción conforme.[9]

Dos OCs de Educación Zama consultadas como ruta alternativa identifican matrícula/mensualidades de jardín infantil: 1033392-2-TD26 por $3.045.000 y 449-84-TD26 por $3.900.000.[6][7] Son compras distintas, de compradores municipales distintos; las fichas no vinculan a Parisi con autorización o ejecución.

Una transcripción de vLex del extracto del Diario Oficial, CVE-2766692, informa que una escritura del 19-01-2026 modificó la sociedad médica: María Fernanda Ramírez Parisi, descrita allí como titular del 98%, cedió 46 puntos porcentuales a Marcelo Gabriel Ramírez Schmid; el extracto deja a esas dos personas con 52% y 48%, respectivamente.[8] La declaración de 2025 nombra a Marcelo Gabriel Ramírez Schmid como cónyuge de Parisi.[1] Esto es una coincidencia documental relevante, pero no prueba por sí sola cuándo ni cómo salió la participación de Parisi, ni la identidad o relación de María Fernanda Ramírez Parisi con ella. La fuente recuperada es una transcripción secundaria; no se obtuvo verificación independiente del PDF oficial ni de las anotaciones del Registro de Comercio.

## Reproducción del artefacto y límites

La consulta guardada en `consultas/parisi-fernandez-sociedad-medica-crs-maipu-1.sql` devolvió dos snapshots de la misma persona: 2025-08-20 y 2026-04-01. Para ambos, `declared_supply` enlaza 6 órdenes en el período de la declaración, 8 posteriores, CLP 125.856.000 en el período, rango 11-09-2025 a 31-03-2026, un comprador y `n_same_institution=0`.

No se debe leer el renglón del panel `is_current=true` como prueba de que Prestaciones Médicas aparezca en la declaración de asunción: el `source_uri` es la declaración de 01-04-2026, cuyo detalle no lista esa empresa.[2] El SQL de `100_panel.sql` explica que `declared_supply` se suma por `person_id` y luego se une a cada fila de declaración; es un indicador histórico de las sociedades declaradas que vendieron al Estado, no una lista de participaciones vigentes (§7, líneas 94-116 y 251-260). El intento de filtrar `declared_supply` por el RUT sin formato falló en cero filas; la consulta reproducible correcta filtró por `legal_name` y arrojó los dos snapshots. No se usa el resultado fallido como evidencia negativa.

Cotejé en `purchase_order` los códigos 2115-747-SE25 y 2115-368-SE26: dos códigos únicos, ambos con el mismo RUT societario y CRS de Maipú como comprador; sus montos son los de las fichas individuales citadas.[3][9] Este cotejo verifica compras societarias, no beneficio personal ni intervención de la declarante.

## Mapa de afirmaciones y alternativas

- **Hecho a establecer:** si Parisi mantenía una participación directa o indirecta en Prestaciones Médicas al asumir y en las fechas de compra de 2026. **Primaria necesaria:** escritura y anotaciones vigentes del Registro de Comercio, más declaraciones; alternativas consultadas: declaraciones InfoProbidad 2025/2026 y transcripción del extracto societario de febrero de 2026. **Resultado:** la declaración 2026 no lista la sociedad; el extracto registra una modificación entre otras personas, pero no dice cómo/cuándo dejó Parisi sus derechos. **Incertidumbre:** titularidad directa e indirecta en las fechas relevantes.
- **Hecho a establecer:** si las compras posteriores se originan en una decisión pública vinculada personalmente a Parisi. **Primaria necesaria:** expediente de licitación, adjudicación, contrato y actos de evaluación/administración. **Alternativas consultadas:** fichas de OCs 2025 y 2026, y dos licitaciones abiertas relacionadas. **Resultado:** compra empresarial identificable; las fichas no la nombran personalmente. **Incertidumbre:** expediente/anexos y fecha de firma contractual, ya señalados en el caso publicado.
- **Explicación legítima más plausible:** proveedor histórico de prestaciones médicas que participa en procesos públicos abiertos para servicios oftalmológicos; la ficha 2025 indica convocatoria abierta y adjudicación anterior al inicio del cargo.[4][5] Esto no acredita el número real de oferentes ni explica la salida de la declaración. Las dos OCs de Educación Zama parecen compras ordinarias de matrícula/mensualidades de jardín infantil, sin nexo funcional demostrado.[6][7]
- **Hipótesis que debilita la lectura inicial:** el extracto de febrero de 2026 apunta a cambios societarios posteriores a la declaración de candidatura y a otros titulares en la sociedad; no prueba que Parisi siguiera participando en el momento de las órdenes del segundo trimestre. Tampoco identifica una cesión desde ella ni el momento de cualquier cambio anterior.

## Rutas de esta pasada (2026-10-05 UTC)

1. **Declaración original:** reabrí InfoProbidad ID 1504408; verifiqué nombre completo, fecha, sociedad, porcentaje y calidad declarada.[1]
2. **Declaración de asunción:** reabrí InfoProbidad ID 1769223; comprobé fecha, cargo, fecha de asunción y lista societaria visible.[2]
3. **Compra previa a la asunción:** abrí la ficha individual 2115-747-SE25 y cotejé proveedor, RUT societario, comprador, monto y licitación.[3]
4. **Proceso de compra anterior:** abrí 2115-36-LR24; revisé modalidad, convocatoria y fecha de adjudicación.[4]
5. **Proceso 2025/2026:** recuperé la ficha 2115-24-LR25 con modalidad pública/abierta y adjudicación 19-01-2026. La primera extracción falló por timeout; una extracción posterior sí respondió. No se eludió control de acceso.[5]
6. **Continuidad del proveedor tras la asunción:** abrí la ficha individual 2115-368-SE26 y confirmé fecha, proveedor/RUT societario, monto y contrato de origen.[9]
7. **Explicación alternativa sectorial:** abrí las fichas de 1033392-2-TD26 y 449-84-TD26; ambas describen servicios de jardín infantil y no relacionan la compra con el cargo de diputada.[6][7]
8. **Cambio societario:** busqué por RUT societario, razón social, nombre y CVE-2766692; recuperé el extracto transcrito en vLex. Las búsquedas exactas en el índice oficial no devolvieron la publicación; la portada de diarioficial.cl mostró una pantalla de JavaScript. Se detuvo ahí, sin eludir controles. La verificación primaria pendiente es el documento oficial o certificado/anotaciones del Registro de Comercio.[8]
9. **Artefacto local:** ejecuté la consulta guardada contra el oro y cotejé por separado dos códigos en `purchase_order`. La consulta por RUT exacto en `declared_supply` produjo 0 filas; al inspeccionar el formato almacenado, la búsqueda por razón social sí reprodujo dos snapshots. No se interpreta el primer 0 como ausencia.
10. **Deduplicación:** la pista corresponde al caso ya publicado `entrega-2/casos/de_candidato_a_autoridad/parisi-fernandez-sociedad-medica-crs-maipu.md`; no se crea un caso paralelo ni se modifica el caso publicado en esta corrida.

## Decisión editorial y reapertura

La pasada anterior halló una transcripción societaria secundaria que no resolvía titularidad y no acreditó intervención individual. La segunda pasada amplió rutas y confirmó que la fuente primaria que permitiría resolver la cronología está disponible solo mediante el índice autenticado o la copia autorizada de anotaciones marginales. No satisface el gate para un nuevo borrador ni permite cambiar el caso publicado; por ese bloqueo central la disposición operativa pasa a **requiere humano**. Sin calificación jurídica ni atribución de parentesco.

**Próxima acción concreta:** una persona autorizada debe solicitar al CBRS copia de la inscripción de fojas 24.734, N.º 20.106, Registro de Comercio de 1994, con anotaciones marginales desde 2018, y cotejar el PDF firmado de CVE-2766692. La ficha pública de ChileAtiende indica que la copia con anotaciones sirve para constatar actos posteriores y que la gestión en línea exige cuenta y pago.[10] El índice del CBRS indica que la búsqueda por razón social o socio requiere iniciar sesión.[11] No acceder, pagar ni usar credenciales en esta investigación; retomar solo con el documento obtenido legítimamente. No inferir relación familiar por apellidos ni participación vigente.

## Rutas nuevas (2026-10-05 UTC; segunda pasada)

11. **Diario Oficial oficial:** búsquedas exactas por `CVE-2766692`, razón social, fecha 07-02-2026 y edición 44.370 en el portal y en búsqueda web indexada; no se recuperó el PDF oficial. Resultado negativo acotado: no se demuestra que la publicación no exista.
12. **Transcripción secundaria ampliada:** vLex identifica CVE-2766692 como publicado el 07-02-2026; atribuye a escritura de 19-01-2026, repertorio 4.903-2026, una cesión de 46 puntos porcentuales por $1.840.000 desde María Fernanda Ramírez Parisi (98%) a Marcelo Gabriel Ramírez Schmid; queda 52% y 48%, respectivamente.[8] Esto describe esos dos titulares, no prueba que Zandra Parisi fuera cedente ni su relación con María Fernanda.
13. **Índice oficial CBRS en vivo:** se abrió la ruta pública del Índice del Registro de Comercio; la página dice que permite buscar por foja/número/año o razón social/socio, pero antes del formulario informa «Para acceder debe iniciar sesión». Se detuvo ahí; no se intentó eludir el control.[11]
14. **Vías oficiales para copia y anotaciones:** ChileAtiende explica que la copia autorizada de inscripción con anotaciones permite constatar actos posteriores; su trámite electrónico indica cuenta, revisión del valor y pago. El certificado de vigencia solo acredita que no aparece nota de término, no reconstruye por sí solo porcentajes.[10][12]
15. **RES (Tu Empresa en un Día):** revisé el portal y su FAQ; no lo traté como una búsqueda concluyente de esta sociedad constituida en 1994 ni como evidencia de ausencia. La ruta pendiente sigue siendo el Registro de Comercio correspondiente.[13]
16. **Búsquedas exactas secundarias:** CVE, razón social, RUT societario, fojas/número, y nombres completos de los dos titulares citados; no surgió otro documento primario accesible ni evidencia que enlace a Zandra con la cesión.
17. **Contraste con fuentes ya verificadas:** InfoProbidad 2025 registra 48% no controlador; la declaración de asunción de 2026 lista dos sociedades distintas y no Prestaciones Médicas.[1][2] El caso y la consulta del oro se releen, sin repetir sus resultados; el corte del artefacto sigue siendo 2026-10-02T15:43:07Z.

## Decisión de esta pasada

La transcripción secundaria precisa acto, fecha, repertorio y proporciones, pero no resuelve si/cuándo Zandra salió de la sociedad ni su relación con María Fernanda. La explicación legítima más plausible sigue siendo una enajenación o reorganización antes de asumir; no está corroborada y no se descarta participación indirecta. La fuente primaria necesaria está detrás de cuenta/pago o login. **Estado: requiere humano.** No se halló intervención individual en licitación, adjudicación o ejecución; no se altera el caso publicado.

**Revisión independiente:** no hubo revisor independiente en esta ejecución. La reproducción de la consulta local sí fue comprobada por separado desde las dos órdenes primarias, pero no constituye revisión adversarial independiente.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1504408 — InfoProbidad declaración 2025 Zandra Parisi
    > "PRESTACIONES MEDICAS LTDA"
    > "Cantidad / Porcentaje | 48"
    > "Tiene Calidad de Controlador | false"
    > "Nombres | MARCELO GABRIEL"
    > "Apellido Paterno | RAMIREZ"
    > "Apellido Materno | SCHMID"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1769223 — InfoProbidad declaración 2026 Zandra Parisi
    > "Fecha de Asunción en el cargo | 11-03-2026"
    > "Nombre o Razón Social | PAZ INVERSIONES SPA"
    > "INVERSIONES PARISI SPA"
[3] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2115-747-SE25 — Mercado Público OC 2115-747-SE25
    > "TOTAL OC | $ 26.863.000"
[4] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?qs=hZllTiY5iVq0OoifNPYDxw== — Mercado Público licitación 2115-36-LR24
    > "Tipo de convocatoria: ABIERTO"
[5] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?qs=M090XqBSGHHAhMhw+svviQ== — Mercado Público licitación oftalmológica LR25
    > "Fecha de Adjudicación: 19-01-2026 16:07:35"
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1033392-2-TD26 — Mercado Público OC 1033392-2-TD26
    > "Razón Social | EDUCACION ZAMA LIMITADA"
[7] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=449-84-TD26 — Mercado Público OC 449-84-TD26
    > "Razón Social | EDUCACION ZAMA LIMITADA"
[8] https://vlex.cl/vid/prestaciones-medicas-z-m-1104881687 — Diario Oficial CVE-2766692 transcrito en vLex
    > "Doña María Fernanda Ramírez Parisi, del 98% de los derechos sociales que ostenta, vende, cede y transfiere el 46%, a don Marcelo Gabriel Ramírez Schmid"
    > "MARÍA FERNANDA RAMÍREZ PARISI, con un 52% de los derechos sociales"
[9] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?qs=fkJjkiNIn1MrfKNpISFEdQ== — Mercado Público OC 2115-368-SE26
    > "TOTAL OC | $ 25.208.000"
[10] https://www.chileatiende.gob.cl/fichas/445-copia-de-inscripcion-de-la-constitucion-de-una-sociedad-con-anotaciones-marginales-con-vigencia — ChileAtiende, copia de inscripción con anotaciones marginales
    > "Este documento habitualmente se requiere para verificar que la sociedad continúa vigente y constatar las notas al margen de la inscripción que dan cuenta de los actos realizados con posterioridad."
    > "Escriba su usuario y contraseña. Si no está registrado, cree una cuenta."
    > "Revise el valor y la cantidad de documentos solicitados"
    > "Ir a pagar"
[11] https://www.conservador.cl/consultas-en-linea/indices/indice-del-registro-de-comercio — CBRS, índice del Registro de Comercio
    > "Busque inscripciones de sociedades por foja/número/año o por nombre de la sociedad o socios."
    > "Para acceder debe iniciar sesión"
[12] https://www.chileatiende.gob.cl/fichas/442-certificado-de-vigencia-de-sociedad-del-registro-de-comercio — ChileAtiende, certificado de vigencia
    > "Permite obtener un documento que certifica que no hay nota o subinscripción sobre que se le haya dado término a una sociedad"
[13] https://www.registrodeempresasysociedades.cl/FAQ.aspx — Registro de Empresas y Sociedades, preguntas frecuentes
    > "El Registro de Empresas y Sociedades (RES) es un registro electrónico que dispone de un portal en Internet"