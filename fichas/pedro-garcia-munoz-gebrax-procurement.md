# Participación de Pedro Enrique García Muñoz en Gebrax y ventas al Estado — descarte editorial

- **ID estable:** `pedro-garcia-munoz-gebrax-procurement`
- **Categoría:** compras / relaciones con el Estado
- **Estado actual:** descartada como caso publicable con la evidencia revisada
- **Apertura y última actualización:** 2026-10-02
- **Corte del artefacto:** `meta.build_date = 2026-09-29T15:40:44+00:00`; sincronizado localmente 2026-10-01 23:49 UTC, sin cambios respecto de la última sincronización. Resultado de artefacto, no una consulta a API.
- **Identidad:** coincidencia completa de nombre entre InfoProbidad y `person.full_name`: PEDRO ENRIQUE GARCIA MUÑOZ. No atribuir a otros Pedro García Muñoz. InfoProbidad lo identifica como juez y presidente del Poder Judicial; asunción como presidente 01-01-2025.[1]

## Resultado breve

La declaración de 30-03-2026 informa que Pedro Enrique García Muñoz posee 30% de COMERCIALIZADORA E IMPORTADORA GEBRAX LTDA, adquirida el 22-06-2011, y marca «Tiene Calidad de Controlador: false».[1] El oro enlaza por RUT societario a ese proveedor y mide 330 órdenes registradas del Estado por CLP 2.058.376.369 (53.559,74 UF acumuladas en las fechas de las órdenes), dentro de las ventanas acreditadas por sus declaraciones, desde 28-01-2020 hasta 28-09-2026; la consulta base y su verificación están enlazadas debajo. Solo una de esas órdenes figura para el mismo organismo declarado, el Poder Judicial: una compra ágil de mascarillas al Tribunal de Juicio Oral en lo Penal de Colina, enviada el 02-12-2020 por CLP 22.610 (0,78 UF en el oro). La orden dice que el procedimiento requiere presentar 3 cotizaciones.[2]

La cifra agregada de ventas no equivale a ingresos personales ni prueba que el declarante recibiera ese monto. La coincidencia es de una orden pequeña, previa a su asunción como presidente, mediante una compra ágil cuya ficha indica el requisito de 3 cotizaciones.[2] La participación y la empresa proveedora están documentadas, pero lo observado no basta para sostener un caso periodístico publicable ni para inferir influencia, irregularidad o beneficio personal.

## 1. Evidencia medida en el oro

La consulta reproducible [`consultas/pedro-garcia-munoz-declaraciones.sql`](../consultas/pedro-garcia-munoz-declaraciones.sql), ejecutada en solo lectura con `ec-gold-sql` el 2026-10-02, devuelve siete declaraciones del mismo declarante que registran la misma empresa y el mismo RUT societario. Los datos más recientes consignan 30%, adquisición 22-06-2011 y CLP 3.000.000 como valor corriente/libro; las declaraciones anteriores anotan 25% o 30%. La página original de InfoProbidad para la declaración ID 5113707 confirma el nombre completo, su cargo de presidente del Poder Judicial y esos campos societarios.[1]

[`consultas/pedro-garcia-munoz-sociedad.sql`](../consultas/pedro-garcia-munoz-sociedad.sql) mide la fila agregada de `declared_supply`: 330 órdenes durante ventanas de declaración; monto CLP 2.058.376.369, suma UF 53.559,74; una orden cuyo `same_institution` es `true`; y 177 compras ágiles, 241 con `is_direct_award`. Estos últimos conteos son marcas del artefacto, no una conclusión jurídica. La regla de `article_4_stake` incorpora tipo `DERECHO`, control declarado o una sola persona declarante de la sociedad; aquí `OTRO`, `is_controlling = false`, `n_declarants = 1`, por lo que la bandera resulta verdadera por el último criterio. No equivale a una conclusión de que se cumplan los supuestos legales.[`sql/090_declared_supply.sql:120-135`](../../estadoclaro/sql/090_declared_supply.sql)

La agregación directa de órdenes deduplicadas en [`consultas/pedro-garcia-munoz-ordenes-verificacion.sql`](../consultas/pedro-garcia-munoz-ordenes-verificacion.sql) y [`consultas/pedro-garcia-munoz-compradores-resumen.sql`](../consultas/pedro-garcia-munoz-compradores-resumen.sql) vuelve a contar los pares persona/orden primarios, dentro de ventana y sin exclusiones: reproduce 330 órdenes, CLP 2.058.376.369, 53.559,74 UF, 41 claves de comprador y una orden del mismo organismo por CLP 22.610. El conteo se distribuye entre compradores de varios servicios de salud, universidades y otros organismos, según [`consultas/pedro-garcia-munoz-compradores.sql`](../consultas/pedro-garcia-munoz-compradores.sql). Esta verificación usa el mismo artefacto y no constituye una fuente independiente.

