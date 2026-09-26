# Reglas de documentación técnica: Español

## 1. Empieza por el resultado

- **Abre con el resultado concreto.** Empieza por el componente, la métrica o el cambio real; evita el preámbulo de contexto general de la industria. [Política editorial]
  - Incorrecto: «En el panorama actual del desarrollo de software, la caché juega un papel fundamental...»
  - Correcto: «La caché reduce el tiempo de respuesta de 400 ms a 60 ms.»
- **Verbos directos sobre nominalizaciones.** Sustituye «realizar una evaluación de» por «evaluar», «llevar a cabo un análisis de» por «analizar». [Federal Plain Language Guidelines, digital.gov]
  - Incorrecto: «El equipo realizó una evaluación del rendimiento.»
  - Correcto: «El equipo evaluó el rendimiento.»

## 2. Encabezados y llamados a la acción

- **Botones en infinitivo, campos en imperativo.** Los botones y comandos de menú van en infinitivo (Guardar, Cancelar); las instrucciones para que el usuario complete un campo se formulan en imperativo directo. «Ingresar» es válido en este uso, aunque el DLE no recoge esa acepción de forma literal; «introducir» es una alternativa igual de neutra. [Microsoft Learn es-es, guías de texto de interfaz; DLE «ingresar»]
  - Botón: «Guardar». Campo: «Ingresa la URL del repositorio.» / «Introduce la URL del repositorio.»
- **Subtítulos descriptivos, no eslóganes.** Cada encabezado describe una acción, solución o concepto concreto, no una frase publicitaria vacía. [Política editorial]
  - Incorrecto: «Una experiencia totalmente revolucionaria».
  - Correcto: «Reducción de latencia en consultas distribuidas».

## 3. Bloques de alerta y advertencias

- **Formato semántico en lugar de mayúsculas.** Usa un blockquote con la etiqueta en negrita («Advertencia:») en vez de un encabezado en mayúscula sostenida; ver la regla de mayúsculas en `rules/es/grammar.md` §5. [Política editorial]
  - Incorrecto: «CUIDADO: NUNCA EJECUTES MIGRACIONES SIN VERIFICAR EL BACKUP.»
  - Correcto: «**Advertencia:** comprueba la integridad del respaldo antes de ejecutar migraciones en el servidor principal.»
- **Niveles de severidad consistentes.** Reserva **Nota:** para información complementaria, **Advertencia:** para riesgos evitables y **Peligro:** para acciones irreversibles; no mezcles los tres niveles para el mismo tipo de riesgo dentro de un documento. [Política editorial]

## 4. Precisión sobre adjetivación

- **Sustituye adjetivos hiperbólicos por métricas.** Evita «increíble», «ultrarrápido» o «perfecto»; da la cifra, la restricción o la especificación exacta. [Política editorial]
  - Incorrecto: «Ofrecemos una disponibilidad extremadamente asombrosa.»
  - Correcto: «El servicio garantiza una disponibilidad mensual del 99.95 % según el SLA.»

## 5. Léxico técnico e identificadores de código

- **Extranjerismos crudos en cursiva.** Si usas el anglicismo sin adaptar (commit, framework, backend, endpoint, runtime, logs), escríbelo en cursiva o comillas, como cualquier extranjerismo crudo. [RAE, extranjerismos y latinismos crudos]
- **Términos sin equivalente establecido.** Mantén en inglés los términos de desarrollo ampliamente adoptados que no tienen traducción consolidada. Cuando exista una localización oficial (GitHub: «solicitud de extracción» para pull request), cualquiera de las dos formas es válida si el documento es consistente. [Documentación oficial de GitHub en español]
  - Aceptable (anglicismo crudo): «Se revisó el *commit* antes del *deploy*.»
  - Aceptable (localización oficial): «Se aprobó la solicitud de extracción.» No mezcles ambas formas en el mismo documento.
- **Concordancia de género por uso.** El commit, la branch/la rama, el endpoint: la concordancia sigue el uso establecido, no una regla académica fija. [Política editorial]
- **No traduzcas los identificadores de código.** Nombres de variables, funciones, endpoints y rutas se mantienen tal como aparecen en el código fuente; solo se traduce la prosa que los describe. [Política editorial]
  - Incorrecto: «la función `obtenerUsuario()` reemplaza a `getUser()` en la documentación».
  - Correcto: mantener `getUser()` en el texto y describir en español lo que hace.

## 6. Mensajes de commit y pull requests

- **Modo imperativo.** Escribe los mensajes de commit y los títulos de pull request en modo imperativo, como si le dieras una orden al código. [Git, Documentation/SubmittingPatches]
  - Incorrecto: «Arreglado el memory leak del pool de workers.»
  - Correcto: «Corrige la fuga de memoria en el pool de workers.»
- **Sin metadiscurso en la descripción.** Elimina fórmulas como «en este PR vamos a explorar los cambios realizados»; describe el cambio directamente. [Patrón documentado en inglés: Wikipedia, Signs of AI writing]
  - Incorrecto: «En este PR vamos a explorar los cambios en la capa de caché.»
  - Correcto: «Agrega expiración TTL a las claves de caché transitorias y comprime los objetos antes de serializarlos.»

## Fuentes
- Federal Plain Language Guidelines, digital.gov: https://digital.gov/guides/plain-language/writing
- Microsoft Learn es-es, texto de interfaz: https://learn.microsoft.com/es-es/windows/win32/uxguide/text-ui
- Microsoft Learn es-es, texto de interfaz para web parts: https://learn.microsoft.com/es-es/sharepoint/dev/design/ui-text-for-web-parts
- DLE «ingresar»: https://dle.rae.es/ingresar
- RAE, extranjerismos y latinismos crudos: https://www.rae.es/espanol-al-dia/los-extranjerismos-y-latinismos-crudos-no-adaptados-deben-escribirse-en-cursiva
- GitHub Docs en español: https://docs.github.com/es
- Git, Documentation/SubmittingPatches: https://raw.githubusercontent.com/git/git/master/Documentation/SubmittingPatches
- Wikipedia, Signs of AI writing: https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing
