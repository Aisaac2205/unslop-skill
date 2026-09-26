# UX dashboard examples: English

## Example 1: Error message

### Before
> Oops! Something went wrong. Sorry about that! Your file (32 MB) could not be uploaded because uploads over 25 MB are not supported yet. Please try again later or contact support if the problem keeps happening.

### After
> Couldn't upload file. The file is 32 MB, and the limit is 25 MB. Compress the file or upload a smaller version.

### What changed
- **Three-part structure**: states what happened (upload failed), why (32 MB exceeds the 25 MB limit), and what to do next (compress or shrink the file).
- **Name the resource, give a next step**: names the file size and limit instead of a generic "something went wrong."
- **No apologies by default**: dropped "Sorry about that."
- **No "please" by default**: dropped "please" from the retry instruction.

---

## Example 2: Destructive confirmation dialog

### Before
> WARNING: THIS ACTION CANNOT BE UNDONE! Are you sure you want to delete the 'production-db-backup' project? Please confirm.
> [ No ] [ Yes ]

### After
> **Warning:** This action can't be undone.
> Delete the 'production-db-backup' project?
> [ Cancel ] [ Delete project ]

### What changed
- **No ALL CAPS for headings, warnings, or buttons**: replaced the shouted warning with a sentence-case callout.
- **No "please" by default**: dropped "Please confirm."
- **Avoid vague confirmations**: replaced the bare "No" and "Yes" buttons, which don't name the consequence.
- **Destructive confirmations name the action**: labeled the buttons "Cancel" and "Delete project" instead of "No" and "Yes."

---

## Example 3: Empty state and tooltip

### Before
> No data found for Jan 1 to Jan 31.
> Tap here to adjust your filters.
>
> [Refresh] tooltip: "Refreshes the table."

### After
> No shipments for Jan 1 to Jan 31.
> [Adjust filters]
>
> [Refresh] tooltip: "Syncs with the latest carrier update."

### What changed
- **Explain the cause, offer a way forward**: named the actual cause, no shipments for the date range, instead of "No data found."
- **The action can sit beside the message, not inside it**: moved "adjust your filters" into a separate button instead of embedding it in the tagline as if it were tappable text.
- **Add information the control doesn't already show**: replaced "Refreshes the table," which just repeats the label, with what the sync actually does.
