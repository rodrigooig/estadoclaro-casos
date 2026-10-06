# Nora Rosati, Justicia e Infancia y compras públicas de capacitación — requiere humano

## Reevaluación editorial vigente — 2026-10-06

- **ID:** `nora-rosati-justicia-e-infancia`
- **Estado vigente:** bloqueada por acceso
- **Producto a evaluar:** rol concreto pendiente.
- **Alcance de esta actualización:** reencuadre del método; no aporta nueva corroboración, no aprueba un caso ni certifica las cifras históricas.

La revisión de hechos ya disponibles se automatiza. El rol contractual no se atribuye desde la participación societaria; especificar si es indispensable para el encuadre o puede omitirse dejando otro núcleo material documentado. No publicar por mera coincidencia temática.

**Próxima comprobación autónoma:** Volver con anexo público equivalente de evaluación/oferta 1477-17-LE24 o documento distinto que establezca rol/competencia relevante. No repetir CAPTCHA. Si el caso depende de que actuó como relatora, no afirmar esa participación sin evidencia.

Aplicar `METODO_INVESTIGACION.md` v3. Las decisiones de abajo son el historial anterior y no sustituyen este estado vigente. La doble revisión deberá reabrir fuentes y repetir las consultas centrales antes de promover.

## Historial de evidencia y decisiones previas

- **ID:** `nora-rosati-justicia-e-infancia`
- **Categoría:** compras/relaciones con el Estado; actividades/cargos/temporalidad.
- **Estado:** requiere humano; sin borrador de caso.
- **Fecha de trabajo:** 2026-10-03.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; copia local sin cambios según el pre-run.
- **Identidad:** coincidencia del nombre completo NORA ANGELA ROSATI JEREZ en InfoProbidad y en `person.full_name`; las declaraciones consultadas la identifican como jueza del Poder Judicial.[1][2]

## Resultado y mapa de afirmaciones

La declaración de 29-03-2024 consigna una participación de 50% en Grupo Interdisciplinario Justicia e Infancia Ltda., adquirida el 30-08-2023, como derecho «OTRO» y sin calidad de controladora; la actualización de 31-03-2026 mantiene esos datos.[1][2]

La consulta guardada [`consultas/nora-rosati-justicia-e-infancia-1.sql`](../consultas/nora-rosati-justicia-e-infancia-1.sql) devuelve 10 órdenes únicas de esa sociedad entre 06-09-2024 y 05-08-2025. La consulta agregada [`consultas/nora-rosati-justicia-e-infancia-4.sql`](../consultas/nora-rosati-justicia-e-infancia-4.sql) suma CLP nominales 103.252.000; las 10 constan como provenientes de licitación pública y ninguna como trato directo.[Corte y consultas 1–2](../consultas/nora-rosati-justicia-e-infancia-2.sql)

La consulta independiente [`consultas/nora-rosati-justicia-e-infancia-2.sql`](../consultas/nora-rosati-justicia-e-infancia-2.sql) coteja cada código con `purchase_order`: los 10 montos, RUT societarios y clasificaciones coinciden fila por fila; no mezcla monedas ni cuenta registros espejo.[3][5][6]

En todas las órdenes `same_institution` aparece `NULL`, que significa «no se pudo determinar» si comprador y organismo declarado son el mismo; no equivale a `false`.[^metodología]

Cinco órdenes se emitieron a Corporaciones de Asistencia Judicial (CAJ), por CLP 83.004.000 en conjunto; una de ellas fue un curso distinto sobre abordaje jurídico de violencia de género por CLP 13.000.000.[3][4][5]

La OC 535657-31-CC24 registra CLP 7.224.000 a la CAJ de Tarapacá y Antofagasta y se vincula en Mercado Público con la licitación conjunta 318-3-LP24.[11]

Cuatro órdenes ligadas a la licitación 318-3-LP24 suman CLP 70.004.000 y fueron emitidas por CAJ de distintas regiones; la ficha oficial explica que se trató de un solo curso dividido en cuatro líneas para identificar participantes de cada corporación, con 407 participantes en total.[5][6][8]

