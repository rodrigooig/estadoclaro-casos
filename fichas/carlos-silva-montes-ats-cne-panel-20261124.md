# Carlos Silva Montes — ATS Energía, estudios de transmisión y Panel de Expertos

## Identificación y origen

- **ID:** `carlos-silva-montes-ats-cne-panel-20261124`
- **Categoría:** compras/relaciones con el Estado; patrimonio e intereses.
- **Estado:** borrador listo; PR al editor.
- **Pista:** cribado propio del oro: participación declarada en ATS Energía S.A. (RUT 76.051.875-1), contratación de la misma sociedad por la CNE, período concurrente con su calidad declarada de panelista. El apellido se cotejó con `INDICE.md` antes de seleccionar; no aparece otra ficha individual ni caso publicado de Silva.
- **Identidad:** Diario Oficial CVE 1625162 identifica a Carlos Silva Montes y lo nombra panelista por seis años desde 17-07-2019. InfoProbidad 404284 y 473778 registran la misma persona y el mismo RUT societario de ATS; las órdenes de Mercado Público publican ese RUT exacto. No se atribuye por similitud de nombres.
- **Corte del oro:** `meta.build_date = 2026-11-22T04:10:18+00:00`. Todas las consultas del oro se ejecutaron con `ec-gold-sql` en solo lectura.

## Pregunta decisiva

¿Debe revisarse si, mientras Carlos Silva Montes integraba el Panel de Expertos y declaraba una participación minoritaria en ATS Energía S.A., su relación profesional/accionaria con esa consultora fue evaluada en conexión con los estudios de transmisión que la CNE contrató a ATS y con eventuales discrepancias de valorización sometidas al Panel?

## Hechos comprobados

1. **Cargo y periodo.** El Diario Oficial registra el nombramiento de Silva al Panel de Expertos desde el 17-07-2019, por seis años. El mismo acto informa que previamente se solicitaron declaraciones juradas sobre incompatibilidades y que los seleccionados las remitieron. Fuente: Resolución Exenta 17/2019, CVE 1625162.
2. **Interés declarado.** InfoProbidad 404284 (01-10-2019) y 473778 (31-03-2020) consignan para Silva diez acciones de ATS ENERGIA S.A., RUT 76.051.875-1, adquiridas 26-03-2009, giro de servicios de ingeniería; ambas fichas indican que no es controlador. El valor corriente/libro consignado en ambas es CLP $0 (0 UF); eso es el valor escrito en la declaración, no una tasación o saldo verificado. Las fechas son fotos y no prueban la tenencia en toda fecha posterior.
3. **Relación profesional declarada en otra fuente.** El Portal del Investigador de ANID presenta a Carlos Silva Montes como «Consultor Part Time» de ATS Energia desde 2009 «At present» y «Panelista Part Time» del Panel LGSE desde 2019 «At present». Es lo que dice ese perfil público; no se obtuvo contrato, honorarios ni una ficha laboral oficial para 2019–2020.
4. **Primera compra CNE–ATS.** Mercado Público registra OC 610-134-SE19, enviada el 29-10-2019 a ATS Energía S.A. por CLP $19.572.824, 697,40 UF al envío según el oro; estado «Enviada a proveedor». La orden deriva de la licitación abierta 610-12-LE19, adjudicada el 05-09-2019. El objeto era determinar costos de proyectos de transmisión y distribución para un modelo de recargos aplicable a estudios tarifarios.
5. **Segunda compra CNE–ATS.** La licitación abierta 610-6-LP20 fue publicada el 20-05-2020 y adjudicada el 23-06-2020. La ficha describe un estudio de apoyo a la CNE para revisar modelos de COMA en el proceso de valorización de instalaciones de transmisión 2020–2023. La OC 610-58-SE20 a ATS fue enviada el 23-07-2020 por CLP $70.000.000, equivalentes a 2.441,16 UF al envío en el oro; figura «Recepción Conforme».
6. **Área técnica de ATS.** En un informe técnico de 2018, la CNE afirma que consideró resultados y conclusiones de un estudio de ATS Energía de 2017 sobre vida útil de elementos de transmisión. Ese documento establece el ámbito técnico de la firma, no la intervención personal de Silva en el estudio o los contratos posteriores.
7. **Marco del Panel.** El Decreto 44/2017 del Ministerio de Energía dispone que el Panel emite dictámenes vinculantes sobre discrepancias eléctricas y energéticas; distingue incompatibilidades generales (art. 8) e inhabilidades/abstención en discrepancias concretas (art. 10). La ficha no emite una calificación legal de los hechos.
8. **Servel.** La consulta por el `person_id` de Silva a la tabla `campaign` del oro no devolvió filas al corte; no demuestra que nunca haya sido candidato ni que no existan antecedentes fuera de la cobertura modelada.

