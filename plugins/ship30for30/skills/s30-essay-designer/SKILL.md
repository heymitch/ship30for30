---
name: s30-essay-designer
description: "Essay Designer — generate screenshot-ready HTML cards from your essays"
---

# Essay Designer

> **Trigger:** "Design my essay", "Screenshot Day X", or "Make my essay visual"

## What You'll Build

A screenshot-ready HTML file of your essay, branded with your visual identity.

---

## Build Flow

1. **Read brand config** — Load `s30-design-config.md` for colors, fonts, handle
   - If missing: "Run 'Set up my brand' first to configure your visual identity."

2. **Get essay content** — One of:
   - Student pastes essay text directly
   - Read from Notion (Day X row, "My Draft" column)
   - Read from `workspace/day-XX-template.md`

3. **Choose format** — Ask or detect:
   - **Card** (default) — Typeshare-style single image, 1080x1350px
   - **Wide** — Twitter/LinkedIn header, 1200x675px
   - **Thread** — Individual tweet cards, 1080x1080px each

4. **Parse essay structure** — Detect:
   - Headline (first line or # heading)
   - Subheads (## or bold lines)
   - Single-sentence paragraphs (isolate for 1/3/1 rhythm)
   - Body paragraphs
   - Closing line

5. **Apply template** — Read from `references/template-[format].html`
   - Replace {{HEADLINE}}, {{BODY_HTML}}, {{HANDLE}}, {{DAY_NUMBER}}
   - Replace {{PRIMARY}}, {{BACKGROUND}}, {{TEXT}}, {{FONT_IMPORT}}, etc.
   - Format body with Ship30 rhythm rules:
     - Single sentences get `margin: 1.5em 0` (isolated)
     - 2-3 sentence blocks grouped with `margin: 0.5em 0`
     - Subheads get `margin-top: 2em`, bold, accent color

6. **Write HTML** — Save to `workspace/screenshots/day-XX-[format].html`

7. **Confirm** — "Your essay card is ready. Open it in your browser and screenshot."

---

## Review Criteria

- Headline is prominent and readable
- Body text has breathing room (1/3/1 rhythm visible)
- Brand colors applied consistently
- Footer shows handle + day badge
- Fits target dimensions when screenshotted

---

## On Completion

Offer: "Want another format? Say 'thread' or 'wide' for different dimensions."
