# Investigación: Boris Gastón Oportus Ortiz — Servicios Médicos e Inversiones Dr. Oportus Ltda. y Hospital de Lota

- **ID:** `boris-oportus-servicio-salud-concepcion-hospital-lota-2017`
- **Estado:** borrador listo
- **Corte del oro:** `2026-10-27T15:25:49+00:00`
- **Run:** `20261028T042449Z`

## Pregunta decisiva

¿Hay un hecho primario, material y verificable que justifique preguntar cómo se verificó la elegibilidad de una sociedad con participación declarada del 80% de una autoridad que figuraba como directivo del Servicio de Salud Concepción, cuando el Hospital de Lota la contrató y las bases del proceso regulaban expresamente a los directivos del Servicio y sus sociedades?

## Hechos comprobados

1. **Declaración primaria.** InfoProbidad ID 81752 identifica a Boris Gastón Oportus Ortiz, su cargo declarado como «Directivo» del Servicio de Salud Concepción, asunción el 01-09-2015 y declaración del 31-03-2017. En ella declara un derecho de 80% en SERVICIOS MEDICOS E INVERSIONES DR. OPORTUS LTDA (RUT 77.987.610-1), adquirido el 23-09-2003; el formulario marca «Tiene Calidad de Controlador: NO». Fuente: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=81752.
2. **Regla del proceso.** Las bases oficiales de Mercado Público para la licitación 4640-3-LE17 la describen como licitación pública abierta de servicios de ginecología, adjudicada el 09-02-2017. Requieren declaración jurada de no afectación al art. 4 inc. 6 de la Ley 19.886; señalan que la restricción alcanza a funcionarios directivos «del Servicio» y sus sociedades, y definen directivo como función directiva y/o de jefatura, incluidos jefes de servicios clínicos. La versión histórica de Ley Chile vigente durante el proceso recoge la prohibición legal para funcionarios directivos del mismo órgano y sociedades de personas de las que formen parte. Fuentes: https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=4640-3-LE17 y https://www.bcn.cl/leychile/navegar?idNorma=213004&idVersion=2017-01-01.
3. **Órdenes primarias y RUT coincidente.** Las tres órdenes del Hospital de Lota nombran la misma sociedad y RUT 77.987.610-1:
   - 4640-1898-SE17, 03-08-2017: CLP $5.442.303, 204,70 UF; origen 4640-151-LE14. https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4640-1898-SE17
   - 4640-2104-SE17, 29-08-2017: CLP $9.876.140, 371,27 UF; origen 4640-3-LE17. https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4640-2104-SE17
   - 4640-2987-SE17, 18-12-2017: CLP $10.996.270, 410,51 UF; origen 4640-3-LE17. https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=4640-2987-SE17
   Agregado reproducible en el oro: 3 órdenes, CLP $26.314.713 y 986,48 UF durante la ventana. Las órdenes constan como provenientes de licitación pública y sus estados en el oro son «Enviada a proveedor».
4. **Nexo institucional.** El campo de institución declarada en InfoProbidad dice Servicio de Salud Concepción; el comprador es Hospital de Lota. La propia base del Hospital expresa la regla como aplicable a directivos «del Servicio», lo que documenta una relación funcional relevante, sin que esta ficha infiera jerarquía a partir solo de nombres.

## SQL reproducible

`consultas/boris-oportus-servicio-salud-concepcion-hospital-lota-2017-1.sql` devuelve la declaración y las órdenes durante la ventana mediante `ec-gold-sql`. Resultado verificado: tres filas; suma 26.314.713 CLP y 986,48 UF. El oro usa `same_institution = true`; no se toma ese campo por sí solo como prueba de intervención.

## Explicación legítima más fuerte

Fueron servicios de ginecología tramitados en procesos públicos abiertos; el proceso 2017 fijó prestaciones médicas de especialidad, y las órdenes identifican consultas/intervenciones. La evidencia consultada no muestra intervención personal de Oportus en evaluación o adjudicación ni resuelve su cargo concreto. El mecanismo competitivo es compatible con contratación ordinaria de prestaciones sanitarias; no basta para afirmar infracción.

## Qué falta para confirmar o descartar la cuestión

