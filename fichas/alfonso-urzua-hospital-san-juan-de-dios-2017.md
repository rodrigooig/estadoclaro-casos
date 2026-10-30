# Investigación: Alfonso Iván Urzúa Gavilán — OC 1641-4482-SE17

- **ID:** `alfonso-urzua-hospital-san-juan-de-dios-2017`
- **Estado:** borrador listo
- **Corte del oro:** `2026-10-27T15:25:49+00:00`
- **Run:** `20261030T124621Z`

## Pregunta decisiva

¿Es una pregunta de auditoría de interés público que un médico del Servicio de Salud Metropolitano Occidente que declaró controlar una sociedad haya recibido, por medio de esa sociedad, una orden aceptada del Hospital San Juan de Dios por servicios médicos de apoyo a maternidad, cuyo mecanismo registrado fue “Confianza y seguridad de los proveedores, derivados de su experiencia”?

## Hechos comprobados

1. **Identidad y vínculo declarado.** InfoProbidad, declaración primaria ID 38403, identifica a Alfonso Iván Urzúa Gavilán como médico cirujano del Servicio de Salud Metropolitano Occidente, en su actualización de 29-03-2017. Declara un derecho en ALFONSO URZUA Y CIA. LTDA., RUT 76.069.151-8, adquirido el 01-09-2009; “50” aparece en el campo “Cantidad / Porcentaje” y “Tiene Calidad de Controlador” está marcado “SI”. La cifra se conserva como aparece, sin interpretarla como porcentaje.
2. **Compra primaria.** Mercado Público publica la OC 1641-4482-SE17, emitida el 23-05-2017 a ALFONSO URZUA Y CIA LTDA., mismo RUT 76.069.151-8; estado “Aceptada”. El comprador y responsable de pago es SERVICIO DE SALUD OCCIDENTE HOSPITAL SAN JUAN DE DIOS. La glosa es “SERVICIOS MEDICOS UNIDAD DE APOYO A LA MATERNIDAD”; la descripción nombra a SOC. ALFONSO URZUA GAVILAN Y CIA LTDA., Resolución N.º 2462, CDP N.º 1604 y período 01-01 a 31-03-2017. La orden registra el mecanismo “Confianza y seguridad de los proveedores, derivados de su experiencia” y total CLP $6.000.000.
3. **Medida del oro.** La consulta reproducible encuentra una orden durante la ventana, con CLP $6.000.000, equivalentes a 225,42 UF en el oro. El comprador tiene `same_institution = true`; no se usa ese campo como prueba de intervención. La búsqueda del nombre canónico en `campaign` del oro da cero filas.

## SQL reproducible

`consultas/alfonso-urzua-hospital-san-juan-de-dios-2017-1.sql` devuelve la declaración relevante y la OC. La suma es una sola orden, CLP $6.000.000 y 225,42 UF.

## Explicación legítima más fuerte

La prestación descrita es un servicio clínico de apoyo a maternidad; la adquisición aparece aceptada y el mecanismo consignado refiere a experiencia y confianza del proveedor. Un hospital puede contratar prestaciones médicas especializadas para atender necesidades ordinarias. La sola declaración y la orden no prueban actuación indebida, prestación personal de Urzúa, pago efectivo ni intervención suya en la decisión.

## Qué falta para confirmar o refutar la pregunta de auditoría

- Resolución N.º 2462 y antecedentes del CDP N.º 1604, incluida la justificación y quién solicitó/autorizó la contratación.
- Registros de prestación y recepción conforme que permitan establecer si el servicio se ejecutó durante el período consignado y quién lo prestó.
- Acto primario que detalle la función concreta de Urzúa en 2017, cualquier jefatura, participación en la contratación o deber de abstención.
- No se revisó un expediente aparte de Servel: el oro no contiene filas de campaña para esta identidad. No es necesario para la pregunta de contratación.

## Decisión

**PR al editor (`borrador listo`).** La identidad por nombre completo y RUT está sostenida por dos primarias; hay un hecho concreto y verificable (empresa declarada como controlada, OC del hospital del mismo Servicio, mecanismo de confianza/experiencia y objeto médico explícito), una pregunta de auditoría acotada y evidencia primaria accesible. La materialidad es modesta y se trata de una sola orden; la razón legítima es que se contrataron prestaciones clínicas especializadas. El borrador no sostiene ilegalidad, beneficio personal, pago ni intervención.

La afirmación más débil es la relación entre el rol médico de Urzúa y la decisión de contratar a su empresa: la declaración no señala jefatura y no se obtuvo el acto que determine quién solicitó, aprobó o ejecutó la compra. El editor puede presentar la coincidencia y la pregunta, no concluir sobre incompatibilidad legal.

## Fuentes

- InfoProbidad, declaración 38403: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=38403
- Mercado Público, OC 1641-4482-SE17: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1641-4482-SE17

## Antecedente de investigación previa

El índice ya tenía una investigación distinta sobre Urzúa y el avalúo de un vehículo, en estado `evidencia insuficiente` (2026-10-04). Esta pista se abrió por un hecho nuevo —la contratación estatal de la sociedad declarada—, no por la diferencia patrimonial previamente investigada.

## Decisión editorial (2026-10-30): publicado

Publicar: InfoProbidad 38403 identifica a Alfonso Iván Urzúa Gavilán como médico cirujano del Servicio de Salud Metropolitano Occidente y declara controlador de ALFONSO URZUA Y CIA. LTDA., RUT 76.069.151-8.
Mercado Público registra la OC 1641-4482-SE17, emitida el 23-05-2017 al mismo RUT por $6.000.000, para servicios médicos de apoyo a maternidad, con mecanismo de confianza y experiencia.
La compra concreta a una sociedad controlada y el vínculo médico con el servicio comprador sustentan una pregunta de auditoría; la declaración no acredita función directiva ni intervención en la compra.
El borrador mantiene esos límites, reconoce la justificación clínica plausible y no afirma pago, beneficio personal ni irregularidad.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/257
