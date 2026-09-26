# Formal documents examples: English

## Example 1: Thesis paragraph

### Before
> In this paper, the author will delve into why consensus protocols matter. When you look at distributed systems, you quickly realize that consensus algorithms are everywhere. Why do modern databases rely so heavily on consensus protocols like Raft?
> The answer lies in the need for consistency across replicas. As we all know, achieving consensus in an asynchronous network is famously difficult, and everyone agrees that Raft solved this problem better than any algorithm before it.

### After
> This paper examines why consensus protocols matter for distributed systems. Consensus algorithms are central to distributed systems, and modern databases rely on protocols like Raft to maintain consistency across replicas.
> Achieving consensus in an asynchronous network is difficult.

### What changed
- **Cut self-narration**: replaced "In this paper, the author will delve into why consensus protocols matter" with "This paper examines why consensus protocols matter."
- **Ban documented AI-vocabulary words**: removed "delve."
- **Remove the conversational "you," but do not force third person**: replaced "When you look at... you quickly realize" with a direct statement about the field.
- **Rhetorical questions**: replaced "Why do modern databases rely so heavily on consensus protocols like Raft?" with a direct statement.
- **"As we all know" and similar shared-knowledge framing**: cut the phrase and stated the difficulty directly.
- **Cut empty superlatives; state the evidence**: dropped "famously," an unsupported intensifier, and kept the plain claim.
- **No vague appeals to authority**: removed "everyone agrees that Raft solved this problem better than any algorithm before it," since no citation supports it.

---

## Example 2: Results paragraph

### Before
> The team achieved an incredible improvement in query latency — a truly amazing result — that exceeded all expectations.
> Experts say that index-based optimization is the key to database performance.
> The results speak for themselves: latency dropped from 480 ms to 120 ms. In summary, this validates our approach.

### After
> Query latency dropped from 480 ms to 120 ms after the team applied index-based optimization.

### What changed
- **Cut empty superlatives; state the evidence**: removed "incredible," "truly amazing," and "exceeded all expectations," and led with the metric instead.
- **No vague appeals to authority**: removed "Experts say that index-based optimization is the key to database performance," since no citation backs the generalization.
- **Inline colon: target repetition, not the construction**: cut "the results speak for themselves:" and folded the metric directly into the sentence.
- **Cap em-dash use; do not ban it**: removed the em-dash pair used for rhetorical emphasis.
- **Cut hyperbolic adjectives; give the metric**: gave the exact latency numbers instead of relying on hype adjectives.
- **Cut stock conclusions**: removed "In summary, this validates our approach" and ended on the metric instead.
