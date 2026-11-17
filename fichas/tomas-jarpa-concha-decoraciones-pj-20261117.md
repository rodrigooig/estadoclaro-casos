# Tomás Jarpa Concha — compras de cortinas a sociedad declarada

- ID: `tomas-jarpa-concha-decoraciones-pj-20261117`
- Categoría: compras/relaciones con el Estado; patrimonio e intereses.
- Estado: descartada.

## Pregunta decisiva
¿Las órdenes del Poder Judicial a JULIETA JARPA CONCHA DECORACIONES LIMITADA constituyen un patrón material o aportan una relación funcional concreta con Tomás Jarpa Concha que justifique una pieza editorial?

## Hechos comprobados

1. InfoProbidad publica la declaración de Tomás Jarpa Concha, cargo Conservador y Archivero del Poder Judicial, asunción 04-08-2014. En la declaración del 30-03-2025 consta que declaró un DERECHO de 20 (20%) en JULIETA JARPA CONCHA DECORACIONES LIMITADA, RUT 76.138.167-9, giro COMERCIO, adquisición 22-03-2011; la ficha declara expresamente «Tiene Calidad de Controlador: false». Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5098760 (declaración de 30-03-2025; página lista declaraciones periódicas desde 2017).
2. Mercado Público identifica al proveedor con esa misma razón social y RUT, y registra tres órdenes únicas en la ventana atribuida por el oro: (a) 721-472-MC19, 10-12-2019, recepción conforme, CAPREDENA, provisión e instalación de cortinas roller, CLP $316.278 (11,18 UF); (b) 1700-307-SE19, 24-12-2019, aceptada, Corporación Administrativa del Poder Judicial – Chillán, suministro e instalación de persiana para el acceso del Primer Juzgado Civil de Chillán, CLP $882.266 (31,17 UF); (c) 1082957-249-AG20, 31-03-2020, aceptada, Dirección General de Promoción de Exportaciones, cortinas roller, CLP $778.855 (27,24 UF). Primarias: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=721-472-MC19 ; https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1700-307-SE19 ; https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1082957-249-AG20 .
3. Oro (corte `meta.build_date` 2026-11-17T18:25:42+00:00): `declared_supply_order` contiene esas tres órdenes; suma nominal de CLP $1.977.399 (69,59 UF, UF registrada por oro para cada fecha de envío), solo una compra al mismo organismo amplio declarado como Poder Judicial, por CLP $882.266 (31,17 UF). Dos filas adicionales del resultado eran la misma OC repetida por estar enlazada a declaraciones distintas; se deduplicó por `order_code`.

## Consulta reproducible

```sql
SELECT DISTINCT order_code, url, sent_date, status, route, buyer_name, amount_clp, amount_uf, same_institution
FROM declared_supply_order
WHERE person_id='9eb31906887a0ee58b78491e92de72bc'
ORDER BY sent_date;
```

## Explicación legítima más fuerte y evaluación
Las tres órdenes son compras ordinarias de cortinas/persianas a un proveedor cuyo giro declarado es comercio; dos compradores son ajenos al Poder Judicial. La única orden institucional identificada fue emitida por la Corporación Administrativa del Poder Judicial, para un juzgado de Chillán, y el oro no acredita intervención del Conservador Jarpa en esa contratación. El patrón es de solo tres órdenes por monto acumulado modesto, con una única compra institucional por 31,17 UF; no aparece una contratación relevante repetida, adjudicación individual, documento que vincule al declarante con la decisión ni beneficio singular demostrado. La coincidencia es verificable, pero no pasa el umbral de interés público/materialidad editorial del protocolo.

## Decisión
Descartada por baja materialidad y ausencia de nexo funcional individual probado o de una señal documental adicional; no hay base para afirmar irregularidad. Reabrir solo si aparece evidencia primaria de que Jarpa intervino en la orden de 24-12-2019, o de un patrón de contratos institucionales materialmente mayor que el universo de estas tres órdenes.
