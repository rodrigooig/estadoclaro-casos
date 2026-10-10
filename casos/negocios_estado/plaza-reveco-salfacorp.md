# Rafael Plaza Reveco declaró una acción de «SALFACORP»; cuatro órdenes del proveedor suman CLP 34.277 millones

## Síntesis

La actualización de la declaración de Rafael Mauricio Plaza Reveco del 24 de septiembre de 2026 registra 1.911 acciones denominadas «SALFACORP», asociadas al RUT societario 93.659.000-4, valoradas en CLP 2.425.059 y adquiridas —según lo declarado— el 28 de octubre de 2025.[1] La declaración identifica su función como abogado integrante del Poder Judicial.[1]

Al contar las órdenes con ese mismo RUT de proveedor, desde la fecha de adquisición declarada hasta la fecha de esa actualización, el registro contiene cuatro códigos OC distintos entre el 16 de diciembre de 2025 y el 1 de julio de 2026.[1][2][3] La ficha de la declaración indica que Plaza asumió el cargo el 1 de marzo de 2026; por tanto, la OC 638-216-SE25, por CLP 25.938.092.545, fue enviada antes de esa fecha, mientras que las otras tres órdenes son posteriores.[1][2][3][4][5] El total de cuatro órdenes cubre esa ventana documental y no debe leerse como compras efectuadas durante todo el período del cargo. Los otros dos códigos y sus fechas figuran en las fichas 829-23-SE26 y 638-93-SE26.[4][5] La suma de esos cuatro registros es CLP 34.277.418.870 y UF 858.290,27 según el oro; cada monto individual aparece en su ficha primaria.[2][3][4] La ficha de la cuarta orden registra CLP 2.605.819.687.[5] La suma es de montos consignados en órdenes, no prueba de pago, ingreso personal, intervención del declarante ni titularidad real de las acciones más allá de su declaración.[1][2][3] La cifra corrige las tres órdenes y CLP 8.339.326.325 (UF 204.450,48) que indica el caso actualmente publicado; no es un caso nuevo.

## Cronología documental

- **28-10-2025:** fecha de adquisición que consigna la declaración para la línea «SALFACORP».[1]
- **16-12-2025 — OC 638-216-SE25:** SERVIU Región de Magallanes; CLP 25.938.092.545; estado «Enviada a proveedor». La ficha indica origen en la licitación pública 638-18-O125.[2]
- **30-03-2026 — OC 5221-8-SE26:** Servicio de Salud Magallanes; CLP 99.781.535; estado «Aceptada».[3]
- **19-06-2026 — OC 829-23-SE26:** Dirección General de Obras Públicas; CLP 5.633.725.103; estado «Enviada a proveedor».[4]
- **01-07-2026 — OC 638-93-SE26:** SERVIU Región de Magallanes; CLP 2.605.819.687; estado «Aceptada».[5]
- **24-09-2026:** fecha de la actualización de la declaración utilizada para definir el corte de la ventana.[1]

Las fichas de las órdenes 638-216-SE25 y 5221-8-SE26 identifican a CONSTRUCTORA SALFA S.A. con RUT 93.659.000-4, el mismo RUT que aparece en la línea de declaración.[1][2][3] Las fichas de 829-23-SE26 y 638-93-SE26 muestran el mismo RUT de proveedor.[4][5] Las fichas de las órdenes 638-216-SE25, 5221-8-SE26 y 829-23-SE26 consignan compradores distintos del Poder Judicial.[2][3][4] La ficha de 638-93-SE26 también identifica como comprador a SERVIU Magallanes.[5] Ninguna de las cuatro fichas identifica a Plaza Reveco como interviniente.[2][3][4] La ficha restante documenta la orden y su comprador, pero no lo nombra como interviniente.[5]

## Medición reproducible y corrección

