# Margarita Loreto Navarrete Zurita y contrato de defensa penal de Rancagua

- **ID:** `margarita-navarrete-dpp-defensa-penal-2024`
- **Estado:** descartada
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

## Evaluación inicial (supersedida por revisión final)

La evaluación inicial propuso `borrador listo` por la coincidencia de fecha, ciudad y servicio. La revisión final que sigue descartó esa propuesta: las fuentes abiertas no acreditan el nexo jurisdiccional penal requerido y el monto contratado es de la sociedad, no un beneficio personal demostrado. El borrador anterior queda como antecedente de la devolución, no como recomendación vigente.

## Fuentes primarias

- [1] InfoProbidad, declaración 5092721, 26-12-2024: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5092721
- [2] Mercado Público, OC 1739-37-SE24: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1739-37-SE24
- [3] BCN, Ley 19.718: https://www.bcn.cl/leychile/navegar?idNorma=182755
- [4] InfoProbidad, declaración 5098572, 29-03-2025: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5098572
- [5] Consulta de semillas y órdenes: `consultas/margarita-navarrete-dpp-2024-1.sql` (solo `ec-gold-sql`).
- [6] Conversión UF: `consultas/margarita-navarrete-dpp-defensa-penal-2024-2.sql` (solo `ec-gold-sql`).

## Entrega editorial

Borrador: `casos/negocios_estado/margarita-navarrete-dpp-defensa-penal-2024.md`. El editor debe cotejar alcance de la participación, bases/evaluación de la licitación y posible coincidencia con causas; el borrador no afirma que esos documentos ya se revisaron.

## Revisión final y decisión (2026-11-03)

Reabrí las fuentes primarias. InfoProbidad 5092721 (26-12-2024) identifica a Margarita Loreto Navarrete Zurita, consigna cargo «Juez», Poder Judicial, Rancagua, y un «DERECHO» en RUT 76.318.827-2, adquirido el 20-12-2022, valor declarado CLP $400.000 (10,42 UF al 26-12-2024), controlador «false»; el campo de cantidad/porcentaje dice «1», sin unidad que permita interpretarlo como porcentaje.[1] Mercado Público confirma que la OC 1739-37-SE24 fue enviada el 27-12-2024 desde licitación pública 1739-3-LR24, en recepción conforme, para defensa penal Zona 1 Rancagua: proveedor con el mismo RUT, CLP $1.377.600.000 (35.868,66 UF al 27-12-2024).[2]

La ficha oficial del Poder Judicial para el nombre completo registra que obtuvo el cargo de secretaria titular del Segundo Juzgado Civil de Rancagua, tras desempeñarse allí como secretaria interina; la nota se actualizó el 28-01-2021.[7] Es un antecedente oficial de trayectoria en tribunal civil, no acredita por sí solo su destino o función precisa el 27-12-2024. La declaración de marzo de 2025 consigna «Secretario» y en actividades de los últimos 12 meses «JUEZ», pero no especifica tribunal ni jurisdicción.[4] No hallé en las fuentes oficiales consultadas una asignación judicial penal concreta ni una causa atendida por la proveedora que pueda vincularse con la declarante.

**Decisión: `descartada`.** La hipótesis de conexión funcional penal no se confirma: Rancagua coincide como comuna/zona, pero el antecedente oficial disponible sitúa su carrera en un juzgado civil, no acredita ejercicio en jurisdicción penal al tiempo de la OC, y no se identificaron causas de la sociedad ante ella. Además, la contratación provino de licitación pública, la participación se declaró no controladora y no hay evidencia de intervención individual ni de beneficio personal. El alto monto corresponde a la OC de la sociedad, no a ingresos de la declarante; por sí solo no subsana la falta de nexo funcional. La pista no pasa la pregunta editorial de relevancia ligada a la función y no procede mantener un borrador que sugiere esa comprobación como caso.

Reabrir solo si aparece evidencia primaria de que Navarrete ejercía jurisdicción penal sobre la Zona 1 en la fecha relevante y de que conoció o debía conocer causas atendidas por la sociedad, o evidencia documental de intervención/beneficio personal en el procedimiento. Si no, la coincidencia geográfica, declarativa y contractual no basta.

## Fuentes primarias

- [1] InfoProbidad, declaración 5092721, 26-12-2024: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5092721
- [2] Mercado Público, OC 1739-37-SE24: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1739-37-SE24
- [3] BCN, Ley 19.718: https://www.bcn.cl/leychile/navegar?idNorma=182755
- [4] InfoProbidad, declaración 5098572, 29-03-2025: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5098572
- [5] Consulta de semilla y órdenes: `consultas/margarita-navarrete-dpp-defensa-penal-2024-1.sql` (solo `ec-gold-sql`).
- [6] Conversión UF: `consultas/margarita-navarrete-dpp-defensa-penal-2024-2.sql` (solo `ec-gold-sql`).
- [7] Poder Judicial, ficha oficial de NAVARRETE ZURITA, MARGARITA LORETO; nota sobre incorporación al escalafón y desempeño como Secretaria del Segundo Juzgado Civil de Rancagua, actualizada 28-01-2021: https://www.pjud.cl/post/navarrete-zurita,-margarita-loreto
