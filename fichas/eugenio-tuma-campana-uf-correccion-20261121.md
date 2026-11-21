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

## Sources

- Caso publicado (PR #180): https://github.com/rodrigooig/estadoclaro-casos/pull/180
- Servel, reporte definitivo 2025: https://www-doc.servel.cl/2026/09/Reporte%20Ingresos%20y%20Gastos%20Electorales%202025%20-%20Definitivas%20Presidenciales%20y%20Parlamentarias.xlsx
- Banco Central, tabla UF septiembre-octubre 2025, Diario Oficial: https://www.diariooficial.interior.gob.cl/publicaciones/2025/09/09/44246/01/2698185.pdf
