# SEO rules: English

## 1. Answer first

- **Answer the query directly near the top; do not target a word count.** Google states it gives no minimum or target length for a featured snippet. Answer unambiguously in whatever form matches how the query is phrased, whether sentence, list, or table; brevity is a byproduct of directness, not a target metric. [Google Search Central, Featured snippets]
  - Incorrect: "Aim for exactly 40 to 60 words directly under the heading before adding detail."
  - Correct: "## What is CORS? CORS (Cross-Origin Resource Sharing) is a browser mechanism that blocks a page from calling a different domain unless that domain explicitly allows it."
- **Match the answer's format to the query's implied intent.** [Editorial policy] A "how do I" query wants steps; a "what is" query wants a definition; a "X vs Y" query wants a comparison. Google's guidance does not mandate one specific format, only that the query be answered directly.
- **Do not pad the answer to reach a length target.** [Google Search Central, Featured snippets] Since Google names no minimum, a shorter, precise answer is preferable to a longer one built to hit a word count.
  - Incorrect: padding a two-sentence answer to 60 words with restated context.
  - Correct: leaving the answer at its natural length and adding detail only after it.

## 2. Original value

- **Ground "adds value" in Google's own self-assessment questions, not "information gain."** "Information gain" is a patent-level concept, not a documented Search Central term. Use Google's helpful-content questions instead: does the content provide original information, reporting, research, or analysis, and does it provide substantial value compared to other ranked pages? [Google Search Central, Creating helpful content]
  - Correct: "Before publishing, ask: does this page say something the top-ranking pages don't, such as a constraint, a failure mode, or a 'don't do this when X', or is it a rewrite of what's already there?"
- **Name the specific edge the page has, not a vague claim of expertise.** [Editorial policy] "Written by an expert" is not itself original information; a documented constraint, benchmark, or failure mode is.

## 3. Headings

- **Write descriptive, specific headings; do not cite a Google ban list.** Google's documented requirement is that titles and headings be descriptive and not vague or exaggerated; it does not publish a blocklist of words like "Introduction" or "Overview." Treat avoiding generic headings as editorial practice for scannability, not a named Google prohibition. [Google Search Central, Creating helpful content; Title links]
  - Incorrect: "## Introduction"
  - Correct: "## When to use NestJS over Express"
- **The same applies to the page title.** Google's own bad-title example is "Home," not a specific banned word list; write a descriptive `<title>` that identifies the page's actual content. [Google Search Central, Title and link]
  - Incorrect: "Home" / Correct: "Redis TTL and eviction policies explained"

## 4. Natural language versus keyword stuffing

- **Use a naturalness test, not a density number.** Google's spam policy defines keyword stuffing qualitatively, as repetition that "sounds unnatural," with no percentage or per-word-count threshold given anywhere in the policy. If a sentence reads better with a synonym or without the exact-match term, rewrite it. [Google Search Central, Spam policies]
  - Incorrect: "Cut the keyword if it appears twice in 150 words."
  - Correct: "If the sentence reads more naturally with a synonym or without the exact-match keyword, rewrite it; the test is whether the repetition sounds unnatural, not a per-150-word counter."
- **Vary phrasing with real domain terms, not filler synonyms.** [Editorial policy] Reach for the terms a subject-matter expert would actually use (for a database migration: schema, downtime, replication, rollback, index) instead of repeating the exact-match keyword.
  - Incorrect: repeating "database migration" verbatim in every sentence of the section.
  - Correct: "the migration," "the cutover," "the schema change," and the exact term used only where precision requires it.

## 5. FAQ blocks

- **Treat FAQs as a UX aid, not a rich-result tactic.** Google's FAQ rich result is no longer shown in search results for ordinary sites. Add an FAQ only to resolve genuine implementation friction, in 2 to 3 sentences, with no expectation of a rich result. [Google Search Central, FAQPage structured data]
  - Correct: "Add an FAQ only to resolve a real setup friction (for example, 'Why does `npm install` fail on Node 22?'), 2 to 3 sentences maximum, no expectation of a rich result."
- **Do not add cross-links purely to inflate internal linking.** Google's spam policy names schemes built primarily to manipulate linking and ranking signals as link spam. [Google Search Central, Spam policies]
- **Do not treat FAQ schema as a growth lever.** [Google Search Central, FAQPage structured data] The rich result exists today only for a narrow set of government and health sites; for everything else, no rich result appears regardless of markup quality.

## 6. E-E-A-T and AI-generated content

- **State E-E-A-T accurately: it is not a ranking factor.** E-E-A-T is Google's quality framework, used by human search-quality raters and echoed by some ranking signals, but Google states plainly that "E-E-A-T itself isn't a specific ranking factor." [Google Search Central, Creating helpful content]
  - Incorrect: "This structure boosts your E-E-A-T ranking."
  - Correct: "This structure supports E-E-A-T (real tested steps, dated examples, a named author), but E-E-A-T itself isn't a Google ranking factor; it's the lens raters and some signals use to recognize genuinely helpful content."
- **Do not claim Google penalizes AI-written content.** Google's guidance judges content by quality regardless of production method; the actual violation is unhelpful mass production at scale, which its spam policy calls "scaled content abuse." [Google Search Central, Using generative AI content; Spam policies]
  - Correct: "This skill doesn't ban AI-assisted drafting; Google's docs say production method doesn't matter. It bans shipping AI output at scale without adding value, which is what Google's policy calls 'scaled content abuse.'"
- **Keep the two ideas distinct.** [Editorial policy] E-E-A-T is about signaling trustworthy quality; the AI-content policy is about scale and value. Do not conflate "written by AI" with "low E-E-A-T": either can be true independently of the other.
  - Incorrect: "AI-assisted content automatically has weak E-E-A-T."
  - Correct: "AI-assisted content that adds original analysis and a named, accountable author can satisfy E-E-A-T just as human-written content can."

## Sources

- Google Search Central, Featured snippets: https://developers.google.com/search/docs/appearance/featured-snippets
- Google Search Central, Creating helpful content: https://developers.google.com/search/docs/fundamentals/creating-helpful-content
- Google Search Central, Spam policies: https://developers.google.com/search/docs/essentials/spam-policies
- Google Search Central, Title and link: https://developers.google.com/search/docs/appearance/title-link
- Google Search Central, FAQPage structured data: https://developers.google.com/search/docs/appearance/structured-data/faqpage
- Google Search Central, Using generative AI content: https://developers.google.com/search/docs/fundamentals/using-gen-ai-content
