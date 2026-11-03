# Margarita Loreto Navarrete Zurita y contrato de defensa penal de Rancagua

- **ID:** `margarita-navarrete-dpp-defensa-penal-2024`
- **Estado:** borrador listo
- **Categoría:** compras/relaciones con el Estado; patrimonio e intereses
- **Corte del oro:** `2026-10-30T15:53:06+00:00`
- **Pregunta decisiva:** ¿La coincidencia entre un derecho societario declarado por una jueza del Poder Judicial en Rancagua y un contrato material de la misma proveedora para defensa penal en Rancagua justifica revisar jurisdicción, causas y alcance económico?

## Hechos comprobados

1. InfoProbidad 5092721 identifica por nombre completo a Margarita Loreto Navarrete Zurita. La declaración, fechada 26-12-2024, consigna cargo «Juez», organismo Poder Judicial y comuna Rancagua. En sociedades registra un «DERECHO» en SOCIEDAD DE SERVICIOS Y ASESORIAS JURIDICOS, RUT 76.318.827-2, adquisición 20-12-2022, valor libro/corriente CLP $400.000 (10,42 UF a la fecha según `uf_series`), y «Tiene Calidad de Controlador: false». «Cantidad / Porcentaje» muestra «1»; no debe interpretarse como un porcentaje sin la unidad que la fuente omite.[1]
2. La fuente primaria de Mercado Público identifica la OC 1739-37-SE24, enviada 27-12-2024, como proveniente de la licitación pública 1739-3-LR24; status «Recepción Conforme». El comprador es la Defensoría Penal Pública, unidad Defensoría Regional VI Región; el proveedor aparece con el mismo RUT, y el servicio es «SERVICIO DE DEFENSA PENAL ZONA 1 RANCAGUA». La ficha indica 48 unidades, total CLP $1.377.600.000 (35.868,66 UF al 27-12-2024 según el oro).[2]
3. La Ley 19.718 establece que la Defensoría Penal Pública es un servicio público descentralizado con finalidad de prestar defensa penal. No es el Poder Judicial que figura como empleador en InfoProbidad.[3]
4. En la declaración de 29-03-2025, posterior a la orden, el cargo consignado es «Secretario»; dentro de las actividades de los últimos 12 meses figura «JUEZ», sin tribunal ni jurisdicción descritos en esa línea.[4]
5. Consulta reproducible de `declared_supply_order` encuentra una OC primaria en la ventana durante la cual el oro vincula a persona, sociedad y proveedor por RUT; `same_institution = false` porque las instituciones compradora y empleadora están separadas. UF calculadas en la consulta 2.[5][6]

## Identidad, alcance y límites

La identidad no depende de semejanza nominal: el nombre completo se coteja en InfoProbidad; la sociedad/proveedor se empata por el RUT 76.318.827-2. El hecho probado es una declaración de derecho societario y una OC de una sociedad por ese RUT. No se afirma que el campo «1» sea 1%, que la declarante administrara o ejecutara la empresa, que recibiera el monto total o que interviniera en la compra.

La ventana es temporalmente estrecha: declaración el 26-12-2024, compra al día siguiente. Hay un nexo funcional plausible que merece una comprobación limitada: la declaración la identifica como jueza del Poder Judicial en Rancagua, y la OC compra defensa penal para Zona 1 Rancagua. No se estableció qué tribunal ni jurisdicción ejercía exactamente, si conoció causas atendidas por el proveedor o si el servicio contrataba abogados que comparecieron ante ella. `same_institution = false` no prueba ausencia de relación funcional; significa que comprador y empleador no son la misma institución.

## Explicación legítima más fuerte

La sociedad fue contratada por una licitación pública, no mediante una compra atribuida a la jueza; su derecho aparece como no controlador en la declaración. La Defensoría Penal Pública y el Poder Judicial son entidades distintas. Estos hechos permiten una explicación ordinaria de proveedor de servicio contratado por competencia pública y no prueban intervención individual, incompatibilidad, pago personal ni beneficio particular. No se obtuvo el expediente de evaluación ni se identificó a los profesionales que prestaron el servicio.

## Desafío y decisión

- **Identidad/primaria:** nombre completo, RUT de sociedad y proveedor, fecha y monto de OC se reabrieron en InfoProbidad y Mercado Público primarios.[1][2]
- **Materialidad y nexo:** una compra por CLP $1.377.600.000 (35.868,66 UF) para defensa penal en la Zona 1 Rancagua, dentro de un día de una declaración que consigna cargo de jueza en Rancagua, es una pregunta de interés público para una revisión documental. La relevancia es la posible coincidencia jurisdiccional, no una imputación.[1][2]
- **Refutación más fuerte:** la licitación fue pública, el derecho no es controlador, el comprador no es el empleador y no hay evidencia de que la jueza interviniera o conociera casos del proveedor.[1][2][3]
- **Afirmación más débil:** el enlace entre esa función judicial local y los servicios contratados; faltan tribunal/jurisdicción precisos, asignaciones de causas, nómina de profesionales y expediente de compra.

**Decisión: `borrador listo`.** Hay un hecho verificable y material, con una pregunta concreta para comprobar jurisdicción/causas y una explicación legítima explícita; el borrador se limita a esa pregunta. No concluye irregularidad. Reabrir/corregir si el expediente o el cotejo de causas confirma o descarta esa conexión, o si se demuestra que la línea de proveedor no corresponde a la sociedad declarada.

## Fuentes primarias

- [1] InfoProbidad, declaración 5092721, 26-12-2024: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5092721
- [2] Mercado Público, OC 1739-37-SE24: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1739-37-SE24
- [3] BCN, Ley 19.718: https://www.bcn.cl/leychile/navegar?idNorma=182755
- [4] InfoProbidad, declaración 5098572, 29-03-2025: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5098572
- [5] Consulta de semillas y órdenes: `consultas/margarita-navarrete-dpp-2024-1.sql` (solo `ec-gold-sql`).
- [6] Conversión UF: `consultas/margarita-navarrete-dpp-defensa-penal-2024-2.sql` (solo `ec-gold-sql`).

## Entrega editorial

Borrador: `casos/negocios_estado/margarita-navarrete-dpp-defensa-penal-2024.md`. El editor debe cotejar alcance de la participación, bases/evaluación de la licitación y posible coincidencia con causas; el borrador no afirma que esos documentos ya se revisaron.

## Decisión editorial (2026-11-03): lista para verificacion

Devolución: reabrí InfoProbidad (ID 5092721) y Mercado Público (OC 1739-37-SE24). La declaración confirma a Margarita Loreto Navarrete Zurita como jueza del Poder Judicial en Rancagua y un derecho no controlador en RUT 76.318.827-2; Mercado Público confirma la OC por $1.377.600.000 para defensa penal Zona 1 Rancagua, tramitada por licitación. No se comprobó tribunal/jurisdicción ni coincidencia con causas atendidas por la sociedad, por lo que la conexión funcional descrita sigue sin establecerse. Antes de publicar, verificar esa conexión concreta o limitar el caso a hechos que superen la prueba de relevancia; el monto de la OC no es beneficio personal demostrado.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/270