[`consultas/pedro-garcia-munoz-orden-propia-institucion.sql`](../consultas/pedro-garcia-munoz-orden-propia-institucion.sql) identifica la orden 766180-27-AG20: 02-12-2020, estado Aceptada, Tribunal de Juicio Oral en lo Penal de Colina, mascarillas, CLP 22.610 (0,78 UF), compra ágil y `same_institution = true`.[2] El documento fuente indica que la compra ágil debe presentar 3 cotizaciones.[2]

**Cautela de enlace:** InfoProbidad denomina la sociedad “COMERCIALIZADORA E IMPORTADORA GEBRAX LTDA”; Mercado Público, para el mismo RUT con dígito verificador 76.078.271-8, usa “IMPORTADORA Y COMERCIAL GEBRAX Y CIA. LIMITADA” y nombre de proveedor “Gebrax”. El enlace del oro es por identificador y el DV coincide, pero la similitud textual reportada es 0,52. Se conserva esta diferencia como limitación y no se resuelve por parecido del nombre.[1][2]

## 2. Explicación legítima más plausible y contraste

La declaración original dice que la participación fue adquirida en 2011, antes de la asunción declarada como juez (02-03-2012, según el oro), informa 30% y niega calidad de controlador.[1] Es compatible con una inversión minoritaria preexistente, no con una empresa declarada como controlada por él; la documentación vista no establece cuánto operó la empresa por cuenta propia, quién gestionó la compra ni si el declarante recibió algún pago por las ventas.

La única orden del mismo Poder Judicial corresponde a mascarillas para el tribunal de Colina durante 2020; Mercado Público registra compra ágil con requisito declarado de 3 cotizaciones y un total de CLP 22.610.[2] Esto es compatible con una compra ordinaria de bajo monto, pero no permite afirmar cuál cotización fue elegida ni descartar toda influencia. La compra precede en más de cuatro años a la asunción a la presidencia del Poder Judicial informada en 2026.[1][2]

Las restantes órdenes están agregadas a proveedores públicos diversos; no se afirma que todas hayan sido ventas durante el período de su cargo de presidente ni que los CLP agregados sean su beneficio. La documentación consultada no revela el detalle completo de la relación económica, dividendos, intervención del declarante en decisiones de compra, ni si se aplicó alguna medida de abstención. No se encontró evidencia pública primaria sobre esos puntos en esta revisión.

## 3. Duplicados, desafío adversarial y decisión

- La búsqueda literal por nombre completo y “Gebrax” en los 61 casos y fichas de descarte del repo público no encontró una coincidencia. Tampoco hay una ficha con este identificador en el índice privado. Es una búsqueda acotada, no prueba universal de ausencia.
- Se contrastó nombre completo en la declaración original; la sociedad tiene el mismo RUT y dígito verificador en InfoProbidad y Mercado Público, aunque sus nombres publicados no coinciden literalmente.[1][2]
- Se volvió a calcular el total a partir de órdenes deduplicadas, excluyendo explícitamente filas no primarias, fuera de ventana y con motivo de exclusión. El total coincide con la agregación de `declared_supply`; no se duplicaron órdenes.
- El dato que mejor refuta una lectura de posible relación con su propia institución es la escala y el mecanismo de esa única coincidencia: CLP 22.610, una orden, compra ágil, mascarillas y requisito de 3 cotizaciones.[2] No se generaliza desde la venta al conjunto del Poder Judicial ni se atribuye decisión al declarante.
- La compañía aparece como “Gebrax” en Mercado Público y con denominación legal distinta de la declaración; el RUT exacto y su dígito de control sostienen el cruce estructural, pero la similitud nominal baja limita la certeza narrativa adicional.[1][2]

**Decisión:** descartar como caso publicable con la evidencia actual. El cruce estructural (participación declarada y ventas públicas) existe y se reproduce, pero el nexo con la institución propia descansa en una sola compra de bajo monto, varios años antes de la presidencia; la explicación ordinaria está respaldada por el tipo, el producto y el requisito de cotizaciones que aparece en la orden. No se afirma que se haya probado la ausencia de conflicto, intervención o beneficio personal.

**Reabrir solo si** aparece evidencia primaria nueva que cambie materialmente la escala, la recurrencia, la intervención del declarante o las circunstancias de la compra al Poder Judicial, o que aclare la diferencia de denominación societaria. No repetir el mismo cruce de datos mientras no cambie esa base.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5113707
    > "PEDRO ENRIQUE GARCIA MUÑOZ"
    > "Nombre o Razón Social
COMERCIALIZADORA E IMPORTADORA GEBRAX LTDA
R.U.T.
76.078.271-8
Cantidad / Porcentaje
30
Fecha de adquisición
22-06-2011
Tiene Calidad de Controlador
false"
    > "Organismo: Poder Judicial

Asume el cargo: 01-01-2025"
    > "30-03-2026 Actualización Periódica (Marzo)"
[2] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=766180-27-AG20
    > "Fecha de Envío | 02-12-2020"
    > "TOTAL OC | $ 22.610"
    > "7 .- Datos cotizaciones"
    > "Orden de Compra Adquisición igual o inferior a 30 UTM (Debe presentar 3 cotizaciones)"
