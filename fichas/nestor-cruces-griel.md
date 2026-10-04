# Néstor Eduardo Cruces Burgos — GRIEL LTDA y compras quirúrgicas del Hospital de Coyhaique

- **ID:** `nestor-cruces-griel`
- **Estado:** evidencia insuficiente; no preparar borrador de caso.
- **Fecha de investigación:** 2026-10-04 UTC.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; `ec-gold-sql`, artefacto local reportado sin cambios y solo lectura.
- **Identidad:** nombre completo en las declaraciones primarias y en una resolución del Hospital Coyhaique.[1][13][14]
- **Deduplicación:** la búsqueda textual del nombre completo, GRIEL LTDA y RUT societario no halló pista coincidente en los casos publicados ni en las fichas existentes; alcance limitado a los repositorios revisados el 2026-10-04.

## Síntesis y mapa de afirmaciones

InfoProbidad registra una declaración de Néstor Eduardo Cruces Burgos del 30-01-2023, como consejero regional del Gobierno Regional de Aysén, con una participación en GRIEL LTDA, giro «SERVICIOS MEDICOS», campo «Cantidad / Porcentaje» 40, valor libro CLP 5 y marca «Tiene Calidad de Controlador: NO».[1]
La rectificación de 01-04-2026 lo identifica como médico cirujano del Servicio de Salud Aysén, con asunción indicada el 11-03-2022, y mantiene GRIEL LTDA, 40 en ese campo y sin calidad de controlador; su valor libro en esa versión es CLP 2.000.000.[13]
No se interpreta 40 como porcentaje: la etiqueta permite cantidad o porcentaje y el tipo de activo aparece como «OTRO».[1][13]

**Dato medido en el oro:** `consultas/nestor-cruces-griel-1.sql` devuelve cinco filas de declaraciones con GRIEL LTDA, incluida la rectificación de 2026.
Dos identificadores distintos aparecen para el 30-01-2023; se conservan ambos y no se cuentan como compras.[1]
El valor declarado en la serie pasa de CLP 5 a CLP 2.000.000; las fuentes consultadas no establecen cuándo ni por qué cambió ni su valor efectivo de mercado.[1][13]

**Compras medidas:** `consultas/nestor-cruces-griel-2.sql` busca el RUT societario exacto normalizado y devuelve seis códigos únicos del Hospital de Coyhaique entre 04-11-2022 y 31-03-2026.
`consultas/nestor-cruces-griel-3.sql` vuelve a agregar por código único y confirma seis OCs, un comprador y CLP 19.569.244 nominales; una figura «En proceso» y cinco «Recepción Conforme».

```text
ec-gold-sql · consulta 1: 5 filas; GRIEL LTDA; 2023-01-30 duplicada por dos declaration_id; 2026-04-01, valor libro CLP 2.000.000, no controlador.
ec-gold-sql · consulta 2: 6 order_code únicos; comprador Hospital de Coyhaique; 2022-11-04 → 2026-03-31.
ec-gold-sql · consulta 3: unique_orders=6; distinct_buyers=1; total_amount_clp=19.569.244; direct_award_orders=6; agile_orders=0.
Una OC: En proceso; cinco OCs: Recepción Conforme. Montos de órdenes, no pagos auditados.
```

La OC 759035-1246-SE22 del 04-11-2022 consigna CLP 4.362.500 y un título sobre lista de espera quirúrgica.[3]
Las OCs 759035-1885-SE23 y 759035-1884-SE23, ambas del 13-11-2023, consignan CLP 2.662.500 y CLP 6.002.500.[4][5]
La OC 759035-2486-SE23 del 27-12-2023 consigna CLP 1.101.744.[6]
La OC 759035-854-SE24 del 20-03-2024 consigna CLP 2.920.000.[7]
La OC 1366597-747-TD26 del 31-03-2026 consigna CLP 2.520.000 y refiere un trato directo por proveedor de alto grado de especialización.[8]
En las fichas verificadas, proveedor y comprador son SERVICIOS MEDICOS GRIEL LIMITADA y el Hospital de Coyhaique, respectivamente; el RUT societario es el mismo que aparece en la declaración.[3][4][5]
Algunos títulos de OC nombran «Dr. Cruces» o «DR CRUCES» y describen cirugías, pero no identifican el nombre completo ni prueban que él ejecutara cada prestación.[4][5][8]
Los CLP citados son montos nominales contratados, no pagos efectivamente recibidos por la sociedad o el declarante.[3][8]

Una resolución oficial del Hospital Regional Coyhaique reemplaza a Pedro Pablo Pinto Guerrero por Néstor Eduardo Cruces Burgos como responsable de coordinar actividades de mejora continua de calidad en Cirugía y regulariza esa responsabilidad desde el 02-01-2019.[14]
La resolución acredita una función institucional en Cirugía, pero no demuestra continuidad en cada fecha de compra ni intervención en selección, autorización, recepción o pago.[14]

**Hipótesis de interés público:** la coexistencia de una participación societaria autodeclarada, una función hospitalaria de calidad en Cirugía y compras quirúrgicas de esa institución merece aclarar el nexo funcional.[1][13][14]
La explicación legítima más plausible es que el Hospital contratara prestaciones quirúrgicas para atender necesidades asistenciales; una OC alude a lista de espera y otras describen cirugía, pero no se obtuvieron anexos que acrediten necesidad, selección, horarios o medidas de separación.[3][4][8]
No se concluye intervención personal, beneficio particular, irregularidad ni infracción.[unverified]

