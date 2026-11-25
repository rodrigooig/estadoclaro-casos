# FRANCISCO JAVIER SANZ ABAD — ABS SPA, gasto de campaña 2024

## Pregunta decisiva
¿Existe un gasto de campaña material a un proveedor cuyo control la candidatura declaró, y hay evidencia primaria suficiente para que una auditoría examine la rendición sin sugerir una infracción?

## Hechos verificados

- InfoProbidad, declaración de candidatura presentada el 25-07-2024 por FRANCISCO JAVIER SANZ ABAD: declaró 75% y calidad de controlador de ABS SPA (RUT 76.505.155-K), adquisición declarada el 11-05-2015. Fuente primaria: [declaración específica](https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=73e0971524725ddb9941f249de49ee2b). El dato acredita lo declarado, no una certificación societaria independiente.
- Reporte definitivo Servel 2024: línea de gasto 82283 / factura 207, fecha 08-10-2024, proveedor ABS SPA y RUT 76.505.155-K, CLP $2.951.200, descripción “factura por pagar arriendo vehículo”, categoría “Arriendo de vehículos”, “Reembolso directo al candidato”, y `is_rejected=false`. El auxiliar 107 enlaza factura 207 con “arriendo vehículo para campaña a concejal” y “Reembolso hacia el mismo candidato”. Fuente primaria: [reporte definitivo XLSX](https://www-doc.servel.cl/2025/08/Reporte_Ingresos_Gastos_Definitivas2024.xlsx), hojas `INGRESOS Y GASTOS` y `FORMULARIO AUXILIAR 107`.
- El mismo reporte muestra para esa candidatura una entrada de reembolso por CLP $2.139.606 bajo RUT 76.505.155-K/ABS SPA; no permite concluir por sí solo que la entrada se vincule con factura 207 ni que se pagara a Sanz. El resultado global de auditoría de la cuenta es “Aprueba con Observaciones”; no se ha encontrado un fundamento individual para esa línea.
- La orden consultada en el oro para el RUT proveedor es de 2017-07-18; el puente `declared_supply` devuelve cero órdenes `same_institution`. El oro no acredita compras municipales relacionadas con esta rendición. Consulta reproducible: `consultas/francisco-javier-sanz-abad-abs-spa-campana-2024-2.sql`.

## Cuantía / conversión
Servel publica el gasto en CLP. Para expresarlo en UF a la fecha impresa en la línea (08-10-2024), `uf_series` del oro da UF $37.940,71; $2.951.200 / $37.940,71 = 77,78 UF. La fila derivada `campaign_expense.amount_uf` del oro informa 77,73 UF; esa diferencia de 0,05 UF no está explicada por esta revisión. El borrador cita la conversión recalculada a la fecha del documento y conserva el valor de origen en pesos.

## Separación analítica

- **Hecho:** hay una factura de campaña declarada al RUT exacto de una sociedad que la declaración de candidatura registra como controlada al 75%; se pidió reembolso directo al candidato y la cuenta global fue aprobada con observaciones.
- **Inferencia acotada:** esta coincidencia documentada merece revisar el soporte del servicio y el cálculo del reembolso, dada la cuantía y la relación declarada.
- **No establecido:** prestación material del arriendo; pago final del gasto; enlace entre la cifra de reembolso de $2.139.606 y factura 207; calidad de controlador vigente en fecha posterior a la declaración; fundamento de las observaciones globales; infracción, beneficio personal o intervención indebida.

## Explicación legítima más fuerte
ABS SPA pudo prestar realmente un arriendo de vehículo necesario para la campaña; una operación con una sociedad relacionada no es por sí misma irregular. El gasto figura no rechazado y la cuenta general aprobada con observaciones. La factura dice “por pagar”; por eso no se presenta como pago confirmado. La fuente pública no explica el monto reembolsado ni la observación.

## Mercado Público / nexo funcional
Consultado el oro de corte `2026-11-24T20:08:20+00:00`, la sociedad tiene una OC registrada en 2017, anterior al cargo municipal que el oro fecha desde 2021; no hay órdenes con el mismo organismo. Este hallazgo no aporta un nexo de compra municipal a la historia y no se usa para insinuarlo. El caso es sobre rendición y transparencia del gasto electoral.

## Decisión
`borrador listo` a `casos/autocontratacion/francisco-javier-sanz-abad-abs-spa-campana-2024.md`.

1. **Verdad:** fuentes primarias de InfoProbidad y Servel reabiertas; nombre, RUT, monto, fecha, concepto y estado cotejados.
2. **Importancia:** gasto por CLP $2.951.200 (77,78 UF calculadas al día de la factura) a sociedad controlada según declaración de candidatura; Servel registra reembolso hacia el candidato. Es una pregunta concreta de fiscalización de fondos y gasto electoral.
3. **Justicia:** titular factual y límites explícitos; explicación ordinaria más fuerte consignada; no se afirma incumplimiento o pago individual.
4. **Hecho:** destino dentro de la categoría publicada `autocontratacion`; citas a fuentes primarias verificadas con `sources.py verify --evidence`.
5. **Novedad:** búsqueda exacta por nombre y sociedad en índice local y rama `main` de `estadoclaro-casos`; no hay caso publicado de Sanz/ABS SPA.

Reabrir o ampliar solo si Servel publica fundamento específico de observaciones/reembolso, soporte de pago/servicio o una rectificación que modifique el registro.

## Consultas y materiales
- `consultas/francisco-javier-sanz-abad-abs-spa-campana-2024-1.sql` — línea del gasto, sociedad y estado global.
- `consultas/francisco-javier-sanz-abad-abs-spa-campana-2024-2.sql` — compras de la sociedad y cruce institucional en el oro.
- Extracción Servel guardada bajo `tmp/francisco-javier-sanz-abad-campana-2024/`; no se publica con el borrador.
