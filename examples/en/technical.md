# Technical examples: English

## Example 1: Architecture documentation

### Before
> In today's digital landscape, delving into event-driven architecture is paramount for fostering resilient applications. Microservices are a testament to engineering excellence. Conducting an evaluation of message brokers plays a critical role, since Kafka guarantees at-least-once delivery while RabbitMQ adds routing flexibility. In conclusion, leveraging these principles will unlock unprecedented scalability.

### After
> Event-driven architecture decouples services and improves resilience. When evaluating message brokers, Kafka guarantees at-least-once delivery while RabbitMQ adds routing flexibility.

### What changed
- **Ban documented AI-vocabulary words**: removed "delving," "paramount," "fostering," "testament," and "leveraging," all attested AI-vocabulary tells.
- **Cut stock conclusions**: dropped "In conclusion" and ended on the concrete broker comparison instead.
- **Convert nominalizations to direct verbs**: replaced "conducting an evaluation of message brokers plays a critical role" with "when evaluating message brokers."
- **Cut hyperbolic adjectives; give the metric**: removed "unlock unprecedented scalability," an unsupported claim with no metric behind it.

---

## Example 2: API warning and interface header

### Before
> IMPORTANT WARNING: PLEASE MAKE SURE YOU NEVER EXPOSE YOUR PRIVATE API KEYS IN PUBLIC REPOSITORIES OR CLIENT-SIDE BUNDLES UNDER ANY CIRCUMSTANCES.
> It is worth noting that storing keys in an environment secret manager is crucial. Discover our security endpoints below:
>
> [GENERATE YOUR SECURE PRODUCTION TOKEN NOW]

### After
> **Security notice:** Never expose private API keys in public repositories or client-side bundles. Store keys in an environment secret manager.
>
> Authentication endpoints
> [Generate production token]

### What changed
- **No ALL CAPS for headings, warnings, or buttons**: replaced the shouted warning and button with sentence case throughout.
- **Use semantic formatting instead of ALL CAPS labels**: turned the warning into a labeled callout instead of sustained capitals.
- **Ban documented AI-vocabulary words**: removed "crucial."
- **Cut dated disclaimer filler**: removed "It is worth noting that."
- **Name the action or concept, not a slogan**: replaced "[GENERATE YOUR SECURE PRODUCTION TOKEN NOW]" with "[Generate production token]."

---

## Example 3: Pull request description

### Before
> Let's dive into the changes implemented in this PR. It's not just a simple refactor, it's a pivotal improvement to our caching layer — showcasing our dedication to performance. The problem: Redis memory usage had spiked to 4.2 GB under peak load. To fix it, we add TTL expiration to transient cache keys and compress payload objects before serialization, cutting memory footprint by roughly 35%. Honestly, that's the real win here.

### After
> This pull request adds TTL expiration to transient cache keys and compresses payload objects before serialization. Redis memory usage had spiked to 4.2 GB under peak load; the change cuts memory footprint by roughly 35%.

### What changed
- **Cut narrative meta-talk from PR bodies**: removed "Let's dive into the changes implemented in this PR" and led with the deliverable instead.
- **False contrasts**: dropped the "it's not just X, it's Y" construction and stated the change directly.
- **Ban documented AI-vocabulary words**: removed "pivotal" and "showcasing."
- **Dramatic one-line closers**: cut "Honestly, that's the real win here" and ended on the metric instead.
