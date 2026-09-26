# Ejemplos de documentación técnica: Español

## Ejemplo 1: Documento de arquitectura

### Antes
> En el panorama actual del desarrollo de software, adentrémonos en la arquitectura orientada a eventos, un elemento fundamental para fomentar aplicaciones resilientes. Los microservicios son un testimonio de la excelencia en ingeniería y ofrecen un tapiz multifacético de beneficios operativos. El equipo migró a microservicios en 2021, mejorando el rendimiento de forma constante desde entonces. Además, es crucial realizar una evaluación exhaustiva de las colas de mensajes antes de escalar. En conclusión, aprovechar estos principios sin duda va a desbloquear una escalabilidad sin precedentes.

### Después
> La arquitectura orientada a eventos separa la carga de los productores del procesamiento de los consumidores y contiene las fallas dentro de los límites de cada dominio. El equipo migró a microservicios en 2021 y mejoró el rendimiento de forma constante desde entonces. Antes de escalar, evalúa los límites de partición, las políticas de retención y el comportamiento de contrapresión de las colas de mensajes.

### Qué cambió
- **Abre con el resultado concreto**: empieza por el mecanismo real de la arquitectura en vez del preámbulo sobre «el panorama actual del desarrollo de software».
- **Arranques escenificados**: elimina la invitación teatral «adentrémonos en».
- **Léxico sobreusado por sistemas de generación de texto**: quita «testimonio de la excelencia», «tapiz multifacético» y «crucial».
- **Verbos directos sobre nominalizaciones**: cambia «realizar una evaluación exhaustiva de» por «evalúa».
- **Gerundio de posterioridad**: separa «migró... mejorando» en dos verbos conjugados con «y».
- **Cierres dramáticos**: suprime el remate «En conclusión... sin precedentes».

## Ejemplo 2: Aviso de API con encabezado de interfaz

### Antes
> ADVERTENCIA IMPORTANTE: POR FAVOR ASEGURATE DE QUE NUNCA SUBAS TUS CLAVES PRIVADAS DE API A REPOSITORIOS PÚBLICOS NI LAS DEJES EXPUESTAS EN EL CÓDIGO DEL LADO DEL CLIENTE.
> Cabe destacar que mantener tus credenciales seguras es crucial — es un tapiz de buenas prácticas que no podés ignorar. Descubrí Nuestros Endpoints De Autenticación a continuación:
> [GENERÁ TU TOKEN DE PRODUCCIÓN SEGURO AHORA]

### Después
> **Advertencia de seguridad:** no subas tus claves privadas de API a repositorios públicos ni las dejes expuestas en el código del lado del cliente.
>
> Endpoints de autenticación
> [Generar token de producción]

### Qué cambió
- **Formato semántico en lugar de mayúsculas**: la advertencia pasa de mayúscula sostenida a un blockquote con la etiqueta en negrita.
- **Arranques huecos**: elimina «Cabe destacar que».
- **Voseo a tuteo: normalización de registro, no corrección**: «asegurate», «podés», «Descubrí» y «GENERÁ» se normalizan a tuteo.
- **Raya como conector retórico**: quita la raya usada como conector en «...es crucial — es un tapiz...».
- **Caja oracional en títulos, no Title Case**: «Nuestros Endpoints De Autenticación» pasa a «Endpoints de autenticación».
- **Botones en infinitivo, campos en imperativo**: el CTA pasa de «GENERÁ TU TOKEN...» a «Generar token de producción».

## Ejemplo 3: Reporte de incidencia

### Antes
> Cabe destacar que el día de ayer experimentamos un comportamiento anómalo en la base de datos —generando un cuello de botella crítico en el servicio de autenticación—. No es solo un problema de recursos, sino un claro testimonio de la necesidad de optimizar las consultas: la latencia se disparó a 1200 ms, el doble del límite aceptable de 600 ms. El Director de Infraestructura, que estaba de guardia, te pidió que revisés el índice de la tabla de sesiones cuanto antes.

### Después
> Ayer la base de datos presentó un comportamiento anómalo que degradó el servicio de autenticación. La latencia se disparó a 1200 ms, el doble del límite aceptable de 600 ms, y las consultas de sesión requieren optimización. El director de infraestructura, de guardia en ese momento, pidió revisar el índice de la tabla de sesiones cuanto antes.

### Qué cambió
- **Arranques huecos**: elimina «Cabe destacar que» y empieza directo por el hecho.
- **Raya como conector retórico**: quita el par de rayas y reformula en oraciones independientes.
- **Falsos contrastes**: elimina «No es solo... sino» y afirma el hecho directamente.
- **Dos puntos como muletilla**: separa «optimizar las consultas: la latencia...» en dos oraciones.
- **Cargos en minúscula**: «el Director de Infraestructura» pasa a minúscula.
- **Voseo a tuteo: normalización de registro, no corrección**: «te pidió que revisés» se reformula sin voseo.
