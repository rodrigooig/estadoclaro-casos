# carlos-carvajal-cyg-pozo-almonte-clinica-deportiva-20261127

## Pregunta decisiva
¿Recibió una sociedad que Carlos José Carvajal Gallardo declaró controlar un contrato de la Municipalidad de Pozo Almonte mientras también declaraba actividad remunerada para ese municipio, y qué evidencia vincula la compra con sus funciones públicas?

## Hechos comprobados
- **DIP 1235014, 02-07-2024:** la ficha oficial identifica a CARLOS JOSE CARVAJAL GALLARDO como concejal de la Municipalidad de Huara. Registra actividad profesional remunerada en pedagogía en educación física para la Municipalidad de Pozo Almonte y, en el registro societario directo, 95% y calidad de controlador de ASESORIA Y VENTA DEPORTIVA C Y G LIMITADA, RUT 77.167.947-1. Se reabrió la fuente primaria HTML y la descarga JSON oficial; ambas representan el porcentaje directo como 95. InfoProbidad: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1235014.
- **Ambigüedad declarativa:** la sección de sociedades anidadas de la misma DIP presenta, bajo COMERCIO Y DISTRIBUCION CARLOS CARVAJAL EIRL, una entrada para ASESORIA Y VENTA DEPORTIVA CYG LIMITADA, mismo RUT, con cantidad/porcentaje 100. No se infiere que ese 100% sea una participación adicional sumable: podría corresponder a la representación anidada de derechos y la DIP no basta para resolverlo. La tabla `company` del oro refleja la entrada directa con `quantity = 95.0`, `is_controlling = true`; la tabla base no decide la interpretación del detalle anidado.
- **Antecedente laboral:** la reseña biográfica de la BCN informa que entre 2020 y 2022 fue jefe de Deportes y Recreación de Pozo Almonte. Es contexto funcional anterior, no prueba de intervención en la compra de 2024. https://www.bcn.cl/historiapolitica/resenas_parlamentarias/wiki/Carlos_Jos%C3%A9_Carvajal_Gallardo.
- **OC 2591-1011-SE24:** Mercado Público registra envío el 23-09-2024, estado «Aceptada», proveedor ASESORIA Y VENTA DEPORTIVA C Y G LIMITADA, RUT 77.167.947-1, total CLP $13.111.374 (346,09 UF al día del envío). El objeto es una clínica deportiva para dirigentes comunales y la escuela municipal de fútbol. La orden registra «licitación pública previa sin ofertas, o con ofertas inadmisibles»; no identifica quién intervino ni acredita pago. https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2591-1011-SE24.
- **Identidad:** el mismo RUT enlaza la participación declarada y el proveedor; no es atribución por homonimia. La DIP antecede a la orden en 83 días y es una foto del 2 de julio: no demuestra por sí sola vigencia de los vínculos el 23 de septiembre.
- **Servel:** no se usa una línea de campaña como parte del hecho, ni se halló en la pista una relación electoral pertinente a esta contratación.

## Explicación legítima más fuerte
La orden consigna que la licitación pública previa quedó sin ofertas o tuvo ofertas inadmisibles; la empresa pudo ser seleccionada por su capacidad para prestar el servicio. No se obtuvo el expediente para saber cuál supuesto ocurrió. La actividad remunerada de julio de 2024 no determina el cargo laboral dentro del municipio ni acredita por sí sola que la relación siguiera vigente el día de la OC. La jefatura deportiva que reseña la BCN terminó en 2022 según esa fuente. Ninguna fuente consultada muestra intervención de Carvajal en el requerimiento, selección, autorización o recepción.

## Decisión
**borrador listo.** Hecho central: una sociedad que Carvajal declara controlar al 95% directamente (con un registro anidado separado de 100% que no debe sumarse ni interpretarse sin cotejo) recibió una OC aceptada por 346,09 UF para un servicio deportivo del municipio al que declaró prestar actividad remunerada; además, tuvo una jefatura deportiva municipal entre 2020 y 2022. La coincidencia societaria, laboral, institucional y temática ofrece una pregunta concreta de interés público sobre funciones, contratación y alcance de las participaciones declaradas. El registro no demuestra intervención, beneficio personal, pago ni irregularidad. El envío al editor explicita la ambigüedad de la misma DIP y corrige la lectura de que el dato directo fuera 100%.

## Afirmación más débil
La pertinencia funcional de la jefatura deportiva finalizada en 2022 para una compra de septiembre de 2024. También queda sin resolver la relación entre el registro societario directo de 95% y la entrada anidada de 100% para la misma sociedad/RUT.

## Qué falta para confirmar o refutar
- Identificar la licitación previa, su resultado y el acto que sustentó la contratación posterior.
- Revisar anexos/decretos de la OC, quién pidió, aprobó, evaluó y recibió el servicio, y su ejecución/pago.
- Establecer con registros oficiales qué cargo y funciones tenía Carvajal en Pozo Almonte el 23-09-2024.
- Cotejar en fuente societaria primaria y en el respaldo completo de la declaración cómo se relacionan los registros directos y anidados de 95%/100% para el RUT 77.167.947-1.
- Verificar si existe evidencia de intervención suya desde alguno de sus cargos; no se presume.

## Consultas
La consulta reproducible del oro está en `consultas/carlos-carvajal-cyg-pozo-almonte-clinica-deportiva-20261127-1.sql`. Devuelve la participación directa como 95.0, controlador, y la OC por CLP $13.111.374 (346,09 UF). El corte indicado en la metadata consultada es `2026-11-27T21:06:24+00:00`. El oro es semilla y resumen; los hechos centrales se cotejaron en las fuentes primarias citadas.

## Fuentes primarias / oficiales
- InfoProbidad, DIP 1235014 y descarga JSON, 02-07-2024: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1235014
- Mercado Público, OC 2591-1011-SE24: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2591-1011-SE24
- Biblioteca del Congreso Nacional, reseña biográfica: https://www.bcn.cl/historiapolitica/resenas_parlamentarias/wiki/Carlos_Jos%C3%A9_Carvajal_Gallardo

Corte del oro: `meta.build_date = 2026-11-27T21:06:24+00:00`.