La ficha 318-3-LP24 identifica como objeto capacitación para representación jurídica especializada de niños, niñas y adolescentes, y registra el proceso como licitación pública adjudicada el 04-11-2024.[8]

La declaración de 31-03-2026 registra además actividades remuneradas de jueza y académica, pero no describe tareas de Rosati para las órdenes, ni permite atribuirle personalmente los pagos de la sociedad.[1]

**Relevancia pública posible:** una jueza declaró 50% de participación en una empresa de educación/proyectos.[1][2]

Su sociedad vendió cursos y asesorías a CAJ y a una fundación educacional en un ámbito temático en el que Rosati ha tenido actividad profesional pública.[3][5][7]

La ficha de licitación identifica el curso conjunto para CAJ, mientras que la Academia Judicial la identifica como instructora de la Ley 21.057 y la empresa ofrece cursos en ese ámbito.[8][9][10]

La evidencia acredita titularidad declarada y ventas de la sociedad, no que Rosati haya diseñado, ofertado, evaluado, autorizado, ejecutado o recibido personalmente los contratos.[1][3][5]

## Rutas revisadas y contraste (2026-10-03)

1. **Minería y enlace en el oro:** se cruzaron `activity`, `declaration`, `company`, `declared_supply` y `declared_supply_order`, usando nombre completo, proveedor societario y `is_primary_for_person`; las consultas 1 y 3 preservan códigos únicos y secuencia de declaraciones. El artefacto aporta priorización y recuento, no prueba independiente de los hechos subyacentes.
2. **Desduplicación adversarial:** la consulta 2 reagrupa por código de OC y vuelve a enlazar contra `purchase_order`; reproduce 10 códigos, CLP 103.252.000 y 10 rutas de licitación pública. Ningún monto se cuenta dos veces aunque cuatro órdenes compartan una licitación conjunta.[3][5][6]
3. **Declaración de origen e identidad:** se cotejaron las páginas de InfoProbidad 5086945 (29-03-2024) y 5114646 (31-03-2026); ambas contienen el mismo nombre completo, cargo y participación societaria. La declaración da fecha de adquisición anterior a las órdenes, pero no prueba el rol personal en ellas.[1][2]
4. **Órdenes primarias:** se revisaron las fichas oficiales de 318-194-SE24, 1477-509-SE24 y 1252675-118-CC24; coinciden proveedor, RUT societario, comprador y moneda CLP.[3][5][6]
Se revisaron por separado 535657-31-CC24 y 1477-401-SE24; sus montos y proveedores también se cotejaron.[4][11]
La ficha oficial 318-3-LP24 aclara la separación de las cuatro líneas y el total de participantes.[8]
5. **Explicación comercial plausible, fuente de la propia empresa:** Justicia e Infancia ofrece cursos sobre la Ley 21.057, entrevista investigativa e intermediación, además de asesoría técnica.[10] En una publicación corporativa dice que Nora Rosati participó como magistrada especialista en una asesoría a Fundación Integra en septiembre de 2024; la misma fuente no afirma que su participación fuera remunerada ni que interviniera en la compra.[7]
6. **Contraste profesional independiente:** Academia Judicial identifica a Nora Rosati como jueza e instructora de la Ley 21.057, lo que respalda una explicación legítima de pertinencia temática de la empresa y los cursos; no acredita su papel en los contratos examinados.[9]
7. **Revisión adversarial independiente:** otro revisor confirmó que las órdenes de la licitación conjunta son códigos distintos, corresponden a líneas/compradores diferentes y suman CLP 70.004.000; la ficha oficial dice que el servicio fue un curso dividido por corporación y 407 participantes. Señaló que no verificó en la fuente primaria todo el conjunto de 10 órdenes, ni encontró evidencia de intervención de Rosati o de una incompatibilidad concreta.

## Explicación alternativa y límites

La explicación legítima más plausible es que la empresa vendió capacitación y asesoría en un campo en que acredita experiencia pública, mediante licitaciones abiertas.[7][8]
La ficha oficial 318-3-LP24 consigna el objeto, las cuatro líneas y la adjudicación; Academia Judicial y el propio proveedor documentan la pertinencia temática.[9][10]

