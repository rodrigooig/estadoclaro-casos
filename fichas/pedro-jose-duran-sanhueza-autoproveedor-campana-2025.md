# Ficha: Pedro Durán y gasto radial de campaña a sociedad declarada

- **ID:** `pedro-jose-duran-sanhueza-autoproveedor-campana-2025`
- **Estado:** `borrador listo`
- **Categoría / destino:** autocontratación; `casos/autocontratacion/pedro-jose-duran-sanhueza-autoproveedor-campana-2025.md`
- **Pregunta decisiva:** ¿La cuenta de campaña informó un gasto por servicio radial a una sociedad en la que el candidato declaró una participación y actividad laboral, y queda una cuestión concreta para quien audite el reembolso?

## Hechos verificados

1. **Identidad y declaración primaria.** InfoProbidad identifica a PEDRO JOSÉ DURÁN SANHUEZA y su declaración de candidatura a diputado presentada el 21-08-2025 (ID 1506210). En ella declaró actividad remunerada de radiodifusor para SOCIEDAD DE DIFUSIÓN Y PUBLICIDAD ESPERANZA LTDA., RUT 89.811.600-K; una acción en esa misma sociedad, valor libro CLP $15.500.000, adquirida el 29-10-2013; y marcó que no tenía calidad de controlador. La declaración también ubica el cargo como candidatura a diputado 2025.
2. **Línea primaria de Servel.** En el reporte definitivo de ingresos y gastos electorales 2025, formulario 87/88, la cuenta de Pedro Durán para diputado por el distrito 23, Región de La Araucanía, registra la factura 3090 del 10-11-2025, por CLP $3.980.000, a SOC DE DIFUSION Y PUBLICIDAD ESPERANZA LTDA. El RUT proveedor es 89.811.600-K y la glosa/categoría corresponde a “Propaganda en radioemisoras” / “Frases radiales”. La fila se clasifica “Reembolso directo al candidato”.
3. **Auditoría.** En la hoja de resultados de auditoría del mismo reporte, la candidatura figura “Aprueba con observaciones”. Es un estado global; no atribuye la observación a esta factura. La etiqueta de reembolso no prueba que el candidato haya recibido el pago.
4. **Monto comparable.** El reporte registra CLP $3.980.000 al 10-11-2025. El SII publica UF de $39.643,59 para ese día; el equivalente es 100,39 UF (también el valor `amount_uf` del oro).
5. **Cruce / reproducibilidad.** La fila y sus campos están en `consultas/pedro-jose-duran-sanhueza-autoproveedor-campana-2025-1.sql`, ejecutada con `ec-gold-sql` sobre el oro de corte `2026-11-27T21:06:24+00:00`. La línea de Servel es la fuente primaria del gasto; la DIP primaria es la fuente del vínculo declarado.

## Explicación legítima más fuerte

La campaña contrató propaganda radial a una sociedad cuyo giro declarado incluye emisiones de radio y en la que Durán declaró trabajar remuneradamente. Declaró una acción y no ser controlador. El gasto está registrado en el informe definitivo; la cuenta global fue aprobada con observaciones. La operación puede ser una compra real de un servicio ordinario de la actividad comercial declarada. No se infiere que la factura fuera impropia, que existiera sobreprecio ni que se pagara un reembolso público.

## Lo que falta / límites

- No se verificó el pago final del reembolso directo ni su monto.
- El reporte no explica si la observación de la cuenta global se refiere a esta factura.
- No se contrastó prestación, precio de mercado ni comprobante de pago del servicio.
- La participación societaria citada es autodeclarada; no se obtuvo un asiento registral independiente contemporáneo al gasto.
- No se afirma infracción, conflicto de interés ni beneficio efectivamente percibido.

## Decisión

**PR al editor (`borrador listo`).** Pasa la revisión preliminar: el hecho central está en dos fuentes primarias (DIP y libro electoral); el gasto de CLP $3.980.000 (100,39 UF) figura con el mismo RUT de la sociedad donde el candidato declara trabajo remunerado y una acción; hay una pregunta concreta y acotada sobre el tratamiento/pago del reembolso. El titular y texto son descriptivos, incluyen la explicación legítima y no sugieren irregularidad. La cuenta global “Aprueba con observaciones” no se presenta como rechazo de esta factura. Se comprobó que el nombre/RUT no aparece como caso en `origin/main` y no hay fila previa en `INDICE.md`.

## Fuentes primarias

- InfoProbidad, declaración 1506210: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1506210
- Servel, Reporte definitivo de ingresos y gastos electorales 2025: https://www-doc.servel.cl/2026/09/Reporte%20Ingresos%20y%20Gastos%20Electorales%202025%20-%20Definitivas%20Presidenciales%20y%20Parlamentarias.xlsx
- SII, valores diarios de la UF 2025: https://www.sii.cl/valores_y_fechas/uf/uf2025.htm
