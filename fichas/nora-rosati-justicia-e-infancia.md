# Nora Rosati, Justicia e Infancia y compras públicas de capacitación — evidencia insuficiente

- **ID:** `nora-rosati-justicia-e-infancia`
- **Categoría:** compras/relaciones con el Estado; actividades/cargos/temporalidad.
- **Estado:** evidencia insuficiente; sin borrador de caso.
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

**Próxima acción:** solo avanzar si una vía documental pública permite revisar las actas, ofertas y anexos de las licitaciones 318-3-LP24 y 1477-17-LE24 y comprobar los equipos/roles declarados, y si los antecedentes públicos permiten determinar si Rosati participó o recibió remuneración por entregables contratados. Si esa evidencia no aparece, conservar la pista como participación societaria concurrente con compras licitadas, sin atribución personal.

[^metodología]: `METODOLOGIA.md`, «Qué no cubre el cruce», indica que `same_institution = NULL` significa que no se pudo determinar el organismo comprador; el valor no se interpreta como institución distinta.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5114646
    > "Cantidad / Porcentaje	50"
    > "Tiene Calidad de Controlador	false"
    > "NORA ANGELA ROSATI JEREZ"
    > "Juez Poder Judicial"
    > "31-03-2026 Actualización Periódica (Marzo)"
    > "Grupo Interdisciplinario Justicia e Infancia Ltda."
    > "Fecha de adquisición"
    > "Fecha de adquisición	30-08-2023"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5086945
    > "Nombre o Razón Social	Grupo Interdisciplinario Justicia e Infancia Ltda."
    > "Fecha de adquisición	30-08-2023"
    > "NORA ANGELA ROSATI JEREZ"
    > "Actualización Periódica (Marzo)"
    > "Cargo o función	Juez"
    > "Organismo	Poder Judicial"
    > "Cantidad / Porcentaje	50"
[3] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=318-194-SE24
    > "Valor Total | $ 11.352.000"
[4] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1477-401-SE24
    > "Valor Total | $ 13.000.000"
[5] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1477-509-SE24
    > "Valor Total | $ 35.260.000"
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1252675-118-CC24
    > "Valor Total | $ 16.168.000"
[7] https://justiciaeinfancia.cl/asesoria-externa-implicancias-de-ser-garantes-en-derechos
    > "Asimismo, participó la magistrada Nora Rosati, jueza del ámbito penal y especialista en la Ley 21.057 sobre entrevistas videograbadas, quien reforzó aspectos normativos y jurídicos asociados a la protección de derechos."
[8] https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=318-3-LP24
    > "El servicio requerido corresponde a un solo curso de capacitación, que fue separado en cuatro líneas para hacer la identificación de la cantidad de participantes por cada Corporación, lo que suma un total de 407 participantes"
[9] https://academiajudicial.cl/evento/ley-n-21-057-de-entrevista-videograbada-interaccion-entre-sede-penal-y-de-familia
    > "Nora Rosati Jerez: Abogada, Universidad de Chile; Jueza del Segundo Tribunal Oral en lo Penal de Santiago; Instructora de la Ley 21.057"
[10] https://justiciaeinfancia.cl/servicios
    > "Cursos de especialización en las materias propias del sistema de la Ley 21.057: Cambios procesales, Entrevista Investigativa Videograbada e Intermediación de niños, niñas y adolescentes en la declaración judicial"
[11] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=535657-31-CC24
    > "Valor Total | $ 7.224.000"
    > "Proveniente de Licitación | 318-3-LP24"
