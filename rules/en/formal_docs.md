# Formal document rules: English

## 1. Register and person

- **First person is not banned; ambiguous self-reference is.** APA 7 explicitly prescribes "I" for a single author or "we" for coauthors over third-person self-reference, and calls "the author" a source of ambiguity about who performed the action. APA also publishes "The 'no first-person' myth" to debunk the idea that first person is prohibited. IEEE's own style manual is silent on the question and defers to CMOS for anything it does not cover. [APA Style, First-person pronouns; APA Style, "The 'no first-person' myth"; IEEE Editorial Style Manual for Authors]
  - Incorrect: "The author analyzed the data."
  - Correct: "I analyzed the data." (single author) / "We analyzed the data." (coauthors)
- **Remove the conversational "you," but do not force third person.** Use first person where APA or IEEE conventions allow it, or an objective subject naming the result. [APA Style, First-person pronouns]
  - Incorrect: "When you run the algorithm, you will see..."
  - Correct: "Running the algorithm yields..." / "The results show..."
- **Do not default to third person as "the formal choice."** [Editorial policy, informed by APA Style, First-person pronouns] Formality comes from precision and evidence, not from grammatical person. Choose the person the target style guide actually prescribes rather than assuming third person is safer.
  - Incorrect: rewriting "I analyzed the data" as "The author analyzed the data" purely to sound more formal.
  - Correct: keeping "I analyzed the data" when APA governs the document.

## 2. Rhetorical questions and meta-discourse

- **Rhetorical questions. [Editorial policy]** Avoid rhetorical questions in formal or technical documents; state the claim directly instead. No official style guide checked for this project (APA, CMOS, Purdue OWL) documents a rule against rhetorical questions; this is a house-style preference for directness.
  - Incorrect: "Why is this architecture resilient? The answer lies in redundancy."
  - Correct: "The architecture's resilience comes from redundancy."
  - Note: the underlying claim ("the answer lies in") also reads as meta-discourse; state the resilience factor directly instead of announcing that an answer follows.
- **Cut self-narration.** Remove phrasing like "In this paper, the author will delve into..."; state the content directly. APA's conciseness guidance also supports removing circumlocution generally, though it does not name "As we all know" as a specific banned phrase. [APA Style, First-person pronouns]
  - Incorrect: "In this paper, the author will delve into the results."
  - Correct: "This paper examines the results." / "We examine the results."
- **"As we all know" and similar shared-knowledge framing.** [Editorial policy] Cut it on the general wordiness principle, not as a named APA rule; if the claim is true, state it without the framing, and if it needs support, cite it.
  - Incorrect: "As we all know, distributed systems are hard to test."
  - Correct: "Distributed systems are hard to test because failures are partial and timing-dependent."

## 3. Evidence, adjectives, and citations

- **Cut empty superlatives; state the evidence.** [Editorial policy] Remove adjectives that carry no information, such as "an amazing discovery" or "a perfect solution." State the finding empirically instead.
  - Incorrect: "The team achieved an incredible improvement in latency."
  - Correct: "The change reduced latency by 22% relative to baseline."
- **No vague appeals to authority.** [Editorial policy] Do not write "experts say" or "many studies show" without a citation. Without a formal citation (author, year), remove the claim or reframe it as a working hypothesis.
  - Incorrect: "Experts say microservices improve scalability."
  - Correct: "Smith and Lee (2023) report a 30% throughput gain after decomposing the monolith."

## 4. Tables

- **Three horizontal rules, no vertical rules.** Use only a top rule, a rule below the header row, and a bottom rule; never use vertical rules between columns. [booktabs package manual; APA Style, Tables]
  - Incorrect: a table with a vertical line between every column and a double rule under the header.
  - Correct: a table with a top rule, a single rule under the header row, and a bottom rule, no vertical lines.
- **Give every column a clear header; do not merge cells to save space.** [APA Style, Tables] Additional horizontal rules beyond the top, header, and bottom rules are acceptable only when they genuinely aid readability, never as a substitute for a clear header row.

## 5. Visual restraint

- **Restrained color is a house choice; accessible color is a requirement when used.** Default to a restrained, mostly monochromatic palette for body text and headings in formal documents; this default is editorial, not an official rule. When color in a figure or chart carries meaning, verify it against a contrast checker for WCAG 2.0 AA. APA 7 does not ban color: it requires accessible contrast when color is used. [APA Style, "Accessible use of color in figures"] [Editorial policy for the monochromatic default]
  - Incorrect: color-coded body text or headings with no stated meaning and no contrast check.
  - Correct: a mostly monochromatic document; a chart that uses color to distinguish series, checked against WCAG AA.
- **No decorative emoji or colored alert boxes as a substitute for structure. [Editorial policy]** Use semantic headings, lists, and blockquotes to convey structure or importance instead.
  - Incorrect: a pastel-colored callout box with an emoji bullet marking a key finding.
  - Correct: a plain blockquote labeled "Key finding:" in sentence case.
- **Fonts and figure text stay consistent with the body.** [APA Style, "Accessible use of color in figures"] Use the same font in tables and figures as in the rest of the document; reserve visual variation for meaning (a chart's color-coded series), not decoration.
- **Restrained shading in tables. [Editorial policy]** If a table needs a header fill or alternating-row tint at all, keep it a light, low-contrast neutral; heavy shading and saturated grid-line colors compete with the top/header/bottom rule structure in section 4.
- **Reference palette. [Editorial policy]** When the output format allows styling (HTML, DOCX, PDF), apply these values unless the user's template says otherwise.

| Element | Value |
|---|---|
| Body text | `#000000` or `#111827` |
| Headings H1 to H4 | `#000000`; never corporate blue (`#0066CC`, `#1E40AF`), teal, or purple |
| Links | underlined, `#000000` or `#374151` |
| Blockquote | 1px left border `#D1D5DB`, black italic text, no background |
| Table header fill | `#FFFFFF` with bold text, or at most `#F3F4F6` |
| Alternating rows | none unless the table exceeds 8 columns; then `#F9FAFB` |
| Table rules | `#E5E7EB` to `#D1D5DB`; horizontal only (section 4) |

## Sources

- APA Style, First-person pronouns: https://apastyle.apa.org/style-grammar-guidelines/grammar/first-person-pronouns
- APA Style, "The 'no first-person' myth": https://apastyle.apa.org/blog/first-person-myth
- APA Style, Tables: https://apastyle.apa.org/style-grammar-guidelines/tables-figures/tables
- APA Style, "Accessible use of color in figures": https://apastyle.apa.org/style-grammar-guidelines/tables-figures/colors
- booktabs package manual: https://tug.ctan.org/macros/latex/contrib/booktabs/booktabs.pdf
- IEEE Editorial Style Manual for Authors: https://journals.ieeeauthorcenter.ieee.org/wp-content/uploads/sites/7/IEEE-Editorial-Style-Manual-for-Authors.pdf
