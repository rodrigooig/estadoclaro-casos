# Salto de pasivo hipotecario en declaración de Dario Sanchez Montenegro — pista en observación

- **ID estable:** `dario-sanchez-montenegro-pasivos`
- **Categoría:** patrimonio y pasivos
- **Estado actual:** evidencia insuficiente; no redactar caso
- **Apertura / última actualización:** 2026-10-02 (seguimiento de búsqueda documental)
- **Corte de datos:** `meta.build_date = 2026-09-29T15:40:44+00:00`; oro sincronizado 2026-10-01 23:49 UTC, sin cambios frente a última sincronización. Consultas locales el 2026-10-02 mediante `ec-gold-sql`, solo lectura.
- **Identidad:** coincidencia exacta del nombre completo `DARIO SANCHEZ MONTENEGRO` entre el titular de InfoProbidad y `declarant.full_name`; se enlaza solo el `person_id` que corresponde a esa declaración y su serie de cuatro documentos. No se atribuye ningún registro de homónimo.[1][7]

## Resultado breve

La serie del oro muestra que un pasivo hipotecario declarado a Banco de Chile pasó de CLP 88.253.566 (14-03-2023) a CLP 88.520.142.777 (18-03-2024), mientras los activos del último documento suman CLP 45.375.045.[1][7]
La fuente primaria confirma que el formulario de 2024 reporta exactamente CLP 88.520.142.777 como monto global y monto adeudado de un crédito hipotecario con Banco de Chile.[1]
En 2023 registra CLP 88.253.566 para la misma naturaleza y acreedor.[7]

El cambio equivale a 1.003,02 veces el saldo declarado en 2023, según la operación guardada en SQL 6; el artefacto lo convierte a 2.392.398,79 UF y calcula patrimonio neto de -2.391.172,46 UF en 2024.[1][7]
No es un simple error del join con la fuente: el monto de CLP 88.520.142.777 está escrito en la declaración original.[1]

La diferencia visible podría ser una errata del formulario, una deuda hipotecaria realmente distinta o una reestructuración, pero no hay evidencia revisada que determine cuál explicación aplica.[1][7]
El formulario y el oro no permiten confirmar saldo con el acreedor ni identificar con qué bien se garantizó; por ello esto es una anomalía documental que amerita verificación profesional, no evidencia de irregularidad ni base suficiente para un caso publicable.[1]

## Evidencia y consultas reproducibles

- [`consultas/dario-sanchez-montenegro-pasivos-1.sql`](../consultas/dario-sanchez-montenegro-pasivos-1.sql) ejecuta una pantalla del corte vigente por pasivos mayores que activos, sin marca `has_outlier`, ordenada por patrimonio neto.
  Dario Sanchez Montenegro encabezó la salida; la búsqueda literal en casos públicos y fichas privadas no encontró una coincidencia previa.
- [`consultas/dario-sanchez-montenegro-pasivos-2.sql`](../consultas/dario-sanchez-montenegro-pasivos-2.sql) devuelve cuatro declaraciones en orden cronológico: activos de 789,88; 1.212,60; 1.261,04 y 1.226,33 UF, frente a pasivos de 2.566,91; 2.328,96; 2.479,38 y 2.392.398,79 UF.[1][7]
  En el último registro, `has_outlier = false`, `confidence = high` y `series_has_gaps = false`.
- [`consultas/dario-sanchez-montenegro-pasivos-3.sql`](../consultas/dario-sanchez-montenegro-pasivos-3.sql) verifica el registro de pasivo más reciente: una fila, moneda CLP, tipo `CRÉDITO HIPOTECARIO`, acreedor Banco de Chile, valor nominal CLP 88.520.142.777, 2.392.398,79 UF, `implausible = false`.[1]
- [`consultas/dario-sanchez-montenegro-pasivos-4.sql`](../consultas/dario-sanchez-montenegro-pasivos-4.sql) coteja nominales y UF de las cuatro declaraciones: pasivos en CLP 81.457.863 (2022-04-02), CLP 81.457.863 (2022-12-19), CLP 88.253.566 (2023-03-14) y CLP 88.520.142.777 (2024-03-18).[1][7][8]
  La declaración de 2024 registra patrimonio neto nominal de -CLP 88.474.767.732.[1]
