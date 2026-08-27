# Chat Shortcuts

## `/expl`

**Meaning**

Explain how to use this/these, then provide a complete example that demonstrates all discussed concepts in a single program at the end.

**Response Format**

1. Explain each concept or feature.
2. Show small, focused examples when needed.
3. End with one complete program combining everything explained.
4. Mention important pitfalls or best practices only if relevant.

**Example**

```text
/expl classes, inheritance, abstract classes
```

Expected structure:

- Classes
- Inheritance
- Abstract classes
- Complete program using all of them

---

## `/eli5`

**Meaning**

Explain the topic as if teaching a 5-year-old (ELI5). Use simple language, relatable analogies, and avoid technical jargon unless absolutely necessary.

**Response Format**

1. Explain the idea using everyday objects or situations.
2. Keep sentences short and simple.
3. Introduce technical terms only after the intuition is clear.
4. Optionally end with a one- or two-sentence technical summary.

**Example**

```text
/eli5 recursion
```

Expected structure:

- Simple analogy
- Step-by-step intuitive explanation
- (Optional) Short technical summary

---

## `/tl;dr`

**Meaning**

Summarize the response into its essential points (Too Long; Didn't Read).

**Response Format**

1. Keep it concise.
2. Include only the key takeaways.
3. Omit detailed explanations and examples unless necessary.
4. Use bullet points when multiple points exist.

**Example**

```text
/tl;dr how does the JavaScript event loop work?
```

Expected structure:

**TL;DR**

- JavaScript runs on a single thread.
- Long tasks are delegated to Web APIs or the runtime.
- Completed tasks are queued.
- The event loop executes queued tasks when the call stack is empty.

## `/note`

**Meaning**

Please note the following points, changes, preferences, or instructions.

**Response Behavior**

- Treat the provided information as important context.
- Apply it to future responses when relevant.
- Do not unnecessarily repeat the noted points.

**Example**

```text
/note I prefer JavaScript examples and concise explanations.
```

## `/bro`

**Meaning**

Restate your previous response in plain, simple human language.

**Response Format**

1. Remove unnecessary jargon.
2. Use clear and natural language.
3. Make the explanation simpler and more concise.
4. Preserve the original meaning.

**Example**

```text
/bro
```
