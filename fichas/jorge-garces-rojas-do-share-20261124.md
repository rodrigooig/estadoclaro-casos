# Jorge Garcés Rojas — contraste de participación societaria para corrección

**Pregunta decisiva:** ¿Una fuente primaria societaria nueva cambia materialmente la pieza ya publicada sobre gastos electorales de la candidatura pagados o rechazados al RUT de una sociedad que Garcés declaró controlar?

## Hechos comprobados

- InfoProbidad identifica a **JORGE LUIS OMAR GARCÉS ROJAS** en la declaración 1505491, presentada el 20-08-2025 como candidato a diputado. Consigna control de **INVERSIONES CP & J-A SpA**, RUT **76.214.007-1**, y una cantidad de 90; el oro registra valor CLP $293.019.472. Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1505491.
- El extracto oficial del Diario Oficial, CVE 1783828, publicado 10-07-2020, recoge que el acta de accionistas ratificó que Jorge Luis Omar Garcés Rojas suscribió 900 de las 1.000 acciones de esa SpA; Claudio Patricio Garcés Córdova suscribió las otras 100. Fuente primaria (PDF): https://www.diariooficial.interior.gob.cl/publicaciones/2020/07/10/42702/05/1783828.pdf.
- El reporte definitivo de ingresos y gastos electorales 2025 de Servel ya se cita en el caso publicado sobre Garcés. La ficha publicada resume un pago de CLP $5.413.334 y seis gastos rechazados por CLP $6.441.868 al mismo RUT, con fechas/documentos distintos; esto no acredita por sí solo que fueran transacciones distintas en sentido económico ni que hubiese beneficio personal. Fuente oficial citada en el caso: https://www-doc.servel.cl/2026/09/Reporte%20Ingresos%20y%20Gastos%20Electorales%202025%20-%20Definitivas%20Presidenciales%20y%20Parlamentarias.xlsx.
- SQL de oro: `declaration.source_id=1505491` y compañía/RUT exactos; corte `meta.build_date` = **2026-11-22T04:10:18+00:00**. Consulta reproducible: `consultas/jorge-garces-rojas-do-share-20261124-1.sql`.

## Explicación legítima más fuerte y límites

La pieza pública ya atribuye la participación a lo declarado por Garcés y explicita que no se verificó que siguiera vigente en cada fecha de gasto. El extracto del Diario Oficial confirma una suscripción mayoritaria en 2020, pero no acredita que esa tenencia persistiera al 2025 ni cambia las transacciones del reporte Servel ya citado. La prestación puede haber sido real; los gastos rechazados no prueban por sí solos incumplimiento del proveedor ni beneficio personal. El pago y las seis líneas rechazadas no deben agregarse como si fueran un mismo total.

## Decisión

**Descartada.** La única novedad comprobada es la suscripción societaria de 2020. Como el caso correspondiente ya está publicado y no hay evidencia nueva sobre titularidad contemporánea, fundamento de rechazo, relación entre el pago y las líneas rechazadas, ni beneficio personal, no procede crear otro caso ni corregir el ya publicado. El dato de 2020 tampoco contradice el texto existente, que describe lo declarado en 2025 como tal.

**Reabrir solo si** una fuente primaria societaria/registral acredita la propiedad en las fechas de gasto o documentación individual de Servel vincula el pago, las seis líneas rechazadas y el fundamento del rechazo de una forma que altere materialmente la pieza existente.

## Fuentes revisadas

- InfoProbidad, declaración 1505491: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1505491
- Diario Oficial, CVE 1783828, PDF original: https://www.diariooficial.interior.gob.cl/publicaciones/2020/07/10/42702/05/1783828.pdf
- Servel, reporte definitivo 2025 (URL oficial arriba; hoja de cálculo no se pudo extraer en esta consulta, se usó el registro reproducido en el caso publicado).
- Caso publicado que se cotejó para evitar duplicar o corregir sin motivo: https://raw.githubusercontent.com/rodrigooig/estadoclaro-casos/main/casos/autocontratacion/jorge-garces-rojas-campana-autoproveedor-2025.md
