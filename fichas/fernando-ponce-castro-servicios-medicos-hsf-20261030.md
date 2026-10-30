# Fernando Ponce Castro y Servicios Médicos PM: pista descartada por falta de primarias de compra y nexo decisorio

- **Pista:** consulta propia en `declared_supply`, filtrando participaciones art. 4 con OCs atribuidas al mismo organismo; selección desde los resultados de mayor materialidad y coincidencia institucional.
- **Identidad:** Fernando Oswaldo Ponce Castro. InfoProbidad, declaración 1201406. La sociedad del cruce es SERVICIOS MEDICOS Y ESPECIALIDADES PM LIMITADA, RUT 77.426.588-0 (cuerpo del RUT en oro: 77426588; dígito verificador en `declared_supply.supplier_dv`).
- **Pregunta decisiva:** ¿puede acreditarse en fuente primaria que una participación controladora vigente y un nexo funcional de Ponce con el comprador se reflejan en contratación personal/material, y no solo en órdenes registradas a una sociedad?
- **Oro:** corte `meta.build_date=2026-10-30T15:53:06+00:00`; SQL reproducible en `consultas/fernando-ponce-castro-servicios-medicos-hsf-20261030-1.sql` y `-2.sql`.

## Hechos

InfoProbidad identifica a Ponce como médico cirujano del Servicio de Salud O’Higgins, con asunción declarada el 01-04-2016; su declaración de 30-03-2024 es una rectificación a requerimiento de órgano fiscalizador. La ficha pública es: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1201406. El extracto accesible de la página no expuso la sección completa de sociedades; el oro registra en esa declaración 80% controlador de SERVICIOS MEDICOS Y ESPECIALIDADES PM LIMITADA, con valor corriente declarado CLP $100.000 y adquisición autodeclarada el 21-08-2021. Estos campos describen lo declarado, no titularidad auditada.

La consulta de órdenes devuelve 11 códigos únicos para esta sociedad/declarante. Tres códigos (20-12-2024 y 18-02-2025) quedan dentro de la ventana contada por el oro: todos aparecen como órdenes aceptadas para el SERVICIO DE SALUD HOSPITAL DE SAN FERNANDO, ruta «Orden de Compra para informar», por un total de CLP $1.140.768 (29,69 UF). Otras ocho órdenes posteriores suman CLP $6.800.000 (172,42 UF). Las 11 juntas suman CLP $7.940.768 (202,11 UF). Se deduplicó por `order_code`: la tabla repite tres órdenes debido a su unión con declaraciones. `same_institution=true` es una marca del cruce del oro; no demuestra por sí misma relación contractual, intervención o identidad exacta entre Servicio y Hospital.

Se intentó abrir en Mercado Público la fuente primaria, incluida la OC 1023923-1355-SE24. La extracción devolvió timeout/403, el navegador recibió una página 403 y la recuperación de archivo no halló copia. No fue posible comprobar producto, unidad/horas, factura, pago, anexos, causal ni si el registro «para informar» corresponde a una prestación médica efectuada por Ponce. Por tanto, las cifras de órdenes son una pista derivada del oro, no una verificación primaria de contratación.

## Explicación legítima más fuerte y límites

La hipótesis legítima más plausible es que se trate de servicios médicos clínicos facturados o informados por una sociedad proveedora del Hospital, en el marco de la actividad profesional de Ponce; la etiqueta «Orden de Compra para informar» y la categoría agregada de servicios profesionales son compatibles con esa explicación, pero no se pudo confirmar en los anexos o detalle del proceso. Las fuentes revisadas no acreditan que Ponce haya decidido, intervenido, recibido un pago personal o prestado personalmente los servicios, ni permiten afirmar infracción.

## Decisión: descartada

Falla el requisito de hecho central comprobado en fuente primaria de Mercado Público. Aun aceptando los registros del oro como pista, las tres órdenes dentro de la ventana suman CLP $1.140.768 y no acreditan atribución personal, intervención o competencia decisoria de un médico cirujano. La posibilidad de prestaciones clínicas ordinarias es plausible; publicar un caso con la fuente de compra inaccesible excedería lo demostrado.

**Reabrir solo si** se recuperan las órdenes/anexos oficiales y estos muestran un vínculo individual o prestación posterior a la declaración, una causal/condición relevante o intervención funcional documentada, con monto y período confirmados.

## Fuentes revisadas

- InfoProbidad, declaración completa ID 1201406 (30-03-2024): https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1201406
- Mercado Público, OC 1023923-1355-SE24: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1023923-1355-SE24 (403/timeout en esta corrida).
- Mercado Público, OC 1023923-1356-SE24: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1023923-1356-SE24 (fuente primaria inaccesible en esta corrida).
- Mercado Público, OC 1023923-169-SE25: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1023923-169-SE25 (fuente primaria inaccesible en esta corrida).
- Las ocho OCs posteriores figuran en la SQL reproducible; no se revisó aquí cada página primaria individual.
- SQL del oro, solo lectura: `consultas/fernando-ponce-castro-servicios-medicos-hsf-20261030-1.sql` y `-2.sql`; corte `2026-10-30T15:53:06+00:00`.