- Expediente de evaluación/adjudicación de 4640-3-LE17 y, en especial, la declaración jurada del proveedor y cualquier decisión que autorizara una excepción.
- Acto primario que detalle la función, dependencia o jefatura de Oportus en 2017. La declaración solo pone «Directivo»; no identifica la jefatura.
- Documentación del antecedente 4640-151-LE14 para precisar el alcance y origen de la orden 4640-1898-SE17, aunque la adjudicación de ese proceso antecede al ejercicio declarado.
- No se estableció evidencia de participación de Oportus en Servel/campañas; las búsquedas web exactas no devolvieron una ficha electoral pertinente y no se consultó una descarga masiva de Servel. No afecta la pregunta primaria sobre el proceso de compra.

## Decisión

**PR al editor (`borrador listo`).** Pasa las cinco preguntas: identidad y hechos centrales en fuentes primarias; una pregunta concreta de interés público está contenida en las propias bases del proceso; la explicación competitiva y los límites están explicitados; existe categoría `negocios_estado`; no se encontró coincidencia del nombre o sociedad en `INDICE.md` ni en `estadoclaro-casos` `main`. El borrador no atribuye incumplimiento, beneficio personal ni intervención.

La afirmación más débil que debe revisar el editor es el alcance funcional exacto del término «del Servicio» en esas bases frente a la situación laboral concreta de Oportus. No es necesario para afirmar la coincidencia ni para plantear la pregunta de auditoría; sí sería necesario para concluir sobre legalidad.

## Fuentes citadas

- InfoProbidad, declaración 81752: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=81752
- Mercado Público, licitación 4640-3-LE17: https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=4640-3-LE17
- Mercado Público, licitación 4640-151-LE14: https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=4640-151-LE14
- Mercado Público, OCs 4640-1898-SE17, 4640-2104-SE17 y 4640-2987-SE17 (URLs arriba).
- Ley Chile, Ley 19.886, versión histórica: https://www.bcn.cl/leychile/navegar?idNorma=213004&idVersion=2017-01-01

## Reevaluación y cierre (2026-10-28)

- **Primarias reabiertas:** InfoProbidad 81752 confirma a Boris Gastón Oportus Ortiz, declaración de 31-03-2017, cargo declarado «Directivo» del Servicio de Salud Concepción, y derecho del 80% en SERVICIOS MEDICOS E INVERSIONES DR. OPORTUS LTDA (RUT 77.987.610-1). Mercado Público confirma las tres OCs al mismo RUT, por CLP $26.314.713 (986,48 UF), todas provenientes de licitación pública; la 4640-3-LE17 se adjudicó el 09-02-2017.
- **Nueva comprobación primaria:** una nota oficial del MINSAL del 09-09-2017 identifica a Oportus como subdirector médico del Hospital Guillermo Grant Benavente. No lo sitúa en el Hospital de Lota ni acredita función en evaluación, adjudicación o autorización de estas compras: https://www.minsal.cl/personal-de-la-torre-paciente-critico-conmemoro-los-dos-anos-de-su-puesta-en-marcha-con-celebracion-ecumenica-de-accion-de-gracias/.
- **Pregunta decisiva y explicación legítima:** la base de la licitación formula la prohibición para funcionarios directivos del mismo órgano; la declaración solo consigna «Directivo» y el organismo Servicio de Salud Concepción. Aunque la fuente oficial acredita un cargo directivo en un hospital de esa red y las OCs son del Hospital de Lota, no se obtuvo documentación primaria sobre la dependencia orgánica aplicable al proceso, el expediente de elegibilidad ni intervención individual. La contratación se efectuó mediante procesos abiertos y el objeto fue prestación de servicios médicos ordinarios. No se puede concluir infracción, intervención ni beneficio personal.
- **Decisión:** descartada. La pista no supera el umbral editorial: la coincidencia patrimonial y contractual es real, pero el nexo funcional y la aplicación de la prohibición al órgano comprador no están acreditados con las primarias disponibles; sin ese eslabón, el caso propuesto no puede sostener la pregunta de elegibilidad. Reabrir solo si aparece el expediente de la licitación/declaración jurada del proveedor o un acto primario que establezca el cargo, dependencia orgánica y relación con este proceso.
- **Corte del oro:** `2026-10-27T15:25:49+00:00`. Se reejecutó `consultas/boris-oportus-servicio-salud-concepcion-hospital-lota-2017-1.sql`: 3 órdenes y los importes citados arriba.
- **Antecedente anterior:** PR editorial devuelto, https://github.com/rodrigooig/estadoclaro-casos/pull/229; no se abrió PR al editor al cierre.
