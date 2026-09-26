# Technical rules: English

## 1. Lead with the deliverable

- **Open with the concrete subject.** [Editorial policy] Start technical documents, PR descriptions, and READMEs with the deliverable, component, or result. Do not warm up with general industry context or scene-setting before naming what changed.
  - Incorrect: "In today's software landscape, caching is essential for performance."
  - Correct: "This PR adds TTL-based expiration to the cache layer."
- **State the constraint or scope up front.** [Editorial policy] If the deliverable has a boundary (a supported platform, a version range, a known limitation), name it in the same opening, not buried several paragraphs down.
- **Put motivation in its own section, not the opening line.** [Editorial policy] If background or motivation matters, give it a short dedicated subsection after the deliverable, not before it.

## 2. Headings and calls to action

- **Name the action or concept, not a slogan.** Every heading, button, or link should describe a concrete action, solution, or concept in sentence case, never an empty marketing headline. [Google developer style guide, Capitalization]
  - Incorrect: "[DOWNLOAD THE FULL MANUAL NOW]"
  - Correct: "[Download the manual]"
- **Subheadings describe content, not hype.** [Editorial policy]
  - Incorrect: "A Truly Revolutionary Experience"
  - Correct: "Reducing latency in distributed queries"
- **Prefer a verb for the call to action; a bare noun only labels.** [Editorial policy]
  - Incorrect: "Manual download" (link text)
  - Correct: "Download the manual"

## 3. Callouts and admonitions

- **Use semantic formatting instead of ALL CAPS labels.** Format admonition labels such as "Warning," "Important," or "Danger" in sentence case inside a standard blockquote or admonition block rather than sustained capitals. [Google developer style guide, Capitalization; Microsoft style guide, Capitalization]
  - Incorrect: "CAUTION: NEVER RUN MIGRATIONS WITHOUT VERIFYING THE BACKUP."
  - Correct: "> **Warning:** Verify the backup's integrity before running migrations on the primary server."
- **One callout type per concern.** [Editorial policy] Do not stack multiple admonition labels on the same block ("Note / Warning / Tip" together); pick the single label that matches the content's severity.
  - Incorrect: "> **Note / Warning / Tip:** back up the database first."
  - Correct: "> **Warning:** back up the database first."

## 4. Precision over adjectives

- **Cut hyperbolic adjectives; give the metric.** Remove adjectives that carry no information, such as "amazing," "blazing-fast," or "seamless." Replace them with an exact metric, constraint, or specification. [Editorial policy]
  - Incorrect: "We offer incredibly amazing availability."
  - Correct: "The service guarantees 99.95% monthly availability under the SLA."
- **Prefer a number over a qualifier whenever one exists.** [Editorial policy] If latency, throughput, memory, or error rate data exists, state it; do not settle for "fast" or "efficient."
  - Incorrect: "The service responds quickly."
  - Correct: "The service responds in under 50 ms at the 95th percentile."

## 5. Technical lexicon and code identifiers

- **Use one name per concept; keep identifiers in code font.** Pick a single name for each product, tool, service, or concept and keep it consistent throughout a document. Format identifiers, paths, commands, and flags in code font. [Editorial policy]
  - Incorrect: "The api-gateway (also called the front door, or sometimes the edge router) forwards requests."
  - Correct: "The `api-gateway` forwards requests to the appropriate service."
- **No decorative adjectives on identifiers.** [Editorial policy] Do not dress up a code identifier, path, or command with a subjective adjective; state what it does.
  - Incorrect: "the powerful `api-gateway`" / Correct: "the `api-gateway`"
- **Match the product's own official name.** [Editorial policy] Use the exact capitalization and spelling that the product's own documentation uses, for example "GitHub Actions," not "Github actions" or an invented shorthand.

## 6. Commit messages and pull requests

- **Write commit messages and PR titles in the imperative mood.** Command the codebase: "Add," "Fix," "Remove," not "Added," "Fixes," or "This adds." [Git, SubmittingPatches]
  - Incorrect: "Fixed memory leak in worker pool."
  - Correct: "Fix memory leak in worker pool."
- **Cut narrative meta-talk from PR bodies.** [Editorial policy] Remove filler like "In this PR, we will..." or "As previously mentioned..."; lead with what changed and why.
  - Incorrect: "In this PR we explore some changes to the caching layer."
  - Correct: "Add TTL expiration to transient cache keys."
- **Scope one logical change per commit.** [Editorial policy] Keep unrelated refactors, formatting passes, and dependency bumps out of a commit whose message describes a single fix or feature.

## Sources

- Google developer style guide, Capitalization: https://developers.google.com/style/capitalization
- Microsoft style guide, Capitalization: https://learn.microsoft.com/en-us/style-guide/capitalization
- Git, SubmittingPatches: https://raw.githubusercontent.com/git/git/master/Documentation/SubmittingPatches