- [`consultas/dario-sanchez-montenegro-pasivos-5.sql`](../consultas/dario-sanchez-montenegro-pasivos-5.sql) cuenta en la declaración 2024 un inmueble por CLP 27.740.685, un bien mueble por CLP 15.234.360 y dos participaciones societarias por CLP 2.400.000 en conjunto.[1]
  Es inventario de lo modelado, no tasación del patrimonio completo.
- [`consultas/dario-sanchez-montenegro-pasivos-6.sql`](../consultas/dario-sanchez-montenegro-pasivos-6.sql) calcula la relación entre montos nominales consecutivos: 1.003,02×; diferencia CLP 88.431.889.211; y deuda/activos declarados de 1.950,86× en 2024.[1][7]

Las consultas se ejecutaron realmente con `ec-gold-sql` contra el oro de corte 2026-09-29.
La conversión UF es la reportada por `liability_uf` del artefacto; las cifras de CLP se conservan nominales a la fecha de declaración, sin deflactarlas ni presentarlas como valores actuales.[1][7][8]

## Fuentes primarias y contraste

InfoProbidad identifica al declarante como DARIO SANCHEZ MONTENEGRO en las declaraciones IDs 1144876 y 969843.[1][7]
Las declaraciones IDs 926505 y 846768 muestran el mismo nombre completo.[8][9]
La declaración de 2024 lo sitúa como director regional de la Dirección Nacional de Migraciones.[1]

La declaración ID 1144876 informa un inmueble de plena propiedad en Arica, adquirido en 2019 y marcado como domicilio; reporta un pasivo hipotecario de CLP 88.520.142.777 con Banco de Chile.[1]

La declaración ID 969843, del 14-03-2023, registra un pasivo hipotecario de CLP 88.253.566 con Banco de Chile.[7]

La declaración ID 926505, de 19-12-2022, es una rectificación a requerimiento de órgano fiscalizador y registra el monto hipotecario de CLP 81.457.863.[8]
La declaración ID 846768, del 02-04-2022, presenta el mismo monto y acreedor.[9]

## Explicaciones alternativas: búsqueda y límites

- **Garantía hipotecaria real sobre el domicilio declarado.** Es posible en principio: el formulario identifica un crédito hipotecario y un inmueble de plena propiedad marcado como domicilio, pero no relaciona el crédito con un inmueble específico ni aporta inscripción hipotecaria verificable.[1]
  La declaración de 2023 da el mismo tipo y acreedor con un saldo cercano a CLP 88 millones.[7]
  Esa continuidad vuelve especialmente importante confirmar si en 2024 se informó el saldo, el monto original u otra cifra.[1][7]
- **Error de transcripción, digitación o actualización del monto.** Es una explicación compatible con el salto de más de mil veces sin un cambio comparable en el total de activos; el error no puede afirmarse porque la fuente original efectivamente publica los once dígitos como monto adeudado.[1][7]
- **Crédito nuevo, refinanciamiento o modificación contractual.** También es posible, pero las declaraciones consultadas no documentan las condiciones, el destino de los fondos, el saldo anterior amortizado ni una segunda obligación.
  No se encontró evidencia primaria que lo confirme o descarte.[1][7][8]
- **Conversión monetaria defectuosa en EstadoClaro.** Se revisó y no explica el salto observado: la línea de origen está en pesos chilenos y el oro conserva CLP 88.520.142.777 antes de convertirla a UF.[1]
  No obstante, la bandera `implausible = false` no valida que el dato autodeclarado sea correcto; queda bajo el umbral automático aplicable al tipo de deuda.

La búsqueda de explicaciones se acotó a las declaraciones originales de 2022–2024 y a los campos del oro.
No se verificó el crédito con el banco, un certificado de deuda ni el Conservador de Bienes Raíces.
No se afirma que se haya localizado o descartado una explicación legítima completa.

## Desafío adversarial y decisión editorial

- Se volvió a ejecutar la consulta de la serie y se consultó el detalle raw de la deuda.
  Ambas rutas coinciden en una sola deuda hipotecaria, el mismo acreedor, el monto nominal y la fecha; la fuente primaria 2024 reproduce el monto reportado.[1]
  Esto confirma qué fue declarado, no el saldo real frente al banco.