La coincidencia temática puede explicar por qué la compañía ofrece esos servicios, pero no demuestra quién los preparó o impartió ni resuelve si la participación de Rosati se remuneró.[7][10]

No se verificaron las ofertas, el acta íntegra de adjudicación, los equipos declarados en cada propuesta ni los anexos/entregables de las OCs 318-194-SE24, 1477-401-SE24 y 1477-509-SE24.[3][4][5]
Tampoco se obtuvo evidencia pública suficiente sobre el detalle de participación o remuneración de Rosati en servicios concretos, ni de que interviniera en las decisiones de compra.[6][8]

El valor de CLP 103.252.000 corresponde a órdenes a la sociedad, no a ingresos personales, utilidades o beneficio de Rosati.[1][3]

## Decisión y condición para avanzar

**Decisión: evidencia insuficiente; no redactar caso.** La identidad y la participación societaria declarada están cotejadas entre InfoProbidad 2024 y 2026.[1][2]
La secuencia de compras y montos se reprodujo con registros canónicos; no hay evidencia de intervención personal o remuneración asociada a contratos concretos, y los registros consultados muestran licitaciones públicas.[3][8]

La revisión independiente tampoco encontró evidencia que cierre esas brechas; el objeto de capacitación y asesoría resulta temáticamente pertinente.[7][8]
La Academia Judicial acredita la especialidad de Rosati y la empresa ofrece cursos en ese campo, pero eso no valida cada adjudicación.[9][10]

**Próxima acción:** avanzar solo si una vía documental pública permite revisar las actas, ofertas y anexos de 318-3-LP24 y 1477-17-LE24 y comprobar los equipos/roles declarados, o si aparecen antecedentes públicos que acrediten participación o remuneración personal de Rosati en entregables contratados. Si no, conservar la pista como participación societaria concurrente con compras licitadas, sin atribución personal.

## 7. Pasada amplia sobre el rol en la capacitación CAJ — 2026-10-03

**Revalidación medida:** se reejecutaron las consultas guardadas `consultas/nora-rosati-justicia-e-infancia-2.sql` y `-4.sql` contra el corte ya identificado. Se mantuvieron 10 órdenes primarias distintas entre 06-09-2024 y 05-08-2025, por CLP nominales 103.252.000; las 10 se clasifican como provenientes de licitación pública, con 0 tratos directos, y el cotejo fila a fila reproduce monto, RUT societario y CLP en `purchase_order`. `same_institution` continúa NULL en las 10, por lo que no se pudo determinar la coincidencia de institución. La consulta y el cruce no identifican a quien impartió o preparó cada curso.

**Nueva evidencia contractual primaria:** la resolución 4433/2024 del acta oficial de adjudicación confirma la apertura y adjudicación del 03-10-2024; indica que llegaron cinco ofertas, de las cuales dos fueron admisibles (Cinder Capacitación y Justicia e Infancia), y que la comisión propuso adjudicar a Justicia e Infancia por obtener el puntaje máximo y cumplir las bases. El total neto adjudicado fue CLP 13.000.000.[24] El acta de apertura identifica las otras tres ofertas y registra motivos de rechazo por anexos faltantes; no consigna observaciones al acto de apertura.[26] La ficha de licitación asigna 40% a la experiencia de relatores y 20% al precio.[12] La OC 1477-401-SE24, enviada ese mismo día, vincula por nombre y RUT societario a la empresa con el curso de transversalidad del abordaje jurídico de violencia de género y registra CLP 13.000.000.[4] Los documentos revisados identifican a la sociedad, a oferentes y a la comisión, pero no nombran a Rosati como relatora, autora de la propuesta o participante en la decisión.[12][24][26]

La OC de capacitación conjunta 1477-509-SE24 registra CLP 35.260.000 para el curso NAD sobre representación jurídica especializada de niños, niñas y adolescentes; la OC 535657-31-CC24 registra CLP 7.224.000 en la línea para Tarapacá y Antofagasta de la licitación conjunta 318-3-LP24.[5][11] En esta segunda licitación, la ficha oficial dice que cuatro órdenes regionales separaron un solo curso y no deben contarse como cuatro capacitaciones distintas.[8]