## Rutas examinadas (2026-10-04)

1. **Oro / declaración e identidad:** consulta por nombre completo y RUT societario, con cargo, fechas, `type`, `quantity`, valor y calidad de controlador; resultado guardado en [`nestor-cruces-griel-1.sql`](../consultas/nestor-cruces-griel-1.sql).
2. **Oro / coincidencia de proveedor:** búsqueda exacta de RUT normalizado en `purchase_order`, con fecha, estado, mecanismo, comprador y monto; [`nestor-cruces-griel-2.sql`](../consultas/nestor-cruces-griel-2.sql).
3. **Oro / comprobación independiente:** suma por código único y recuento de compradores, para descartar doble conteo de ítems/snapshots; [`nestor-cruces-griel-3.sql`](../consultas/nestor-cruces-griel-3.sql).
4. **Declaraciones primarias:** cotejo de las fichas InfoProbidad del 30-01-2023 y 01-04-2026 por nombre completo, organismo/cargo, empresa, marca de control y valor declarado.[1][13]
5. **Mercado Público:** revisión de las seis fichas mediante código exacto; comparación del RUT societario, comprador, fecha, monto, estado, tipo/ruta de compra y texto de prestación.[3][4][8]
6. **Documento institucional:** revisión de la resolución del Hospital sobre el responsable de calidad de Cirugía; no es una adjudicación ni una delegación de compras.[14]
7. **Búsqueda por fuente e identificadores:** consultas web exactas por nombre completo, razón social/RUT, códigos de OC e identificador de trato directo 1366597-216-FTD26; no apareció otro documento primario que aclare quién evaluó o autorizó.
8. **Alternativa y refutación:** los propios títulos de las OCs apuntan a lista de espera/prestaciones quirúrgicas, compatible con compra asistencial ordinaria.[3][4][8]
También es posible que la función de calidad fuera clínica, no de compra, y que el campo 40 no equivalga a participación porcentual ni a control.[1][13][14]
Ninguna explicación determina por sí sola la selección del proveedor; la falta de resultados en búsquedas no prueba que no existan otros documentos públicos.
9. **Deduplicación:** búsqueda textual del nombre, sociedad y RUT societario en `estadoclaro-casos` y `estadoclaro-investigacion`; no apareció otra ficha/caso con esta huella. Resultado limitado a esos archivos.

La ficha pública de la OC 1366597-747-TD26 muestra «Ver Anexos» como texto sin enlace accesible en el DOM revisado.[8]
Se buscaron las mismas compras por sus códigos, por RUT societario y por el identificador del procedimiento; no se eludieron login, CAPTCHA ni controles, ni se contactó a terceros.

## Gate editorial, incertidumbre y decisión

- **Identidad:** nombre completo corroborado por fuentes primarias de declaración y resolución.[1][13][14]
- **Hecho material reproducible:** sí; seis OCs por RUT societario exacto y un comprador, con montos/estados registrados en las fichas y consultas.[3][4][8]
- **Relevancia funcional:** plausible por la resolución de calidad en Cirugía y la naturaleza quirúrgica de las compras; falta verificar la vigencia de la función en cada fecha y una intervención en contratación.[14]
- **Error de cruce/doble conteo:** mitigado con llave societaria exacta, códigos únicos y consulta agregada independiente; las OCs no identifican siempre al profesional prestador.[3][4][8]
- **Explicación legítima:** buscada en el texto de las OCs; atención quirúrgica/listas de espera es una alternativa plausible, no una explicación verificada del proceso de selección.[3][4][8]
- **Revisión adversarial independiente:** no hubo revisor humano. Las consultas 2 y 3 son una comprobación de agregación, no revisión editorial independiente.

**Decisión: evidencia insuficiente; no borrador.** Para cruzar el gate faltan anexos/resoluciones que identifiquen al prestador individual, el fundamento de contratación y quién solicitó, evaluó, autorizó y recibió los servicios; además, debe confirmarse si la función de calidad en Cirugía seguía vigente durante las fechas de compra.[8][14]
La pista se conserva como hechos por verificar, no como conclusión de conflicto o irregularidad.[unverified]

**Próxima acción concreta:** no repetir búsquedas generales; reabrir solo con anexos públicos legibles, actos con roles nominados o documentación oficial que confirme vigencia funcional e intervención en una compra.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=3f212125f7f4b7187d202e4517d0f96d — InfoProbidad — declaración 30-01-2023
[3] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=759035-1246-SE22 — Mercado Público — OC 759035-1246-SE22
[4] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=759035-1885-SE23 — Mercado Público — OC 759035-1885-SE23
[5] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=759035-1884-SE23 — Mercado Público — OC 759035-1884-SE23
[6] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=759035-2486-SE23 — Mercado Público — OC 759035-2486-SE23
[7] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=759035-854-SE24 — Mercado Público — OC 759035-854-SE24
[8] https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1366597-747-TD26 — Mercado Público — OC 1366597-747-TD26
[13] https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=25edd4d61e7f227f25679a284ec37214 — InfoProbidad — declaración 01-04-2026
[14] https://www.hospitalcoyhaique.cl/wp-content/uploads/2023/01/RE-1509-Responsable-calidad-cirugia-2.pdf — Hospital Regional Coyhaique — resolución RE-1509
