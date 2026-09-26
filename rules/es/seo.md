# Reglas de SEO: Español

## 1. Responde primero

- **Sin recuento de palabras para fragmentos destacados.** Google no da una longitud mínima ni un rango de palabras para aparecer en un fragmento destacado; responde la pregunta de forma directa cerca del inicio de la sección, en la forma que mejor calce con la consulta (frase, lista o tabla). [Google Search Central, Fragmentos destacados]
  - Incorrecto: «responde en las primeras 40 a 60 palabras después del H1 o H2».
  - Correcto: encabezado «## ¿Qué es CORS?» seguido de inmediato por la respuesta directa: «CORS es un mecanismo del navegador que bloquea las peticiones a un dominio distinto salvo que ese dominio lo permita explícitamente.»
- **Sin regla obligatoria de posición bajo H1 o H2.** Google no exige que la respuesta esté inmediatamente debajo de un encabezado H1 o H2 específico; lo que importa es que esté cerca del inicio de la sección relevante para la consulta. [Google Search Central, Fragmentos destacados]

## 2. Valor original

- **Usa las preguntas oficiales de autoevaluación.** En vez de un supuesto «information gain score» (no es un término documentado por Google), evalúa el contenido con las preguntas oficiales: «¿Ofrece el contenido información, datos de informes, investigación o análisis originales?» y «¿Proporciona el contenido información valiosa si se compara con otras páginas que aparecen en los resultados de búsqueda?». [Google Search Central, Crear contenido útil]
  - Correcto: preguntarte si la página dice algo que las páginas mejor posicionadas no dicen (una restricción, un caso límite, un «no uses esto si X») o si es una reescritura de lo que ya existe.

## 3. Encabezados

- **Encabezados descriptivos, no una lista negra de palabras.** Google no publica una lista de encabezados prohibidos («Introducción», «Resumen», «Conclusión»); su requisito documentado es que el título y los encabezados sean descriptivos y no vagos. Usar encabezados orientados a la intención es una buena práctica editorial, no una política publicada por Google. [Google Search Central, título y enlace de resultados de búsqueda; recomendación de encabezados por intención: Política editorial]
  - Menos descriptivo: «## Introducción».
  - Más descriptivo: «## Cuándo usar NestJS en lugar de Express».
  - Menos descriptivo: «## Beneficios de Redis para el almacenamiento en caché».
  - Más descriptivo: «## Estrategias de invalidación y TTL en Redis».
- **Evita descriptores vagos en la etiqueta `<title>`.** Google pone como ejemplo explícito de mal título «Inicio»; sé específico sobre el contenido real de la página. [Google Search Central, título y enlace de resultados de búsqueda]
  - Incorrecto: `<title>Inicio</title>`.
  - Correcto: `<title>Migración de PostgreSQL a Aurora sin downtime</title>`.

## 4. Lenguaje natural frente al keyword stuffing

- **Sin umbral numérico de densidad.** La política de Google contra el relleno de palabras clave es cualitativa, «que suene forzado», no una fórmula por cada N palabras. [Google Search Central, políticas de spam]
  - Incorrecto: «reescribe la oración si la palabra clave aparece más de una vez cada 150 palabras».
  - Correcto: «si la oración se lee más natural con un sinónimo o sin la palabra clave exacta, reescríbela: el criterio es que la repetición suene forzada, no un contador de palabras.»
- **Usa entidades relacionadas en vez de repetir la palabra clave.** Enriquece el texto con términos que co-ocurren de forma natural en el dominio técnico del tema, en lugar de repetir la frase exacta. [Política editorial]
  - Incorrecto: repetir «migración de bases de datos» en cada párrafo de la sección.
  - Correcto: variar con «este proceso», «el cambio de esquema» y términos relacionados como «tiempo de inactividad», «replicación» o «rollback».

- **Prueba de naturalidad, no de conteo.** Si puedes eliminar la palabra clave exacta y la oración sigue leyéndose natural, elimínala; esa es la prueba, no un porcentaje objetivo. [Google Search Central, políticas de spam]

## 5. Bloques de preguntas frecuentes

- **Las FAQ ya no generan resultados enriquecidos.** Desde 2023 Google restringió y luego retiró por completo el resultado enriquecido de FAQPage; trata las FAQ solo como ayuda de UX para una fricción real de implementación, nunca como táctica de SEO. [Google Search Central, FAQPage]
  - Correcto: «Agrega una FAQ solo para resolver una fricción real de implementación (p. ej., "¿por qué falla `npm install` en Node 22?"), de dos a tres oraciones como máximo, sin esperar un resultado enriquecido.»
- **Sin enlaces cruzados para inflar el enlazado interno.** Google nombra explícitamente como spam los esquemas de enlaces creados principalmente para manipular el posicionamiento. [Google Search Central, políticas de spam, spam de enlaces]

## 6. E-E-A-T y contenido generado por IA

- **El E-E-A-T no es un factor de posicionamiento directo.** Es el marco descriptivo que usan los evaluadores de calidad y algunas señales para reconocer contenido genuinamente útil; de sus cuatro aspectos (experiencia, pericia, autoridad, fiabilidad), la fiabilidad es el más importante. [Google Search Central, Crear contenido útil]
  - Incorrecto: «Esta estructura mejora tu E-E-A-T y por lo tanto tu posicionamiento.»
  - Correcto: «Esta estructura refuerza el E-E-A-T (pasos probados, ejemplos con fecha, autor identificado), aunque el E-E-A-T en sí no es un factor de posicionamiento directo.»
- **Google no penaliza el contenido por estar escrito con IA.** La infracción real es publicar contenido a escala sin aportar valor, lo que sus políticas llaman «abuso de contenido a escala». [Google Search Central, uso de contenido generado con IA]
- **Autor identificado y fecha visibles.** Mostrar quién escribió el contenido y cuándo se publicó o actualizó ayuda a demostrar fiabilidad, el aspecto más importante de los cuatro que componen el E-E-A-T. [Google Search Central, Crear contenido útil]

## Fuentes
- Google Search Central, Fragmentos destacados: https://developers.google.com/search/docs/appearance/featured-snippets
- Google Search Central, Crear contenido útil: https://developers.google.com/search/docs/fundamentals/creating-helpful-content
- Google Search Central, Crear contenido útil (ES): https://developers.google.com/search/docs/fundamentals/creating-helpful-content?hl=es
- Google Search Central, políticas de spam: https://developers.google.com/search/docs/essentials/spam-policies
- Google Search Central, FAQPage: https://developers.google.com/search/docs/appearance/structured-data/faqpage
- Google Search Central, título y enlace de resultados de búsqueda: https://developers.google.com/search/docs/appearance/title-link
- Google Search Central, uso de contenido generado con IA: https://developers.google.com/search/docs/fundamentals/using-gen-ai-content