Se consultó `gold.duckdb` en solo lectura con `ec-gold-sql`, corte `meta.build_date=2026-10-08T05:08:05Z`. La consulta por persona, declaración del 24-09-2026 y RUT societario 93659000 obtiene cuatro `order_code` distintos, entre 2025-12-16 y 2026-07-01.[1][2][3] La consulta independiente deduplica por `order_code` antes de sumar y devuelve cuatro órdenes, CLP 34.277.418.870 y UF 858.290,27; las fichas primarias documentan los montos que integran esa suma.[2][3][4] Consultas ejecutables y guardadas para este corte: `consultas/plaza-reveco-salfacorp-actualizacion-20261008T120620Z-1.sql` y `consultas/plaza-reveco-salfacorp-actualizacion-20261008T120620Z-2.sql`. La medición usa CLP nominales de las órdenes; UF es la conversión registrada por el artefacto.

**Reemplazo completo propuesto del archivo existente:** usar este borrador en lugar de `casos/negocios_estado/plaza-reveco-salfacorp.md`, no como caso adicional. El titular actual que dice «facturaba al Estado por más de UF 204 mil» se sustituye por el titular de este documento, que describe una acción declarada y órdenes de compra por los montos consignados.[2][3][4] El primer párrafo que toma como referencia la declaración del 10-03-2026 se reemplaza por la síntesis basada en la actualización del 24-09-2026.[1] En el cuerpo, sustituir el conteo de tres órdenes y CLP 8.339.326.325 (UF 204.450,48) por las cuatro órdenes de la cronología y CLP 34.277.418.870 (UF 858.290,27), incorporando la OC de 16-12-2025.[2][3][4] Conservar para las órdenes 829-23-SE26 y 638-93-SE26 los estados «Enviada a proveedor» y «Aceptada»; no describirlos como pagos realizados.[4][5] El texto reemplazante limita expresamente la coincidencia al RUT societario declarado y deja sin resolver el título subyacente, la propiedad económica y una eventual intervención individual.

## Explicación y límites

La orden de diciembre aparece como derivada de licitación pública para una obra MINVU; es una explicación de contexto compatible con una compra de construcción, pero no demuestra por sí sola el proceso completo, una adjudicación improcedente o la participación de Plaza.[2] Las otras fichas también marcan su origen en licitación pública cuando lo informan.[3][4][5] La naturaleza competitiva de la compra no elimina la necesidad de describir con precisión la coincidencia documental, pero tampoco es evidencia de intervención o beneficio personal.

El dato de la participación es autodeclarado. Aunque el nombre de la línea sea «SALFACORP», la coincidencia comprobada para el cruce es el RUT societario 93.659.000-4: las fuentes aquí reabiertas no resuelven qué título exacto quiso describir el declarante, ni acreditan el porcentaje de propiedad económica, control, beneficio personal o intervención en órdenes. No se formula una conclusión jurídica ni se afirma un conflicto de interés.

## Preguntas acotadas para un investigador o auditor

1. ¿Qué título o participación identifica el declarante con el nombre «SALFACORP» y el RUT 93.659.000-4? La declaración pública registra la línea, pero estas fuentes no resuelven la identidad del título ni la participación subyacente.[1]
2. ¿Qué antecedentes del expediente de la licitación 638-18-O125 documentan objeto, adjudicación y ejecución de la OC 638-216-SE25? La ficha de la orden acredita código, monto, proveedor, estado y referencia al proceso, no la evaluación o recepción final.[2]
3. ¿Existe algún documento público distinto de las fichas de OC que acredite una actuación de Plaza Reveco en alguno de esos procesos? Las fichas consultadas no lo identifican como interviniente.[2][3][4][5]

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5124087
    > "Asume el cargo: 01-03-2026"
[2] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=638-216-SE25
    > "TOTAL OC | $ 25.938.092.545"
[3] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=5221-8-SE26
    > "TOTAL OC | $ 99.781.535"
[4] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=829-23-SE26
    > "TOTAL OC | $ 5.633.725.103"
[5] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=638-93-SE26
    > "TOTAL OC | $ 2.605.819.687"
