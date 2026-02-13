---
name: s30-SKILLNAME
description: "Ship 30 Day XX: TITLE — DELIVERABLE_DESCRIPTION"
---

# Day XX: TITLE

> **Trigger:** "Build Day XX" or "DELIVERABLE_DESCRIPTION"

## What You'll Build

DELIVERABLE_DESCRIPTION in one sentence.

---

## Build Flow

1. **Read config** — Load `s30-config.md` for student's niche, topics, and Notion DB ID
2. **Read template** — Load `references/DXX-content.md` for this day's writing template
3. **Customize** — Fill template with student's topic/niche from config
4. **Deliver to Notion** (if connected):
   - Find Day XX row in student's Notion database
   - Fill the **Template** column with customized template
   - Set **Status** to "In Progress"
5. **Fallback** (no Notion): Save to `workspace/day-XX-template.md`
6. **Confirm** — "Your Day XX template is ready in [Notion/local file]. Write your draft, then tell me when you're done for feedback."

---

## Review Criteria

When student shares their draft, check:
- DAY_SPECIFIC_CRITERIA_1
- DAY_SPECIFIC_CRITERIA_2
- DAY_SPECIFIC_CRITERIA_3
- Word count (target: ~250, max 300)
- One clear idea, no fluff

Give 2-3 specific, actionable notes. Don't rewrite for them.

---

## On Completion

Update Notion Status to "Shipped" (or note in config). Ask if they want to move to the next day.
