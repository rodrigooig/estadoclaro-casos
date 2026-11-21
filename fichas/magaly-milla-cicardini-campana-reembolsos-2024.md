# Ficha — Magaly Malvina Milla Montaño y reembolsos de campaña a sociedades declaradas

- **ID:** `magaly-milla-cicardini-campana-reembolsos-2024`
- **Pista:** consulta propia al oro sobre pares persona–sociedad con control declarado y cruce Servel; apareció una campaña que solicita reembolso por facturas a dos empresas de la declaración. La búsqueda por Magaly Milla y por ambos RUT en `INDICE.md` no encontró caso previo.
- **Pregunta decisiva:** ¿las facturas que la campaña de Maglio Honorio Cicardini Neyra presentó a Servel corresponden por RUT a sociedades que Magaly Milla declaró controlar y para las que pidió reembolso? Sí: cinco gastos, dos RUT iguales a los de la declaración y solicitudes auxiliares por esos montos. Lo comprobado no permite afirmar titularidad al momento de la campaña ni pago efectivo de los reembolsos.

## Hechos comprobados

- InfoProbidad 913148 identifica a **MAGALY MALVINA MILLA MONTAÑO**, declaración fechada 16-11-2022, cargo de concejal de la Municipalidad de Copiapó. La sección del cónyuge muestra a **MAGLIO HONORIO CICARDINI NEIRA**. Milla declara derechos de 50% y control de **COMERCIAL LOS INCAS**, RUT **78.320.420-7**, y 41,67% y control de **SOCIEDAD FESTIVA**, RUT **76.427.324-9**. Son datos autodeclarados en esa fecha.[1]
- En la red familiar de InfoProbidad 906761 aparecen MAGLIO HONORIO CICARDINI NEYRA y MAGALY MALVINA MILLA MONTAÑO; respalda la identidad pese a la diferencia de una letra entre “NEIRA” y “NEYRA”. No se atribuye una línea por nombre solamente.[3]
- La planilla definitiva de Servel para ingresos y gastos electorales 2024 registra cinco facturas en la candidatura a alcalde de **MAGLIO HONORIO CICARDINI NEYRA**:
  - 22-10-2024, Sociedad Festiva Limitada, RUT 76.427.324, CLP $7.106.680 (187,18 UF), publicidad radial, factura 1832.
  - 23-10-2024, Comercial Los Incas Limitada, RUT 78.320.420, CLP $6.372.450 (167,84 UF), publicidad radial, factura 57905.
  - 24-10-2024, Comercial Los Incas Limitada, CLP $871.437 (22,95 UF), propaganda impresa, factura 57944.
  - 24-10-2024, Comercial Los Incas Limitada, CLP $4.998.000 (131,64 UF), propaganda impresa, factura 57941.
  - 24-10-2024, Comercial Los Incas Limitada, CLP $3.387.454 (89,22 UF), propaganda impresa, factura 57938.
- Suma reproducible: **CLP $22.736.021 (598,83 UF)**; las cinco filas indican “Reembolso directo al candidato”. Auxiliar 107 marca “Detalle de reembolso solicitado” por los mismos valores. Eso acredita una solicitud, no que se pagara.[2]
- Resultado de auditoría global de la candidatura: “Aprueba con Observaciones”. Ninguna de las cinco líneas aparece en el campo/hoja de gastos rechazados. El reporte disponible no detalla qué observaciones afectan la cuenta ni aprueba de forma individual el reembolso.[2]
- El mismo RUT societario une la declaración con Servel. No se asume que la participación declarada en 2022 siguiera vigente en octubre de 2024.

## Explicación legítima más fuerte

Las cinco líneas describen gastos de publicidad radial e impresos de campaña y están documentadas como facturas; los auxiliares detallan solicitudes de reembolso. Es compatible con contratación ordinaria de servicios electorales. El estado global “Aprueba con Observaciones” no prueba ni el pago, ni la aprobación particular, ni una irregularidad en estos gastos.

## Límites y evidencia que falta

- La declaración patrimonial es una foto de 2022; no se obtuvo registro societario contemporáneo de octubre de 2024 que confirme participaciones y control.
- “Reembolso directo al candidato” y el auxiliar “reembolso solicitado” no prueban pago efectivo; no se encontró comprobante de abono, cesión o resolución individual de reembolso.
- El reporte público no explica las observaciones globales ni especifica que se refieran a estas cinco facturas.
- El apellido del cónyuge varía entre “NEIRA” en la declaración de Milla y “NEYRA” en la candidatura; la declaración familiar de InfoProbidad muestra ambos nombres, pero no aporta un identificador individual asociado a las facturas.

## Decisión

**Borrador listo para el editor.** La línea de investigación supera las cinco preguntas: fuentes primarias de ambos lados; monto total de CLP $22,7 millones solicitado como reembolso; relevancia directa para auditoría de fondos electorales; texto factual sin imputación; y ausencia de duplicado en `INDICE.md`. El borrador distingue expresamente lo declarado en 2022 de la titularidad no verificada en 2024, y la solicitud de un pago no confirmado.

## Consultas reproducibles

- `consultas/magaly-milla-cicardini-campana-reembolsos-2024-1.sql` — declaración y dos sociedades por RUT.
- `consultas/magaly-milla-cicardini-campana-reembolsos-2024-2.sql` — gastos, UF, solicitudes, rechazos y cuenta global.
- Excel oficial Servel 2024 descargado a `tmp/milla-campaign-servl/servel-2024.xlsx` y convertido con `xlsx2csv -a`; líneas comprobadas en `INGRESOS Y GASTOS.csv`, `FORMULARIO AUXILIAR 107.csv` y `Resultado Auditoria Cuentas.csv`.
- Corte del oro: `meta.build_date = 2026-11-20T17:45:38+00:00`.

## Decisión editorial (2026-11-21): lista para verificacion

No publicar todavía: InfoProbidad 913148 confirma que Magaly Malvina Milla Montaño declaró el 16-11-2022 control y los RUT 78.320.420-7 y 76.427.324-9; InfoProbidad 906761 vincula en red familiar a Maglio Honorio Cicardini Neyra. La atribución queda limitada a lo declarado en 2022.
No pude reabrir y cotejar en la fuente primaria Servel el libro definitivo 2024: la extracción devolvió bytes XLSX y el navegador abortó la descarga. Quedan sin verificación independiente las cinco facturas, montos/fechas, identidad del proveedor por RUT, solicitudes de reembolso y resultado de auditoría.
Falta concreto: validar esas filas y los auxiliares 107 en una copia consultable del reporte Servel; el texto correctamente no afirma pago efectivo ni titularidad vigente en 2024.
Comparé el formato con los casos Tuma y Ponce Castro de autocontratación; el interés público es acotado pero material si se confirman las líneas. No publico sin ese cotejo primario.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/335
