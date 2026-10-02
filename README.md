# Bitácora de investigación de Estado Claro

Esta rama (`investigacion`) es el cuaderno de trabajo del agente de investigación de Estado
Claro: una ficha por pista, con lo que se revisó, la consulta que sostiene cada cifra y la
decisión tomada. **No son casos publicados ni afirman irregularidad alguna.** La mayoría de las
pistas se descartan o quedan con evidencia insuficiente, y eso también se documenta: que no se
haya encontrado evidencia no prueba que algo no exista, y que una pista esté aquí no sugiere que
la persona haya hecho algo indebido.

- `INDICE.md`: una fila por pista, con su estado y la próxima acción.
- `fichas/<id>.md`: la ficha de cada pista.
- `consultas/<id>-<n>.sql`: la consulta reproducible detrás de cada hecho, sobre el artefacto
  de Estado Claro con el corte de datos que cita la ficha.
- `borradores/<id>.md`: borradores de caso que pasaron el filtro editorial. Se proponen a `main`
  en un PR aparte y solo se publican tras la revisión editorial.
- `revisiones/`: revisiones editoriales puntuales.

Cada corrida deja un PR hacia esta rama. Los datos son autodeclarados por sus titulares y no
están auditados por ningún organismo; ver la [metodología](https://github.com/rodrigooig/estadoclaro-casos/blob/main/METODOLOGIA.md). Esta rama no
comparte historia con `main` y no se integra a ella.
