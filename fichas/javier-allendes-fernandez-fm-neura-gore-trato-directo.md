# Javier Allendes Fernández — FM Neura y una orden del GORE de Tarapacá

## Pregunta decisiva
¿La orden directa del Gobierno Regional de Tarapacá a FM Neura Ltda., sociedad en la que el concejal de Iquique Javier Allendes declaró derechos, acredita un beneficio material conectado con su función o una intervención que justifique remitir un caso al editor?

## Origen y selección
Pista nueva de la pantalla `trato_directo` del pre-run del 2026-10-26. Se eligió por ser una contratación directa de un órgano regional a una sociedad declarada por una autoridad municipal, con ruta primaria accesible y auditoría de Contraloría que contextualiza la compra. Se buscó el apellido en `INDICE.md`; no había ficha previa de Allendes. Existe una ficha previa distinta sobre Guillermo Cejas y Radio Neura/Alto Hospicio (PR #201), que se tuvo presente para no confundir la nueva declaración/OC con las compras de 2019.

## Hechos comprobados

- InfoProbidad, declaración 1254092 del 23-07-2024, identifica a **JAVIER ALLENDES FERNANDEZ** como concejal de la Municipalidad de Iquique; registra asunción el 28-06-2021. Declara derechos en **FM NEURA LIMITADA**, RUT **77.127.975-9**, cantidad «10», valor corriente en plaza CLP $1.000.000, adquisición 11-03-2020 y `Tiene Calidad de Controlador: false`. La ficha no expresa la cantidad como porcentaje; no se interpreta el «10» como 10 %.
- La declaración InfoProbidad 1043152 (31-03-2023) también registra derechos en FM Neura con el mismo RUT, lo que precede a la orden revisada.
- Mercado Público, OC **768-85-SE24**, identifica al proveedor como RADIO WEB NEURA, RUT 77.127.975-9, el mismo RUT que InfoProbidad. Enviada/entregada el 12-03-2024, figura en estado «Recepción Conforme»; el título es «Difusión de Encuesta». El bien/servicio especifica difusión radial de una encuesta para actualizar la Estrategia de Desarrollo Regional de Tarapacá. Total bruto CLP **$249.900 (6,76 UF)**; neto $210.000 más IVA. La causal publicada es «Costo de evaluación desproporcionado, y por monto de contratación inferior a 100 UTM».
- El Informe Final N.º 953/2024 de la Contraloría Regional de Tarapacá incluye la OC 768-85-SE24 en su Anexo 13: resolución exenta de 08-03-2024 y publicación el 12-03-2024, cuatro días después. El acápite II.5.a informa que 22 de 28 procesos analizados publicaron sus resoluciones de trato directo con atraso de 1 a 24 días. El GORE explicó que 18 adquisiciones del servicio de publicidad radial y difusión de encuesta estaban autorizadas por una sola resolución; atribuyó la demora principalmente a carga laboral de Adquisiciones. Contraloría mantuvo la observación por la publicación fuera del plazo legal. El informe no atribuye esa demora a Allendes ni a FM Neura en particular.
- El comprador de la OC es el GORE de Tarapacá, no la Municipalidad de Iquique donde Allendes declaró ejercer. El expediente visible no identifica a Allendes como requirente, evaluador, autorizador ni receptor.
- Consultas de solo lectura al oro (corte `2026-10-23T14:20:50+00:00`) confirman RUT, vínculo declarado y campos de la OC. Los cortes de `campaign` y `campaign_expense` por el nombre exacto no devuelven filas; esto es solo un negativo en el gold, no una conclusión sobre todos los registros Servel.

## Explicación legítima más fuerte
La compra se describe como difusión de una encuesta pública de planificación regional y el proveedor prestó publicidad radial. La auditoría documenta que era parte de una contratación masiva de publicidad radial: 18 adquisiciones bajo una resolución común, dentro de una revisión de 28 órdenes, con atrasos de publicación que el GORE vinculó principalmente con la carga de trabajo administrativa. La tardanza sí fue observada por Contraloría, pero no constituye evidencia de favorecimiento al socio declarado.

## Límites, inferencias y qué falta
- **Inferencia:** Allendes tenía un interés económico declarado en la sociedad en marzo de 2024; la naturaleza y cuantía exactas de su participación no se deben deducir del campo «cantidad 10» como porcentaje. La propia declaración dice que no era controlador.
- **No comprobado:** intervención personal, beneficio individual derivado de esta compra, decisión de Allendes en el GORE o relación funcional entre su cargo de concejal y la contratación regional.
- **No comprobado:** si la actividad publicitaria tuvo alcance, audiencia, factura/pago o evaluación posterior adicional a lo indicado en la orden; ninguna de estas incógnitas cambia el bajo monto y la falta de nexo acreditado.
- La fuente primaria accesible no presenta un documento del proceso que conecte al concejal con la decisión; sin tal documento o un patrón material de contratos del mismo organismo con prueba de intervención/beneficio, no hay base suficiente para caso.

## Decisión
**Descartada.** La OC es real y el mismo RUT une la sociedad declarada con el proveedor; sin embargo, es una compra directa aislada de CLP $249.900 (6,76 UF), a un organismo distinto del declarado como empleador. El objeto es difusión radial de una encuesta pública, y la auditoría ubica la demora de publicación en una práctica más amplia, no en actuación o beneficio atribuible al socio. La declaración registra derechos no controladores y no prueba intervención. No pasa materialidad/nexo funcional para elevarla al editor.

**Reabrir solo** si aparece expediente, acta o resolución primaria que identifique a Allendes interviniendo o recibiendo beneficio; evidencia de un patrón material de adjudicaciones del GORE a la sociedad con intervención atribuible; o evidencia primaria de que la contratación tuvo un objeto ligado a una decisión concreta de Allendes.

## Fuentes primarias
- InfoProbidad, declaración 1254092 (23-07-2024): https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1254092
- InfoProbidad, declaración 1043152 (31-03-2023): https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1043152
- Mercado Público, OC 768-85-SE24: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=768-85-SE24
- Contraloría, Informe Final N.º 953/2024, auditoría al GORE de Tarapacá: https://www.contraloria.cl/buscadorpdf/auditoria/cf2222ce50b68b18f7559b5b62713cdd/html (acápite II.5.a y Anexo N.º 13)

## Consulta reproducible
`consultas/javier-allendes-fernandez-fm-neura-gore-trato-directo-1.sql` (gold, corte indicado arriba).

## Fuentes revisadas y alcance negativo
Se reabrieron las dos fichas InfoProbidad, la ficha de la OC y el informe oficial de Contraloría. Se revisó `campaign`/`campaign_expense` en el gold por nombre exacto: cero filas. No se atribuye a Allendes ningún registro de campaña ni se infiere inexistencia de campaña en Servel. Se revisó el precedente de bitácora Cejas/Radio Neura (PR #201); corresponde a otra persona, otra sociedad declarada y órdenes de 2019.
