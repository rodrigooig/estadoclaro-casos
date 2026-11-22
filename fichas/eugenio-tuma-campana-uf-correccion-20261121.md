# Corrección: Eugenio Tuma Zedan — equivalencia en UF del gasto de campaña

**ID de esta pista:** `eugenio-tuma-campana-uf-correccion-20261121`  
**Run:** `20261121T050335Z`  
**Estado:** `correccion lista`  
**Fecha:** 2026-11-21  
**Destino de corrección:** `casos/autocontratacion/eugenio-tuma-campana-autoproveedor.md`  
**Corte del oro:** `2026-11-20T17:45:38+00:00`.

## Origen y novedad

La selección autónoma comenzó con una consulta propia a gastos de campaña asociados a sociedades declaradas. La revisión de INDICE.md mostró que Eugenio Tuma ya tenía una investigación y un caso publicado (PR #180, fusionado el 23-10-2026); por tanto, esta corrida no duplica el asunto. Al revisar la cifra publicada se detectó un error preciso de equivalencia UF: el caso muestra CLP $1.500.000 = 37,84 UF «según el oro», pero esa no es la UF vigente en la fecha de la factura.

## Verificación del cambio

- Caso publicado de `main`: https://raw.githubusercontent.com/rodrigooig/estadoclaro-casos/main/casos/autocontratacion/eugenio-tuma-campana-autoproveedor.md (muestra 37,84 UF).
- Servel, reporte definitivo: Formulario 103 n.º 55; fecha 14-09-2025; CLP $1.500.000; RUT 76.445.700; categoría “Gasto rechazado”.
- Diario Oficial, resolución de Banco Central publicada 09-09-2025, fija UF del 14-09-2025 en CLP $39.485,65: https://www.diariooficial.interior.gob.cl/publicaciones/2025/09/09/44246/01/2698185.pdf.
- Oro, consulta nueva: `campaign_expense.amount_uf = 37.84`; `uf_series.value` al 14-09-2025 = 39.485,65. `1.500.000 / 39.485,65 = 37.988...`, que redondea a **37,99 UF** (diferencia de +0,15 UF frente al valor publicado). Consulta reproducible: `consultas/eugenio-tuma-campana-uf-correccion-20261121-1.sql`.

El reporte de Servel proporciona el monto en pesos y fecha, no una cifra UF; la tasa se cotejó con el Diario Oficial y la serie diaria del oro. No cambia el monto en CLP, el RUT, el estado de rechazo ni la interpretación del caso.

## Decisión

**Corrección lista.** La versión en `borradores/eugenio-tuma-campana-uf-correccion-20261121.md` conserva íntegro el caso publicado y sustituye solamente 37,84 UF por 37,99 UF al valor del día del gasto, explicando la base de cálculo. Es una corrección numérica exacta contra una fuente primaria de UF y no modifica ninguna imputación o inferencia.

## Verificación de devolución (2026-11-21, run 20261121T145540Z)

Reabrí las tres primarias relevantes:
- InfoProbidad, declaración 1504762, fechada 19-08-2025: Eugenio Tuma Zedan declara 92,5% y calidad de controlador de INMOBILIARIA E INVERSIONES NUEVAS RAICES S.A., RUT 76.445.700-5. Esto acredita lo declarado en esa fecha, no un registro societario independiente al día del gasto.
- Servel, XLSX definitivo 2025, hoja «FORMULARIO 87 Y 88», sección GASTO: la fila de EUGENIO TUMA ZEDAN registra RUT 76.445.700-5, Formulario 103, 14-09-2025, CLP $1.500.000, factura exenta n.º 55, código 601 «Gasto rechazado» y detalle «Registro de Vehículos». Cotejo hecho con `xlsx2csv -a` sobre el archivo oficial descargado del URL indicado abajo; fila CSV 39113. El estado general de la candidatura figura «Aprueba con observaciones», no es aprobación particular de este gasto.
- Diario Oficial, CVE 2698185: el valor UF del 14-09-2025 es CLP $39.485,65; CLP $1.500.000 / $39.485,65 = 37,988..., redondeado a 37,99 UF.
- Oro, consulta ejecutada: devuelve el mismo registro, amount_uf 37,84, RUT 76445700, fecha 2025-09-14, monto 1.500.000, rechazado; al recalcular por la UF oficial resulta 37,99, diferencia +0,15 UF. SQL reproducible: `consultas/eugenio-tuma-campana-uf-correccion-20261121-1.sql`.

La explicación legítima se mantiene: el gasto puede corresponder a un servicio real de vehículos y el rechazo a falta de acreditación u otra causa administrativa; el reporte no publica la razón específica. El cambio no altera monto en CLP, rechazo, identidad documental ni inferencias. Afirmación débil reconocida: no consta el motivo individual del rechazo, por lo que no se atribuye.

## Sources

- Caso publicado (PR #180): https://github.com/rodrigooig/estadoclaro-casos/pull/180
- Servel, reporte definitivo 2025 (hojas 87/88 y auxiliar 103): https://www-doc.servel.cl/2026/09/Reporte%20Ingresos%20y%20Gastos%20Electorales%202025%20-%20Definitivas%20Presidenciales%20y%20Parlamentarias.xlsx
- InfoProbidad, declaración 1504762: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1504762
- Banco Central, tabla UF septiembre-octubre 2025, Diario Oficial, CVE 2698185: https://www.diariooficial.interior.gob.cl/publicaciones/2025/09/09/44246/01/2698185.pdf

PR anterior devuelto: https://github.com/rodrigooig/estadoclaro-casos/pull/333

## Decisión editorial (2026-11-22): publicado

La declaración de InfoProbidad 1504762 identifica a Eugenio Tuma Zedan y el RUT societario; Servel confirma Formulario 103 n.º 55, 14-09-2025, CLP $1.500.000 y gasto rechazado.
El Diario Oficial fija la UF de esa fecha en CLP $39.485,65: la equivalencia recalculada es 37,99 UF, no 37,84.
La corrección conserva el monto, el rechazo y los límites del caso; no altera la inferencia ni atribuye una causa que Servel no publicó.
Publicar la corrección numérica.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/340
