# Cecilia García Huidobro Moroder — acciones de Entel y compras del Servicio Nacional del Patrimonio Cultural

- Categoría: compras/relaciones con el Estado; patrimonio e intereses
- Estado: descartada (2026-11-19)
- Pregunta decisiva: ¿la participación declarada en Entel de Cecilia García Huidobro Moroder, consejera del Consejo de Monumentos Nacionales, se conectó con una compra del Servicio Nacional del Patrimonio Cultural mediante una decisión o competencia propia que justifique seguimiento auditor?

## Hallazgos

1. **Oro, corte 2026-11-17T18:25:42+00:00.** La fila de `company` asociada a la declaración más reciente registra RUT societario 92.580.000, razón social declarada COMPAÑÍA DE TELECOMUNICACIONES SA, tipo ACCION, cantidad 212, valor CLP $5.000.000 (125,50 UF al 06-04-2026, según la serie UF del oro) y `is_controlling=false`. `declared_supply` enlaza la sociedad con el proveedor RUT 92.580.000 y agrega ventas del proveedor, no un beneficio de la persona; las métricas agregadas no se usan para atribuir gasto individual. Consulta reproducible: `consultas/cecilia-garcia-huidobro-entel-patrimonio-2026-1.sql`.
2. **InfoProbidad, fuente primaria.** La declaración del 06-04-2026 identifica a CECILIA GARCIA HUIDOBRO MORODER como consejera del Consejo de Monumentos Nacionales en el Servicio Nacional del Patrimonio Cultural; fecha de asunción declarada: 01-03-2022. En la sección de sociedades declara COMPAÑÍA DE TELECOMUNICACIONES SA, RUT 92.580.000-7, 212 acciones, valor corriente/libro CLP $5.000.000 (125,50 UF al 06-04-2026) y calidad de controladora «false». https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=e48530154674d4b4056edec9c1378d2f
3. **Mercado Público: semilla en el oro, primaria no verificada.** La consulta por RUT proveedor 92.580.000 y organismo comprador con “Patrimonio” devuelve la OC 1191-1-SE26: fecha 10-04-2026, estado Aceptada, licitación pública, CLP $3.488.718.466 (87.535,41 UF según el oro), rubro principal «Servicios de construcción y mantenimiento». Al abrir la ficha oficial, Mercado Público respondió 403 Forbidden; no se pudo corroborar proveedor, ítems, proceso ni objeto en la primaria. URL oficial intentada: http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1191-1-SE26
4. La fecha de esa orden es posterior en cuatro días a la declaración, pero esa proximidad no acredita intervención individual. La función declarada corresponde al Consejo de Monumentos Nacionales; no encontré documento accesible que la vincule a la decisión de compra del Servicio ni a su expediente.

## Explicación legítima más fuerte y límites

La explicación más sólida compatible con lo observado es que existe una participación accionaria no controladora y de valor declarado acotado en una sociedad con muchos accionistas, mientras el Servicio efectúa compras institucionales ordinarias. La fila de oro del proveedor y su rubro no sustituyen el expediente de Mercado Público. No se atribuye a la consejera el total comprado por el Servicio ni se afirma conflicto, intervención o beneficio personal.

## Decisión

**Descartada.** La primaria de InfoProbidad confirma identidad, cargo y una participación no controladora. La potencial compra institucional de alto monto proviene solo de la semilla del oro, y su ficha primaria devolvió 403; además, no hay evidencia de intervención o nexo entre la competencia del cargo y la compra. No pasa el umbral de relevancia funcional y primaria del método. Reabrir únicamente si se obtiene la ficha oficial o expediente equivalente accesible que confirme la orden y aporta evidencia concreta de intervención de la consejera, o si aparece otra compra funcionalmente conectada.

## Fuentes primarias

- InfoProbidad, declaración 06-04-2026: https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=e48530154674d4b4056edec9c1378d2f
- Mercado Público, OC 1191-1-SE26 (no accesible en esta corrida; 403): http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1191-1-SE26
