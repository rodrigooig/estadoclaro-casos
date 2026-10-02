# Dino Lotito Flores y Ferretería Lotito — fecha de la tercera orden y ventana temporal

- **ID estable:** `dino-lotito-tercera-orden-fecha`
- **Categoría:** compras / relaciones con el Estado
- **Estado:** descartada para una pista de compra municipal durante su alcaldía; no es un caso nuevo.
- **Apertura / última actualización:** 2026-10-02
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; sincronizado desde R2 a las 16:00:45 UTC. Consultas de solo lectura con `ec-gold-sql`, 2026-10-02.
- **Deduplicación:** el caso ya publicado `casos/autocontratacion/lotito-flores-municipalidad-santo-domingo.md` plantea como pendiente la fecha de la tercera OC de Ferretería Lotito. Esta ficha actualiza ese punto; no abre ni propone otro caso.

## Resultado

La declaración de 26-03-2024 identifica a DINO LOTITO FLORES, entonces alcalde de Santo Domingo, y registra un derecho sobre FERRETERIA Y MATERIALES DE CONSTRUCCION LOTITO LIMITADA; el formulario muestra «Cantidad / Porcentaje: 25», giro ferretería y fecha de adquisición 18-05-2012.[1]

La consulta de detalle del oro devuelve tres órdenes primarias para el proveedor societario, y la consulta independiente devuelve los mismos tres códigos, una vez cada uno.[2][3][4]

Las dos órdenes de la Municipalidad de Santo Domingo son del 11 y 24-03-2025, por $3.450.100 y $710.944 respectivamente.[2][3]

La tercera orden es 1035206-49-AG25, enviada el 09-04-2025 por el Centro de Formación Técnica Estatal de la Región de Valparaíso; no corresponde a una compra de Santo Domingo.[4]

La cuenta pública oficial de Santo Domingo para la gestión 2024, publicada en 2025, presenta a Fernando Rodríguez Larraín como alcalde y dice que llevaba cuatro meses «de regreso en el cargo».[5]
Esto sitúa las dos compras municipales después del retorno de Rodríguez al cargo, no durante la alcaldía atribuida a Lotito en la declaración de 2024.[1][2][3]

**Decisión editorial:** descartar esta pista como evidencia de compras municipales durante el período de Lotito.[1][2][3]
La pantalla inicial de EstadoClaro podía destacar `same_institution = true`, pero la fecha de las órdenes y la fuente municipal posterior impiden tratar la igualdad de organismo como prueba de que él ejercía el cargo al comprarse.[2][3][5]
No se concluye quién gestionó las compras ni por qué se eligió a este proveedor.[2][3]

## Comprobaciones

1. **Identidad y titularidad declarada.** Nombre completo, cargo y empresa constan en la declaración primaria.[1]
El identificador societario coincide con el identificador de proveedor en las fichas municipales.[2][3]
2. **Rerun medido.** `consultas/dino-lotito-tercera-orden-fecha-1.sql` une persona, declaración, empresa y órdenes, filtrando a la fila primaria de cada orden. Resultado: tres filas y tres códigos únicos; dos son de Santo Domingo y una del CFT estatal.[2][3][4]
3. **Desafío independiente.** `consultas/dino-lotito-tercera-orden-fecha-2.sql` consulta las órdenes primarias directamente por nombre completo y RUT de proveedor, sin unir declaraciones ni sociedad. Resultado: los mismos tres códigos, fechas, organismos y estados.[2][3][4]
4. **Fuente primaria de las órdenes.** Las dos fichas municipales muestran fechas, proveedor, identificador y condición de Compra Ágil «igual o inferior a 30 UTM (Debe presentar 3 cotizaciones)».[2][3]
Describen materiales para mantención de escuela y reparación de oficina.[2][3]
La ficha del CFT confirma la tercera fecha y comprador.[4]
5. **Explicación legítima más plausible.** Las fichas describen materiales para mantención de la Escuela El Convento y reparación de la oficina de Recursos Humanos; la cuenta pública sitúa las compras después del cambio de administración.[2][3][5]
La modalidad señala tres cotizaciones, pero no se revisaron las cotizaciones ni quién las tramitó; el rótulo no prueba que existieran tres ofertas ni explica la selección concreta.[2][3]

## Límites y reapertura

- La declaración es una fotografía del 26-03-2024 y no acredita por sí sola que la participación societaria continuara igual en 2025.[1]
- `same_institution = true` en las dos OCs identifica el organismo, no demuestra que Lotito estuviera en el cargo o interviniera en las compras en marzo de 2025.[2][3]
- El resultado cubre el historial de órdenes disponible en el artefacto, con ventana de datos desde 2020; no permite descartar compras anteriores a esa cobertura.[2][3][4]
- La ficha pública previa anota dos órdenes por $4.161.044 en el resumen de la declaración de 2024, aunque las dos OCs primarias localizadas tienen fechas de 2025.[1][2][3]
Esta ficha no resuelve si esa sección se recalcula dinámicamente ni de qué fecha son sus datos; no debe leerse como prueba de una compra anterior.[1][2][3]
- Reabrir solo si aparece una orden primaria de la sociedad a Santo Domingo dentro del período en que Lotito fue alcalde, o evidencia verificable que explique la discrepancia temporal del campo «negocios con el Estado».[1][2][3]
Para revisar cotizaciones y responsables de las OCs 3244-1772-AG25 y 3244-1793-AG25 haría falta el expediente/anexos; no se solicitó ni se contactó a terceros en esta corrida.[2][3]

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1172804
    > "DINO LOTITO FLORES"
    > "FERRETERIA Y MATERIALES DE CONSTRUCCION LOTITO LIMITADA"
[2] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3244-1772-AG25
    > "Fecha de Envío | 11-03-2025"
    > "TOTAL OC | $ 3.450.100"
[3] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3244-1793-AG25
    > "Fecha de Envío | 24-03-2025"
    > "TOTAL OC | $ 710.944"
[4] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1035206-49-AG25
    > "Fecha de Envío | 09-04-2025"
    > "CENTRO DE FORMACION TECNICA ESTATAL DE LA REGION DE VALPARAISO"
[5] https://santodomingo.cl/wp-content/uploads/2025/04/documento-cuenta-publica-2024-low.pdf
    > "Llevo cuatro meses de regreso en el cargo"
