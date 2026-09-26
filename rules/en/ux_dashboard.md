# UX writing rules for dashboards and internal tools: English

## 1. Error messages

- **Three-part structure.** State what happened, why it happened, and what to do next. [Editorial policy]
  - Incorrect: "Something went wrong."
  - Correct: "Payment failed. Your card was declined. Update your card or try another payment method."
- **Name the resource, give a next step.** Identify the specific resource or action affected and tell the user how to proceed. [NN/g]
  - Incorrect: "An error occurred."
  - Correct: "Couldn't delete project. It has active deployments. Pause the deployments first."
- **No apologies by default.** Skip "sorry" and "please" in error copy. [Atlassian, Material] Reserve a brief apology for a severe failure the product itself caused, such as data loss; NN/g does not ban apologies outright. [Microsoft, NN/g]
  - Incorrect: "Sorry! Something went wrong while saving."
  - Correct: "Failed to save changes: gateway timeout (504). Check your connection and retry."

## 2. Buttons and destructive confirmations

- **Verb-led, specific labels.** Every primary button names the action and, when it adds clarity, the object. [Polaris, Material]
  - Incorrect: "Submit"
  - Correct: "Save changes"
- **Avoid vague confirmations.** Don't use "OK", "Yes", "No", or a bare "Submit" for actions with real consequences. [Polaris, Material] Bare "OK" is fine only in purely informational alerts with no decision to make; "Continue" is not banned, since Polaris lists it as a good, specific verb when it clearly names the result. [Apple HIG, Polaris]
  - Incorrect: "Delete this project?" -> [ OK ]
  - Correct: "Delete this project?" -> [ Delete project ]
- **Destructive confirmations name the action.** The confirming button uses a verb that describes the destructive result, not a generic "Yes." [Editorial policy, aligned with Apple HIG and Polaris]
  - Incorrect: "Delete user 'mauricio'?" -> [ Yes ] [ No ]
  - Correct: "Delete user 'mauricio'?" -> [ Cancel ] [ Delete user ]

## 3. Empty states

- **Explain the cause, offer a way forward.** State why the view is empty and give a direct path to the next action. [NN/g]
  - Incorrect: "No data found."
  - Correct: "No orders yet. Orders will appear here once a customer checks out. [Share your store link]"
- **The action can sit beside the message, not inside it.** A non-interactive empty state doesn't need its call to action embedded in the tagline; a separate button or link works just as well. [Material]
  - Incorrect: "No records. Tap here to add one." (the tagline reads like a control but isn't tappable)
  - Correct: "No records for the selected date range." plus a separate [Adjust filters] button

## 4. Table headers and status badges

- **Short, article-free column headers.** Keep table headers to 1-3 words and drop articles. [Editorial policy]
  - Incorrect: "The service status"
  - Correct: "Status"
- **Badges: short and past tense.** Keep status labels to 1-2 words, in past tense, never a full sentence. [Polaris]
  - Incorrect: "The refund was processed"
  - Correct: "Refunded"

## 5. Tooltips and helper text

- **Add information the control doesn't already show.** Use tooltips for shortcuts, constraints, or format hints, never for essential instructions. [Polaris]
  - Incorrect: Button "Refresh" -> tooltip "Refreshes the table." (repeats the label; NN/g shows this exact pattern as a "don't" example)
  - Correct: Button "Refresh" -> tooltip "Syncs with the latest commit."
- **Never leave required information only in a tooltip.** If the user needs it to finish the task, put it in visible copy instead. [Polaris]
  - Incorrect: The required field format shows only on hover
  - Correct: Helper text below the field: "Format: YYYY-MM-DD"

## 6. Grammar conventions for UI copy

- **Imperative, verb-first labels.** Write actions as direct commands: verb plus object. [Microsoft, Material]
  - Incorrect: "Access key entry"
  - Correct: "Enter access key"
- **No "please" by default.** Drop "please" from labels and instructions. [Microsoft, Material] Keep it only when the ask is inconvenient for the user or the product is at fault.
  - Incorrect: "Please enter your access key"
  - Correct: "Enter access key" (exception: "Please restart the app to apply changes")
- **Sentence case.** Capitalize only the first word and proper nouns in labels, buttons, and headings. [Material, Microsoft, Polaris] This yields to the platform's design system: Apple HIG uses title case for buttons, so follow title case on iOS and macOS instead. [Apple HIG]
  - Incorrect: "Create Api Key" / "CREATE API KEY"
  - Correct: "Create API key" (web); "Create API Key" (Apple platforms, title case)

## Sources
- Nielsen Norman Group, Error Message Guidelines: https://www.nngroup.com/articles/error-message-guidelines/
- Nielsen Norman Group, Empty State Interface Design: https://www.nngroup.com/articles/empty-state-interface-design/
- Nielsen Norman Group, Tooltip Guidelines: https://www.nngroup.com/articles/tooltip-guidelines/
- Material Design 3, Word choice: https://m3.material.io/foundations/content-design/global-writing/word-choice
- Material Design 3, Dialogs guidelines: https://m3.material.io/components/dialogs/guidelines
- Material Design 3, Buttons guidelines: https://m3.material.io/components/buttons/guidelines
- Material Design 2, Empty states: https://m2.material.io/design/communication/empty-states.html
- Atlassian Design System, Writing error messages: https://atlassian.design/content/designing-messages/writing-error-messages
- Microsoft Style Guide, "please": https://learn.microsoft.com/en-us/style-guide/a-z-word-list-term-collections/p/please
- Microsoft Style Guide, "sorry": https://learn.microsoft.com/en-us/style-guide/a-z-word-list-term-collections/s/sorry
- Microsoft Style Guide, Capitalization: https://learn.microsoft.com/en-us/style-guide/capitalization
- Apple Human Interface Guidelines, Alerts: https://developer.apple.com/design/human-interface-guidelines/alerts
- Apple Human Interface Guidelines, Buttons: https://developer.apple.com/design/human-interface-guidelines/buttons
- Apple Human Interface Guidelines, Writing: https://developer.apple.com/design/human-interface-guidelines/writing
- Shopify Polaris, Modal overlay: https://shopify.dev/docs/api/app-home/polaris-web-components/overlays/modal
- Shopify Polaris, Badge: https://shopify.dev/docs/api/app-home/web-components/feedback-and-status-indicators/badge
- Shopify Polaris, Tooltip: https://shopify.dev/docs/api/app-home/polaris-web-components/overlays/tooltip
