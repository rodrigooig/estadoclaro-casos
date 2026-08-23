
# Un crédito hipotecario de 26.248 UF revierte a negativo el patrimonio declarado del Conservador y Archivero de Los Lagos

En su declaración de patrimonio del 25 de mayo de 2026 —la número 15 de su serie y la vigente—, Carlos Andrés Ocampo Bustos, Conservador y Archivero del Poder Judicial con sede en Los Lagos, declaró un crédito hipotecario de 26.248,03 UF (1.063.288.926 pesos declarados) con el Banco de Chile, frente a activos totales de 6.119,56 UF (247.898.945 pesos). El cruce da un patrimonio neto de -20.128,47 UF (-815.389.981 pesos), según el panel patrimonial de Estado Claro construido sobre la declaración publicada en InfoProbidad ([ID 5117802](https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5117802)).

Dos meses antes, el 24 de marzo de 2026, el mismo tipo de crédito hipotecario con el Banco de Chile figuraba en 4.718,67 UF (188.000.000 de pesos declarados) y el patrimonio neto era positivo: 1.972,99 UF (78.607.416 pesos) ([ID 5111771](https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5111771)). Entre ambas declaraciones el pasivo hipotecario subió 21.529,36 UF, mientras los activos declarados bajaron levemente, de 6.691,66 a 6.119,56 UF. Es el nivel de deuda hipotecaria más alto que Ocampo Bustos ha declarado desde su primera declaración registrada, el 29 de marzo de 2017: en sus 15 declaraciones, el máximo previo habían sido 17.706,75 UF, declarados el 25 de marzo de 2019 —los 26.248,03 UF de mayo de 2026 lo superan en 8.541,28 UF.

En la declaración vigente, Ocampo Bustos reporta dos inmuebles —uno en Valdivia, adquirido el 19 de agosto de 2016 (3.762,11 UF), y otro en Los Lagos, rol 42-1, adquirido el 25 de mayo de 2012 (708,15 UF)—, dos vehículos (una BMW X5 año 2022 y un Peugeot 404 de 1977) y participación en dos sociedades: controlador con el 100% de Inmobiliaria e Inversiones Pancul SpA (adquirida el 14 de septiembre de 2022) y controlador con el 50% de Agrícola Santa Aurelia SpA (adquirida el 23 de noviembre de 2021). El portal no indica qué bien, si alguno, quedó en garantía del crédito hipotecario de 26.248,03 UF, ni cuál fue su destino.

Consultado sobre este mismo cruce, el agente conversacional de Estado Claro en producción confirmó las cifras y precisó que "el portal registra el crédito hipotecario y sus bienes, pero no informa el destino del préstamo, su monto original, la tasación comercial del inmueble ni qué bien quedó hipotecado", por lo que "no se puede afirmar que el crédito corresponda exactamente a los dos inmuebles ni que haya una inconsistencia".

## Explicaciones posibles y qué dice la evidencia pública

Ocampo Bustos ocupa un cargo designado dentro del Poder Judicial (Conservador y Archivero), no uno de elección popular, por lo que el registro de financiamiento electoral de SERVEL no aplica a su caso: no hay campaña ni candidatura que revisar ahí.

Se identificaron cuatro explicaciones legítimas y específicas a este caso, y para cada una se intentó una verificación real en internet:

1. **Compra o ampliación de un inmueble en curso, todavía no inscrita ni reflejada como activo en esta declaración.** Un crédito hipotecario grande a veces antecede a la inscripción del bien en el respectivo Conservador de Bienes Raíces, trámite que puede demorar meses. Se buscó "Carlos Ocampo Bustos" junto a "conservador", "Los Lagos" y "Valdivia". **No se encontró evidencia pública que lo confirme ni que lo descarte**: las búsquedas no devolvieron resultados utilizables sobre el sujeto.

2. **Crédito con garantía hipotecaria destinado a financiar sus sociedades**, en particular Inmobiliaria e Inversiones Pancul SpA (que controla al 100%) o Agrícola Santa Aurelia SpA (que controla al 50%), en lugar de una compra de vivienda propia. Se buscó el nombre de ambas sociedades y sus RUT (77645807 y 77494232). **No se encontró evidencia pública que lo confirme ni que lo descarte.**

3. **Refinanciamiento o reestructuración de deuda previa** en un crédito hipotecario mayor con el mismo banco (Banco de Chile), sin que cambie sustancialmente su patrimonio real. No hay, en los datos del portal ni en fuentes públicas encontradas, elementos que confirmen o descarten esta hipótesis.

4. **Error de digitación en el monto declarado.** El pasivo hipotecario de mayo de 2026 es más de cinco veces el valor de los dos inmuebles declarados (26.248,03 UF de crédito contra 4.470,26 UF de bienes raíces) y no tiene precedente en sus 15 declaraciones. El sistema de Estado Claro no marcó esta cifra como dato implausible ni como valor atípico (confianza alta, sin outlier detectado), lo que no confirma que el monto sea correcto, pero tampoco arrojó ninguna señal automática de error. No se encontró ninguna corrección o fe de erratas posterior.

Para las cuatro hipótesis, la búsqueda en internet no arrojó resultados utilizables: la herramienta de búsqueda web de esta sesión reportó su cuota agotada, y el acceso directo a los motores Bing y DuckDuckGo devolvió, según el caso, una verificación humana (CAPTCHA) o resultados evidentemente ajenos a la consulta. Esa ausencia de resultados es una limitación de las herramientas disponibles en esta sesión, no una prueba de que ninguna de las cuatro explicaciones sea cierta o falsa.

## Fuentes

- Declaración del 25 de mayo de 2026 (vigente, ID 5117802): https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5117802
- Declaración del 24 de marzo de 2026 (ID 5111771): https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5111771
- Panel patrimonial completo (15 declaraciones, 2017-2026) y detalle de la declaración vigente, obtenidos con las herramientas internas de Estado Claro (`ec_query.py wealth_panel`, `ec_query.py declaration_detail`) sobre el artefacto `data/gold.duckdb`.
- Respuesta del agente conversacional de Estado Claro en producción, consultado el 22 de agosto de 2026 sobre este mismo cruce, que cita las mismas dos declaraciones.
- Búsquedas web intentadas el 22 de agosto de 2026, sin resultados utilizables: herramienta de búsqueda web de esta sesión (cuota agotada) y acceso directo a Google, Bing y DuckDuckGo (bloqueados por verificación humana o sin resultados relacionados con la consulta).

## Qué queda por verificar

- El destino real del crédito hipotecario de 26.248,03 UF y qué bien, si alguno, quedó en garantía: el portal no lo especifica.
- Si el monto declarado corresponde al saldo insoluto de la deuda o al monto total pactado con el Banco de Chile.
- Si existe alguna relación entre este crédito y las dos sociedades que Ocampo Bustos controla (Inmobiliaria e Inversiones Pancul SpA y Agrícola Santa Aurelia SpA), o si es enteramente personal.
- Una explicación directa del propio declarante sobre el origen y el destino del crédito.

---

*Estos datos provienen de declaraciones de patrimonio e intereses autodeclaradas por el propio titular bajo la Ley 20.880, publicadas por InfoProbidad. No están auditadas por ningún organismo: Estado Claro las cruza y ordena, pero no verifica su exactitud.*
