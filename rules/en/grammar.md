# Grammar rules: English

## 1. AI vocabulary and clichés

- **Ban documented AI-vocabulary words.** Avoid words directly attested as AI-writing tells: *delve*, *tapestry*, *testament(s)*, *nuanced*, *multifaceted*, *leverage/leveraging*, *foster/fostering*, *realm*, *uncharted*, *elevate/elevated*, *pivotal*, *underscore* (as a verb), *showcase/showcasing*, *meticulous/meticulously*, *intricate/intricacies*, *boasts*, *garner*, *interplay*, *landscape* (as an abstract noun), *crucial*, *robust*. [Kobak et al. 2025, excess-vocabulary dataset; Wikipedia, Signs of AI writing]
  - Incorrect: banning "paramount" and "beacon" because they are AI words.
  - Correct: flagging "delve" and "tapestry," which are directly attested in the Kobak et al. dataset and Wikipedia's AI-vocabulary list.
- **Undocumented words. [Editorial policy]** Treat *paramount*, *beacon*, *holistic*, *bespoke*, *unleash*, the bare word *pivot*, and the earlier house list *harness*, *pique*, *demystify*, *cornerstone*, *game-changer*, *paradigm shift*, *plethora*, *vibrant* as a house-style preference, not as attested AI tells. Neither Kobak et al. nor Wikipedia documents these.

## 2. Filler openers, stock closers, meta-discourse

- **Cut stock conclusions.** Remove "In conclusion," "In summary," and "Overall" as closing markers; end on the last substantive point instead. [Wikipedia, Signs of AI writing]
  - Incorrect: "In summary, the migration improved throughput."
  - Correct: "The migration improved throughput by 18%."
- **Cut dated disclaimer filler.** Remove throat-clearing such as "it is important to note that" before a claim; state the claim. [Wikipedia, Signs of AI writing]
- **Cut self-referential meta-discourse.** Do not narrate the document ("the author will delve into," "this paper will explore"); state the content directly. [APA Style, First-person pronouns]
  - Incorrect: "In this paper, the author will delve into the results."
  - Correct: "This paper examines the results."
- **Unverified filler phrases. [Editorial policy]** "In today's fast-paced digital world," "When it comes to," and "Ultimately, only time will tell" are common in informal AI-detection commentary but are not documented by Wikipedia or the Federal Plain Language Guidelines. Still cut them: they add no information.

## 3. Structural AI patterns

- **False contrasts.** Avoid negative-parallelism constructions such as "not X, but Y" or "it's not just X, it's Y." [Wikipedia, Signs of AI writing, "Negative parallelisms"]
  - Incorrect: "It's not just about speed, it's about reliability."
  - Correct: "Reliability matters as much as speed."
- **Forced triads.** Do not force descriptions into a rhythmic three-part list, such as "scalable, robust, and secure," when the list is not independently justified by evidence. [Wikipedia, Signs of AI writing, "Rule of three"]
- **Meta-talk about the piece itself.** Avoid framing such as "In this article, we will explore"; state the topic directly. [Wikipedia, Signs of AI writing]
- **Staged openers. [Editorial policy]** Cut warm-up phrases like "Let's dive in," "Here's what you need to know," "At its core," "Look," or "Honestly." These are not documented in Wikipedia's list, but they delay the point.
- **Dramatic one-line closers. [Editorial policy]** Cut punchline sentences like "That is the real win." or "Food for thought." No official source documents these; this is a house-style preference for directness.

## 4. Punctuation tics

- **Cap em-dash use; do not ban it.** Replace formulaic or rhetorical em dashes, the kind standing in for a comma, colon, or period for "punch," with commas, periods, or conjunctions. Keep genuine CMOS-normative uses (an amplifying clause, a sudden break, parenthetical emphasis) and never surround an em dash with spaces. As a working cap, allow at most one em-dash pair per paragraph, and none used as a rhetorical connector. [Wikipedia, Signs of AI writing, "Overuse of em dashes"; CMOS, em-dash conventions] [Editorial policy for the numeric cap]
  - Incorrect: "The build failed — the tests never ran — and no one noticed."
  - Correct: "The build failed, and the tests never ran, unnoticed." Reserve the em dash for a genuine amplifying aside: "The build failed for one reason — a missing environment variable."
- **Inline colon: target repetition, not the construction.** A colon introducing an amplifying clause after a grammatically complete lead-in is normative punctuation, not an AI tic by itself; the real problem is formulaic "label: reveal" repetition. [CMOS, colon before an amplifying clause]
  - Acceptable: "The fix was simple: cache the response."
  - Overused: "The bug: a race condition. The cause: unguarded state. The fix: a mutex."

## 5. Casing

- **No ALL CAPS for headings, warnings, or buttons.** Reserve full uppercase for official names, fixed all-caps abbreviations, or literal code strings; use bold, italics, or a callout for emphasis instead. [Google developer style guide, Capitalization; Microsoft style guide, Capitalization]
  - Incorrect: "WARNING: THIS ACTION CANNOT BE UNDONE"
  - Correct: "Warning: this action cannot be undone" (in a callout)