- El desafío más fuerte a una lectura alarmista es que el dato puede corresponder a una obligación hipotecaria o a una cifra declarada erróneamente; la documentación revisada no permite distinguirlas.[1][7]
  El salto no debe describirse como deuda real confirmada, ocultamiento, infracción ni conducta impropia.
- **Decisión:** mantener como **evidencia insuficiente** y no preparar borrador público.
  La cifra original es llamativa y verificable, pero falta corroboración externa del saldo y del vínculo con el inmueble; además, el salto podría ser una errata material.[1]
- **Próxima acción concreta:** antes de reconsiderar publicación, buscar evidencia documental pública independiente que identifique la inscripción hipotecaria y su monto, o una rectificación posterior de la declaración.
  Si no aparece una verificación documental, cerrar como descartada por cifra no corroborada.
  No contactar terceros en esta ejecución.

## Seguimiento documental — 2026-10-02

- **Verificación de la fuente primaria:** se volvió a extraer la declaración 1144876. Reporta el inmueble de Arica como adquirido el 10-12-2019 y la deuda global y adeudada por CLP 88.520.142.777, clasificada como crédito hipotecario a Banco de Chile.[1]
  La misma declaración deja como `RESERVADO` el número de inscripción, fojas, rol de avalúo y Conservador, por lo que no permite identificar desde el formulario la inscripción registral concreta.[1]
- **Búsqueda de corrección posterior:** se consultó la web por el nombre completo con declaraciones de 2025/2026; la búsqueda no devolvió resultados.[unverified] Esto solo describe esa búsqueda, no prueba que no exista una rectificación o documento en otros canales.
- **Ruta nueva de contraste:** el sitio oficial del CBR de Arica expone un índice separado de hipotecas con opción «Buscar por Nombre».[15]
  No se completó ni envió el formulario: el envío incluye el campo `g-recaptcha-response`, que no pudo resolverse en esta ejecución automatizada. Por tanto, no se obtuvo una inscripción ni un monto registral; tampoco se buscó por datos inventados.
- **Revisión paralela del oro:** se rerunearon las consultas guardadas 4 y 6 con `ec-gold-sql`; la serie repite los cuatro nominales, y la relación 2024/2023 se mantiene en 1.003,02×. El oro constata lo declarado, no el saldo bancario ni el principal original.
- **Resultado negativo acotado:** las búsquedas web exactas del monto y del nombre no localizaron una fuente independiente que confirme el saldo; el único resultado documental directo de monto fue la propia declaración.[unverified] La búsqueda web no sustituye una consulta al índice hipotecario ni un certificado del Conservador.
- **Decisión:** conservar **evidencia insuficiente**, sin borrador de caso. La cifra es comprobable como dato declarado, pero no hay verificación independiente de su saldo. No se infiere deuda real por esa suma, error, infracción o irregularidad.
- **Próxima acción concreta:** cuando pueda resolverse el CAPTCHA por un operador humano autorizado, consultar el índice de Hipoteca Propiedad del CBR Arica por el nombre exacto y rango 2019–2024; contrastar solo la inscripción que corresponda al inmueble declarado y distinguir monto inscrito de saldo adeudado. Si no se identifica una inscripción pública vinculable o no aparece una rectificación independiente, cerrar como cifra no corroborada.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1144876 — InfoProbidad, declaración 1144876
    > "### Monto global en pesos $ 88.520.142.777"
    > "| Nombre o Razón Social del acreedor | BANCO DE CHILE |"
    > "| N° de inscripción | RESERVADO |"
[7] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=969843
    > "### Monto global en pesos $ 88.253.566"
[8] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=926505
    > "| Tipo | Rectificación A Requerimiento De Órgano Fiscalizador |"
    > "### Monto global en pesos $ 81.457.863"
[9] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=846768
    > "### Monto global en pesos $ 81.457.863"
[15] https://www.conservadorarica.cl/solicitudes/indices/indices.php?libro=Hipoteca_Propiedad
    > "Buscar por Nombre"
    > "Índices Hipoteca Propiedad"