**Alternativa legítima y contraste:** la propia empresa informa que realizó la capacitación para 74 funcionarios de la CAJ RM entre noviembre y diciembre de 2024, con profesionales de cinco regiones; la publicación no nombra a Rosati ni detalla el equipo docente.[19] Esto apoya el objeto y la realización reportada por el proveedor, no la identidad de sus relatores. Un acta oficial de Academia Judicial identifica a Nora Rosati y Alicia Fuentes como equipo docente adjudicado en un curso diferente del Programa de Formación N°91 en 2025; un perfil profesional de ADIPA también la describe como instructora de la Ley 21.057.[15][16] Ambos datos respaldan pertinencia temática general, pero son posteriores o ajenos al contrato CAJ 2024 y no prueban su participación en ese servicio.

**Rutas nuevas y límites:** (1) lectura de la ficha y del acta oficial, incluidos criterios/etapas; (2) cotejo de las OCs 1477-401-SE24, 1477-509-SE24 y 535657-31-CC24 por código, fecha, proveedor, RUT societario, importe y objeto; (3) fichas secundarias del proceso/proveedor usadas solo como pistas, contrastadas con las fuentes primarias; (4) búsquedas web exactas por `1477-17-LE24`, `1477-401-SE24`, el título del curso, `Nora Rosati` y dominios de Mercado Público/CAJ; (5) índices de transparencia de CAJ RM de septiembre–diciembre de 2024. En la porción visible de esos índices no identifiqué una resolución de adjudicación con el código de la licitación; esta búsqueda negativa es acotada y no demuestra que el documento no exista. El cuadro comparativo enlazado desde la ficha oficial abrió una página sin contenido visible en esta sesión; no se eludió ningún control. No pude revisar el anexo completo del acta de evaluación ni una oferta técnica que identifique relatores; la ficha indica que las ofertas técnicas serían públicas tras la apertura.[12][24]

**Mapa de afirmaciones y decisión:** identidad e interés societario siguen apoyados por la declaración original y el RUT societario; las órdenes y montos fueron cotejados en fuentes primarias; el vínculo de la empresa con el curso está acreditado; la participación personal de Rosati en la capacitación CAJ no está acreditada. La explicación plausible es una empresa con actividad especializada que concursó en procedimientos abiertos, y su propio relato informa la ejecución de ese curso. No se obtuvo contraste de un revisor independiente en esta pasada.

**Estado: requiere humano; no preparar borrador.** El acta primaria oficial acredita la concurrencia, las ofertas admisibles, la adjudicación y su monto, pero no identifica a Rosati como relatora o interviniente.[24][26] El acta enumera como anexo el PDF `EVALUACION 1477-17-LE24.pdf`; al abrir los anexos el portal mostró un control CAPTCHA (“Ingrese el texto de la imagen”). No se intentó resolverlo ni descargar por vías indirectas. La ficha del proceso y las búsquedas exactas/índices de CAJ ya fueron revisados en esta pasada amplia. **Gestión humana exacta:** una persona autorizada puede completar el CAPTCHA en el portal público para obtener el acta de evaluación y ofertas técnicas anexas, o localizar copias oficiales accesibles por otra vía pública, y comprobar si nombran a relatores/equipo y su papel. Reabrir la valoración editorial solo si esos documentos aportan evidencia nueva; en otro caso, cerrar como participación societaria concurrente con compra licitada, sin atribución personal.

[^metodología]: `METODOLOGIA.md`, «Qué no cubre el cruce», indica que `same_institution = NULL` significa que no se pudo determinar el organismo comprador; el valor no se interpreta como institución distinta.

## 8. Pasada alternativa por identificadores y fuentes institucionales — 2026-10-05

