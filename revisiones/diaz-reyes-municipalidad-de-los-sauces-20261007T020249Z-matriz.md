# Matriz de afirmaciones — diaz-reyes-municipalidad-de-los-sauces

Borrador revisado: `borradores/diaz-reyes-municipalidad-de-los-sauces.md`
SHA256: `2551eb403ff305ff9c6499e059658ca5bdeb950f513eb72ae79b7f995286ae2e`
Corte de datos: `meta.build_date=2026-10-06T15:56:08+00:00`.

| ID | Afirmación | Evidencia / consulta | Estado |
|---|---|---|---|
| c1 | La declaración 1052265 identifica a Nancy Marisol Díaz Reyes, Municipalidad de Los Sauces, función «Otro»; línea de sociedad con campo «Cantidad / Porcentaje» 100, controlador false, fecha adquisición 11-02-2015, giro PUBLICIDAD RADIAL; valor 1, moneda vacía. | InfoProbidad 1052265; `consultas/diaz-reyes-municipalidad-de-los-sauces-1.sql` | Verificada por revisor de evidencia y adversarial. No interpretar 100 como 100% de propiedad ni el valor 1 como CLP. |
| c2 | Diez códigos OC únicos, a CLP 800.000 nominales cada uno y CLP 8.000.000 total, del 05-05-2023 al 20-02-2024, enlazados a la licitación 3705-127-LE22 por RUT societario. | `consultas/diaz-reyes-municipalidad-de-los-sauces-2.sql`, `-3.sql`; fichas Mercado Público 3705-240-SE23 y 3705-92-SE24. | Verificada por ambas revisiones. El estado de 3705-240-SE23 difiere entre oro al corte («Enviada a proveedor») y ficha primaria consultada después («Aceptada»); no presentar estados como pagos. |
| c3 | El proceso fue de convocatoria abierta, adjudicado 06-02-2023; criterios 70/15/15 y responsable contractual Juan Jiménez Cayul. | Ficha Mercado Público 3705-127-LE22. | Verificada. La adjudicación precede a la declaración del 11-04-2023 y a la primera OC del 05-05-2023. |
| c4 | Corrección editorial: retirar RUT personal expuesto en la URL/texto agregador; reemplazar «100%» por el campo combinado literal; no atribuir moneda; explicitar cronología y límites. | Caso vigente en main comparado con InfoProbidad y OCs primarias. | Verificada como descripción de cambios propuestos; la corrección no está aprobada ni entregada. |
| c5 | Relevancia material del paquete como caso para auditoría. | No hay fuente pública que vincule el cargo «Otro» con competencia/intervención en compras, ni evidencia de actuación individual; la licitación fue abierta y adjudicada antes de la declaración. | No acreditada: revisor adversarial `revise`. Estado final `evidencia insuficiente`; no PR. |

## Revisiones independientes

- `revisiones/diaz-reyes-municipalidad-de-los-sauces-20261007T020249Z-revisor-1.json`: `approve`, SHA idéntico.
- `revisiones/diaz-reyes-municipalidad-de-los-sauces-20261007T020249Z-revisor-2.json`: `revise`, SHA idéntico; objeción central c5.
- No hay dos aprobaciones del borrador. Condición para reabrir: fuente pública nueva sobre función/competencia o actuación concreta que haga material el vínculo; no repetir búsquedas generales.