- **Default to sentence case.** Capitalize only the first word and proper nouns in headings, titles, and UI labels. Microsoft documents an explicit title-case exception for product, service, and brand names and formal titles. [Google developer style guide, Capitalization; Microsoft style guide, Capitalization]
  - Incorrect: "Join Our Community Today"
  - Correct: "Join our community today"

## 6. Syntax

- **Convert nominalizations to direct verbs.** [Federal Plain Language Guidelines, "hidden verbs"]
  - Incorrect: "We will conduct an evaluation of the results." / "We will perform the optimization of the query." / "We provide a recommendation for the next step." / "We make an assumption that the input is valid."
  - Correct: "We will evaluate the results." / "We will optimize the query." / "We recommend the next step." / "We assume the input is valid."
- **Default to active voice with an explicit actor.** Reserve passive voice for when the actor is unknown, irrelevant, or intentionally de-emphasized. [Federal Plain Language Guidelines; Google developer style guide, Voice]
  - Incorrect: "The pipeline was optimized." / "A review of the endpoints was carried out by the team."
  - Correct: "We optimized the pipeline." / "The team reviewed the endpoints."
- **Use the serial (Oxford) comma.** Place a comma before the final conjunction in a list of three or more items. AP style omits it by default; flag this as a house-style choice if the target audience follows AP. [CMOS 6.19; Google developer style guide, Commas; Microsoft style guide, Commas]
  - Incorrect: "The service handles auth, logging and metrics."
  - Correct: "The service handles auth, logging, and metrics."
- **Hyphenate compound modifiers before the noun, not after.** A short list of compounds (for example, cost-effective) stay hyphenated in both positions. [CMOS; Google developer style guide, Hyphens]
  - Incorrect: "a well designed app" / Correct: "a well-designed app"; "the app is well designed" (no hyphen as predicate).

## 7. Register and lexicon

- **Prefer plain words over jargon.** Choose a familiar word over technical shorthand or a Latinate alternative when the plain version keeps the same precision. [Federal Plain Language Guidelines]
  - Incorrect: "Utilize the provided methodology to facilitate deployment."
  - Correct: "Use the provided method to deploy."
- **Keep one English variety per document. [Editorial policy]** Pick American or British English and hold spelling, date format, and punctuation consistent. Do not mix "color" and "colour," or "24 March 2026" and "March 24, 2026," in the same document.
- **Restrict Latin abbreviations to parentheses.** Limit "e.g." and "i.e." to parenthetical material, notes, and tables, always with a following comma; in running prose, spell out "for example" or "that is." [CMOS, "i.e., e.g., etc."; APA Style, Latin abbreviations]
  - Incorrect: "The service supports several formats, e.g. JSON and YAML, out of the box."
  - Correct: "The service supports several formats out of the box (e.g., JSON and YAML)."

## 8. Numbers, symbols, quotation marks

- **Percent sign spacing. [Editorial policy]** In running English text, do not put a space between the numeral and the percent sign.
  - Incorrect: "50 %" / Correct: "50%"
- **Pick one quotation convention. [Editorial policy]** Use American style (double quotation marks primary, terminal punctuation inside the closing quote) or British style (single quotation marks primary, punctuation outside unless part of the quotation) consistently within a document.
- **Numerals for technical values. [Editorial policy]** Use numerals for measurements, percentages, versions, and technical specifications regardless of magnitude, for scannability.

## Sources

- Kobak, González-Márquez, Horvát & Lause, excess-vocabulary dataset: https://raw.githubusercontent.com/berenslab/llm-excess-vocab/main/results/excess_words.csv
- Wikipedia, "Signs of AI writing": https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing
- Google developer style guide, Capitalization: https://developers.google.com/style/capitalization
- Microsoft style guide, Capitalization: https://learn.microsoft.com/en-us/style-guide/capitalization
- Google developer style guide, Voice: https://developers.google.com/style/voice
- Google developer style guide, Hyphens: https://developers.google.com/style/hyphens
- CMOS Q&A, serial comma: https://www.chicagomanualofstyle.org/qanda/data/faq/topics/Commas/faq0103.html
- CMOS Shop Talk, serial comma: https://cmosshoptalk.com/2020/02/11/oxford-chicago-and-the-serial-comma/
- CMOS Shop Talk, "i.e., e.g., etc.": https://cmosshoptalk.com/2023/04/11/i-e-e-g-etc/
- Federal Plain Language Guidelines: https://digital.gov/guides/plain-language/writing
- APA Style, First-person pronouns: https://apastyle.apa.org/style-grammar-guidelines/grammar/first-person-pronouns
- APA Style, Latin abbreviations: https://apastyle.apa.org/style-grammar-guidelines/abbreviations/latin