La ficha oficial de 1477-17-LE24 describe una convocatoria abierta y señala que las ofertas técnicas serían públicas después del acto de apertura ([ficha de Mercado Público](https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=1477-17-LE24)).
La resolución de adjudicación 4433 registra cinco ofertas, identifica como admisibles a Cinder Capacitación y Justicia e Infancia, y adjudica a Justicia e Infancia por puntaje máximo y cumplimiento de bases, por CLP 13.000.000 netos ([acta oficial de adjudicación](https://www.mercadopublico.cl/Procurement/Modules/RFB/StepsProcessAward/PreviewAwardAct.aspx?qs=MZl5JIeVrBzIOOUvofMgOw==)). El acta electrónica de apertura separada confirma que Cinder y Justicia e Infancia fueron aceptadas ([apertura electrónica](https://www.mercadopublico.cl/Procurement/Modules/RFB/StepsProcessAward/PreviewElectronicOpening.aspx?qs=MZl5JIeVrBzIOOUvofMgOw==)). Ninguno de estos documentos visibles nombra a Rosati como oferente, relatora o integrante de la comisión; este negativo se limita a los documentos examinados.

La ficha primaria de la OC 1477-401-SE24 muestra proveedor Justicia e Infancia, enlace a la licitación 1477-17-LE24, recepción conforme y CLP 13.000.000 netos ([OC](https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1477-401-SE24)). La empresa reporta que la capacitación se impartió entre noviembre y diciembre de 2024 para 74 funcionarios de la CAJ RM ([reporte del proveedor](https://justiciaeinfancia.cl/capacitacion-en-transversalidad-del-abordaje-juridico-de-la-violencia-de-genero)); se trata de un reporte propio, no de verificación independiente de asistencia o docentes.

Como alternativas de acceso se buscaron el identificador exacto y el nombre en motores web; se revisaron la ficha, la resolución, la apertura electrónica, el directorio de transparencia CAJ RM y un índice de transparencia de marzo de 2024. No apareció otra copia primaria pertinente en los resultados consultados; el índice corresponde a fecha anterior al proceso y no descarta publicación posterior. La página alternativa de ficha mostró al extractor opciones CSV/JSON/OCDS, pero la navegación directa redirigió a la ficha clásica; no se consiguió una descarga de oferta o anexos por esa ruta. El registro de transparencia de CAJ RM consultado expone la categoría de declaraciones de patrimonio e intereses, no el expediente contractual.

El acta de adjudicación enumera `EVALUACION 1477-17-LE24.pdf` entre sus anexos; el portal exhibe un CAPTCHA al abrir el anexo. No se intentó resolverlo ni eludirlo, ni se usó una API que requiere ticket. **La pista sigue en `requiere humano`**: una persona autorizada debe revisar el anexo desde el portal público o localizar copia oficial pública y cotejar la oferta técnica/acta con el equipo docente. Si no identifica a Rosati ni su papel en la capacitación, cerrar como participación societaria concurrente con compra licitada, sin atribución personal.

La contratación competitiva y el objeto de capacitación hacen plausible una prestación ordinaria de servicios especializados; el reporte del proveedor es compatible con ejecución del curso, pero no identifica a Rosati como relatora o participante. No hay evidencia nueva de intervención o remuneración personal por esta compra, y no se afirma que tales antecedentes no existan fuera de las rutas revisadas.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5114646
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5086945
[3] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=318-194-SE24
[4] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1477-401-SE24
[5] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1477-509-SE24
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1252675-118-CC24
[7] https://justiciaeinfancia.cl/asesoria-externa-implicancias-de-ser-garantes-en-derechos
[8] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=318-3-LP24
[9] https://academiajudicial.cl/evento/ley-n-21-057-de-entrevista-videograbada-interaccion-entre-sede-penal-y-de-familia
[10] https://justiciaeinfancia.cl/servicios
[11] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=535657-31-CC24
[12] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=1477-17-LE24
[15] https://academiajudicial.cl/wp-content/uploads/2025/12/Acta-454-firmada.pdf
[16] https://adipa.cl/docentes/abga-nora-rosati
[19] https://justiciaeinfancia.cl/capacitacion-en-transversalidad-del-abordaje-juridico-de-la-violencia-de-genero
[24] https://www.mercadopublico.cl/Procurement/Modules/RFB/StepsProcessAward/PreviewAwardAct.aspx?qs=MZl5JIeVrBzIOOUvofMgOw==
[26] https://www.mercadopublico.cl/Procurement/Modules/RFB/StepsProcessAward/PreviewElectronicOpening.aspx?qs=MZl5JIeVrBzIOOUvofMgOw==