## Explicación legítima más fuerte y límites

Las dos contrataciones fueron convocatorias abiertas y quedaron adjudicadas; la segunda OC aparece recibida conforme. ATS es una consultora de ingeniería; una licitación abierta a una firma con experiencia especializada puede ser un procedimiento ordinario. La tenencia consignada es de diez acciones, no controladora y con valor declarado CLP $0; su peso económico no puede inferirse porque el formulario no identifica porcentaje de propiedad ni valor de mercado. La CNE y el Panel son instituciones diferentes.

La cuestión no es afirmar una incompatibilidad automática por el hecho de contratar a un proveedor del Estado. La conexión material que motiva la revisión es que la CNE compró a ATS apoyo para modelos de valorización de transmisión durante el período en que Silva fue panelista y el perfil de ANID registra una relación profesional con ATS. No se encontró evidencia de que Silva participara en la oferta, adjudicación, gestión o pago, ni de que el Panel resolviera una discrepancia que involucrara a ATS o esos contratos. Tampoco se revisaron los expedientes/anexos completos de las licitaciones ni los registros de declaraciones de interés o abstenciones.

## Decisión editorial

**Borrador listo para el editor.** El hecho central está respaldado por declaraciones InfoProbidad, nombramiento oficial, órdenes/lici­taciones primarias y un perfil público de ANID que reporta relación profesional concurrente. La relevancia no descansa solo en el volumen: el objeto del contrato de 2020 trata modelos COMA usados en valorización de transmisión, materia conectada con el ámbito de competencia del Panel. El borrador plantea una pregunta de control acotada, mantiene la explicación legítima de contratación abierta y participación no controladora, no atribuye intervención ni concluye infracción, y deja delimitados los documentos que faltan. La categoría `negocios_estado` existe en main; la ficha no duplica un caso del índice local.

Qué debe mirar el editor: que las fuentes y montos se cotejen, que el título siga siendo factual, que el texto no convierta la coincidencia en acusación y que el caso no duplique una ficha pública no encontrada en el índice local.

## Consultas reproducibles

- [`consultas/carlos-silva-montes-ats-cne-panel-20261124-1.sql`](../consultas/carlos-silva-montes-ats-cne-panel-20261124-1.sql): RUT societario exacto entre declaración y dos órdenes CNE; asociación temporal con la declaración más reciente anterior a cada OC. Devuelve dos órdenes únicas.
- [`consultas/carlos-silva-montes-ats-cne-panel-20261124-2.sql`](../consultas/carlos-silva-montes-ats-cne-panel-20261124-2.sql): consulta de cobertura Servel por `person_id`; devuelve cero filas.
- [`tmp/runs/20261124T090132Z/triage.md`](../tmp/runs/20261124T090132Z/triage.md): candidatos descartados de vistazo y razón de selección.

## Fuentes primarias

- InfoProbidad, declaración 404284 (01-10-2019): https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=9eb182a2d7a51ba6f14f5cce7b36a76e
- InfoProbidad, declaración 473778 (31-03-2020): https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=9ef8fecbfacc3657dbf4c4a61e9e19fb
- Diario Oficial, Resolución Exenta 17/2019, CVE 1625162: https://www.diariooficial.interior.gob.cl/publicaciones/2019/07/23/42410/01/1625162.pdf
- Mercado Público, OC 610-134-SE19: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=610-134-SE19
- Mercado Público, licitación 610-12-LE19: https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=610-12-LE19
- Mercado Público, OC 610-58-SE20: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=610-58-SE20
- Mercado Público, licitación 610-6-LP20: https://www.mercadopublico.cl/Procurement/Modules/RFB/DetailsAcquisition.aspx?idlicitacion=610-6-LP20
- BCN LeyChile, Decreto 44/2017, Reglamento del Panel: https://www.bcn.cl/leychile/navegar?idNorma=1113260
- CNE, Informe Técnico Definitivo de vidas útiles de transmisión (2018): https://cne.cl/archivos_bajar/RES_ex_CNE_412_2018.pdf
- Portal del Investigador ANID, perfil de Carlos Silva Montes: https://investigadores.anid.cl/en/public_search/researcher?id=21463

Resumen de cierre: [`tmp/runs/20261124T090132Z/carlos-silva-montes-ats-cne-panel-20261124/resumen.md`](../tmp/runs/20261124T090132Z/carlos-silva-montes-ats-cne-panel-20261124/resumen.md).
