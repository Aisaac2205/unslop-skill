# unslop-skill

Una skill de reescritura editorial bilingüe (inglés/español). Elimina los patrones comunes de escritura generada por IA y aplica reglas documentadas de gramática y estilo: normas de la RAE y Fundéu para el español, y normas de Chicago Manual of Style, APA y lenguaje claro para el inglés. Cubre documentación técnica, textos de interfaz (UX copy) para dashboards, contenido SEO y documentos formales. Está pensada para redactores, desarrolladores y equipos técnicos que quieren una revisión editorial consistente y respaldada por fuentes, en lugar de una reescritura genérica de "que suene mejor".

## Instalación rápida

```bash
npx skills add Aisaac2205/unslop-skill
```

Este comando instala la skill en el agente compatible que detecte en tu máquina. O elige tu plataforma más abajo para la instalación manual. Los usuarios de Claude Desktop y ChatGPT también pueden descargar los paquetes ya armados desde la [página de Releases](https://github.com/Aisaac2205/unslop-skill/releases/latest).

## Qué corrige

| Dominio | Ejemplos de lo que cambia | Archivo de reglas |
|---|---|---|
| Gramática general | Clichés de IA, aperturas de relleno, abuso de rayas, MAYÚSCULAS SOSTENIDAS, gerundio de posterioridad | `rules/{lang}/grammar.md` |
| Documentación técnica | Entregables enterrados en el texto, avisos vagos, adjetivos en lugar de precisión | `rules/{lang}/technical.md` |
| Textos de interfaz para dashboards | Mensajes de error vagos, botones ambiguos, estados vacíos poco claros | `rules/{lang}/ux_dashboard.md` |
| Contenido SEO | Respuestas enterradas, sobrecarga de palabras clave, bloques de FAQ genéricos | `rules/{lang}/seo.md` |
| Documentos formales | Preguntas retóricas, afirmaciones sin respaldo, tablas decorativas | `rules/{lang}/formal_docs.md` |

`{lang}` es `en` o `es`, según el idioma del texto de entrada.

## Uso

En Claude Code, ejecuta:

```
/unslop-skill <pega el texto, o una ruta de archivo>
```

Una ruta de archivo se lee como texto plano; la skill carga y reescribe su contenido. Puedes añadir una indicación de dominio en lenguaje natural, como "trata esto como UX copy" o "esto es contenido SEO", y la skill enruta al archivo de reglas correspondiente. El resultado es el texto reescrito junto con un breve registro de cambios que indica qué reglas se aplicaron.

Claude también puede cargar esta skill por sí solo, sin el comando de barra, cuando detecta una solicitud de reescritura en inglés o en español.

## Instalación por plataforma

Para usuarios de Windows: `~` más abajo equivale a `%USERPROFILE%`. Esto se indica una sola vez en la sección de Claude Code y aplica igual en el resto del documento.

### Claude Code

Existen tres rutas de instalación.

**Ruta A: copiar, clonar o enlazar (symlink)**

1. Elige un alcance: personal (disponible en todos los proyectos) o de proyecto (solo este repositorio).
2. Alcance personal: copia, clona o enlaza esta carpeta en `~/.claude/skills/unslop-skill/` (Windows: `%USERPROFILE%\.claude\skills\unslop-skill\`).
3. Alcance de proyecto: copia, clona o enlaza esta carpeta en `<repo>/.claude/skills/unslop-skill/`.
4. Si es un directorio de skills de nivel superior recién creado, ejecuta `/reload-skills`.
5. Invócala: `/unslop-skill <texto o ruta de archivo>`.
6. Verifica: ejecuta `/skills` y confirma que `unslop-skill` aparece en la lista.

**Ruta B: instalador universal**

1. Ejecuta `npx skills add Aisaac2205/unslop-skill` (añade `-a claude-code` para apuntar específicamente a Claude Code, `-g` para una instalación global, `-y` para omitir las confirmaciones).
2. Invócala: `/unslop-skill <texto o ruta de archivo>`.
3. Verifica: ejecuta `/skills` y confirma que `unslop-skill` aparece en la lista.

**Ruta C: marketplace de plugins**

1. Ejecuta `claude plugin marketplace add Aisaac2205/unslop-skill`.
2. Ejecuta `claude plugin install unslop-skill@unslop-skill`.
3. Invócala: `/unslop-skill:unslop-skill <texto o ruta de archivo>`. Esta ruta agrupa el comando bajo el nombre del plugin, a diferencia de las rutas A y B.
4. Verifica: ejecuta `/skills` y confirma que aparece el comando con este prefijo.

### Claude Desktop y claude.ai

1. Descarga `unslop-skill-X.Y.Z.zip` desde la [página de Releases](https://github.com/Aisaac2205/unslop-skill/releases/latest), o compílalo localmente con `bash scripts/build-dist.sh` (Windows: `powershell -ExecutionPolicy Bypass -File scripts/build-dist.ps1`).
2. Confirma que "Code execution and file creation" (ejecución de código y creación de archivos) esté habilitado en tu cuenta. En Team o Enterprise, un administrador de la organización debe habilitar "Cloud code execution and file creation" y "Skills" en Organization settings > Plugins & skills.
3. Abre Settings (la documentación lo llama "Settings > Features"; algunos artículos de soporte también lo llaman "Customize > Skills" o "Settings > Capabilities"; busca un elemento Skills dentro de Settings).
4. Sube `unslop-skill-X.Y.Z.zip`.
5. Requiere un plan Pro, Max, Team o Enterprise.
6. Verifica: abre un chat nuevo y pide que reescriba un párrafo corto en inglés o en español; confirma que el resultado sigue las reglas del dominio correspondiente.

La misma cuenta de claude.ai comparte esta instalación entre la app web, la app de escritorio y Cowork. No se sincroniza con la API de Claude ni con Claude Code; cada superficie necesita su propia carga.

Para la API de Claude, sube el mismo zip con `POST /v1/skills` y luego referencia el `skill_id` devuelto en `container.skills`, en una solicitud con la herramienta de ejecución de código habilitada.

### Codex

1. Elige un alcance: de usuario (`~/.agents/skills/unslop-skill/`) o de repositorio (`<repo>/.agents/skills/unslop-skill/`).
2. Copia o clona esta carpeta en esa ruta.
3. Codex detecta el cambio automáticamente. Reinicia Codex si no aparece.
4. Invócala escribiendo `$unslop-skill` en el chat, o ejecuta `/skills` y selecciónala de la lista.
5. Verifica: ejecuta `/skills` y confirma que `unslop-skill` aparece en la lista.

La skill de sistema `skill-installer` incluida instala por defecto en `~/.codex/skills`, una ruta distinta de `~/.agents/skills`. Este es un conflicto documentado y sin resolver (ver el issue #420 de `openai/skills`). Copia la carpeta directamente en `.agents/skills` en lugar de depender de `skill-installer` para esta skill. La sustitución de tipo `$ARGUMENTS` no está soportada en Codex; pasa el texto o la ruta de archivo como un mensaje de seguimiento en texto plano.

### Cursor

1. Copia o clona esta carpeta en `.cursor/skills/unslop-skill/` (proyecto) o en `~/.cursor/skills/unslop-skill/` (usuario). `.agents/skills/unslop-skill/` también funciona.
2. Cursor la descubre automáticamente al iniciarse.
3. En el chat de Agent, escribe `/unslop-skill` y selecciónala de la lista. Se adjunta solo a ese mensaje.
4. Opcional: conviértela en un Custom Mode para uso persistente (Option+Enter en Mac, Alt+Enter en Windows).
5. Verifica: escribe `/` en el chat de Agent y confirma que aparece `unslop-skill`.

Cursor también lee `.claude/skills/` y `.codex/skills/` por compatibilidad, así que esta carpeta funciona si ya está instalada para uno de esos agentes. Si prefieres no añadir una carpeta de skills, crea `.cursor/rules/unslop-skill.mdc` con una `description`, un `globs` vacío y `alwaysApply: false`, e indica en el cuerpo de la regla que el agente debe leer `SKILL.md`.

### ChatGPT

ChatGPT estándar (Projects, Custom GPTs) no tiene soporte nativo de Agent Skills; ese soporte vive en Codex y en ChatGPT Work (ver la sección de Codex más arriba). Existen dos rutas alternativas para una cuenta de ChatGPT normal. Ambas empiezan igual: descarga `unslop-skill-chatgpt-X.Y.Z.zip` desde la [página de Releases](https://github.com/Aisaac2205/unslop-skill/releases/latest) y descomprímelo. Contiene cinco archivos: `01-instructions.md` (el cuerpo de `SKILL.md`), `02-rules-en.md`, `03-rules-es.md`, `04-examples-en.md` y `05-examples-es.md`.

**Ruta A: Project**

1. Crea un ChatGPT Project.
2. Pega `01-instructions.md` en las instrucciones personalizadas del proyecto.
3. Sube los otros cuatro archivos, de `02-rules-en.md` a `05-examples-es.md`. Esto entra dentro del límite de archivos de cualquier plan (Free: 5 archivos; Go y Plus: 25 archivos; Edu, Pro, Business, Enterprise: 40 archivos).
4. Verifica: pide que reescriba un párrafo corto y comprueba que el resultado sigue las reglas cargadas.

**Ruta B: Custom GPT**

1. Crea un Custom GPT.
2. Pega `01-instructions.md` en Instructions. Comprueba el límite de caracteres vigente directamente en el editor del GPT; esto no está confirmado en la documentación oficial. Si no entra completo, conserva solo los bloques Hard Rules, Decision Gates y Execution Steps.
3. Añade los otros cuatro archivos, de `02-rules-en.md` a `05-examples-es.md`, como Knowledge (máximo 20 archivos).
4. Verifica: pide que reescriba un párrafo corto y comprueba que menciona la regla de dominio que aplicó.

## Publicación

### Artefactos de la release

El workflow de release (`.github/workflows/release.yml`) genera dos zips en cada tag `vX.Y.Z` y los adjunta a la release de GitHub: `unslop-skill-X.Y.Z.zip` (carpeta de nivel superior `unslop-skill/` con `SKILL.md`, `rules/` y `examples/`, para Claude Desktop, claude.ai, Cowork y la API de Claude) y `unslop-skill-chatgpt-X.Y.Z.zip` (el paquete de cinco archivos para ChatGPT descrito arriba).

Genera los mismos artefactos localmente con `bash scripts/build-dist.sh` o `powershell -ExecutionPolicy Bypass -File scripts/build-dist.ps1`; ambos escriben en `dist/`. Si prefieres no ejecutar el script, comprime la carpeta a mano de modo que su nivel superior sea `unslop-skill/`, con `SKILL.md`, `rules/` y `examples/` dentro.

### Aparecer en skills.sh

No existe un formulario de envío. La guía de la base de conocimiento de Vercel sobre Agent Skills lo dice directamente:

> There is no formal publish command. Instead: 1. Put it in a git repo. 2. Share the repo. 3. When people install it via npx skills add, it can show up on skills.sh automatically via install telemetry.

El FAQ de skills.sh confirma que el mecanismo es telemetría anónima:

> Skills appear on the leaderboard automatically through anonymous telemetry when users run `npx skills add <owner/repo>`.

El único requisito es un repositorio público con un `SKILL.md` válido que el recorrido de descubrimiento de la CLI encuentre; un `SKILL.md` en la raíz, como en este repositorio, funciona. Una vez que el repositorio es público, quien mantiene el proyecto puede provocar el primer listado ejecutando `npx skills add Aisaac2205/unslop-skill` una sola vez. Existe un nivel "oficial" curado en la API de skills.sh, pero no tiene una vía de postulación documentada para repositorios de terceros.

### Marketplace de Claude Code y directorio de Anthropic

- Mantén `SKILL.md`, `rules/` y `examples/` en la raíz del repositorio. `npx skills add` descubre un `SKILL.md` en la raíz sin configuración adicional.
- Para el marketplace de plugins de Claude Code, mantén `.claude-plugin/plugin.json` y `.claude-plugin/marketplace.json` en la raíz, como en este repositorio.
- Opcional: envíala al directorio de skills de Anthropic en claude.ai/directory/manage. Esto requiere un plan de pago de claude.ai.
- Valida la estructura de la carpeta con el validador `skills-ref`: `github.com/agentskills/agentskills`.

## Versionado

Este proyecto sigue versionado semántico. La fuente de verdad es el campo `version` en `.claude-plugin/plugin.json`, reflejado en `metadata.version` de `SKILL.md`.

Pasos de release: actualiza `CHANGELOG.md`, incrementa ambos campos de versión, haz commit como `chore(release): vX.Y.Z`, etiqueta y sube el tag; GitHub Actions construye y adjunta los artefactos de la release.

Consulta `VERSIONING.md` para el procedimiento completo y `CHANGELOG.md` para el historial de versiones.

## Cómo se obtienen las reglas

Cada regla en `rules/` está vinculada a una fuente institucional documentada o etiquetada explícitamente como política editorial. Las reglas se basan en:

- RAE (Ortografía 2010, Diccionario panhispánico de dudas)
- FundéuRAE
- Chicago Manual of Style
- APA 7
- plainlanguage.gov
- Google developer documentation style guide
- Microsoft Writing Style Guide
- Material Design
- Apple Human Interface Guidelines
- Shopify Polaris
- Nielsen Norman Group
- Google Search Central
- Wikipedia, "Signs of AI writing"
- Kobak et al. 2025

Cada archivo de reglas termina con una sección Sources que enumera las instituciones y URLs en las que se basa. Una regla sin fuente oficial se etiqueta como "Editorial policy" para que nunca se confunda con una norma documentada.

## Estructura del repositorio

```
unslop-skill/
├── .github/
│   └── workflows/
│       └── release.yml
├── .claude-plugin/
│   ├── plugin.json
│   └── marketplace.json
├── scripts/
│   ├── build-dist.sh
│   └── build-dist.ps1
├── SKILL.md
├── README.md
├── README.es.md
├── CHANGELOG.md
├── VERSIONING.md
├── LICENSE
├── .gitignore
├── rules/
│   ├── en/
│   │   ├── grammar.md
│   │   ├── technical.md
│   │   ├── ux_dashboard.md
│   │   ├── seo.md
│   │   └── formal_docs.md
│   └── es/
│       ├── grammar.md
│       ├── technical.md
│       ├── ux_dashboard.md
│       ├── seo.md
│       └── formal_docs.md
└── examples/
    ├── en/
    │   ├── technical.md
    │   ├── corporate.md
    │   ├── ux_dashboard.md
    │   ├── seo.md
    │   └── formal_docs.md
    └── es/
        ├── technical.md
        ├── corporate.md
        ├── ux_dashboard.md
        ├── seo.md
        └── formal_docs.md
```

## Contribuir

- Mantén sincronizados `rules/en/<dominio>.md` y `rules/es/<dominio>.md`: las mismas secciones numeradas, en el mismo orden, por dominio.
- Cita una fuente oficial entre corchetes al final de cada regla, o etiquétala como `[Editorial policy]` si no existe ninguna. Nunca inventes una fuente.
- Añade al menos un ejemplo de antes/después al archivo correspondiente en `examples/` para cada regla nueva.

## Licencia

MIT. Consulta `LICENSE`.
