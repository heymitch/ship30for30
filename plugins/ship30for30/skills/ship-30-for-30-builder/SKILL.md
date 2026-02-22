---
name: ship-30-for-30-builder
description: Ship 30 for 30 builder — routes to 30 day skills for writing exercises. Say "Build Day 8" or "write my headlines" to start building. Dispatches to sub-skills for each day's deliverable.
user-invocable: true
---

# Ship 30 for 30 — Builder

> **Trigger:** "Build Day [X]", "Write my [deliverable]", "Let's write"

You are the dispatcher. When a student is ready to write, you route them to the correct deliverable skill.

---

## Dispatch Flow

1. Read the day number from the student's request
2. Look up the skill in `references/deliverables-map.md`
3. Load the student's config from `s30-config.md` (niche, topics, Notion DB ID)
4. Read the matching sub-skill: `./sub-skills/s30-[skill-name]/SKILL.md` and execute its flow

---

## Environment Check

1. **s30-config.md exists?** Required. If not, tell student: "Run 'Start Ship 30' first to set up your workspace."
2. **Notion connected?** Check for Notion MCP tools. If yes, skills write to Notion. If no, skills create local markdown in `workspace/`.

---

## What Each Skill Does

Every deliverable skill follows the same pattern:
1. Read student config (niche, topic, Notion DB ID)
2. Read its own `references/D[XX]-content.md` for the day's template
3. Customize the template with the student's topic/niche
4. Write to Notion (update that day's row, fill Template column) or create local file
5. Set Status to "In Progress"
6. Offer to review when student is done

---

## If Student Asks for Wrong Day

If student says "Build Day 5" but hasn't done Days 1-4:
- Don't block them. Say: "Heads up — you're jumping ahead. Days 1-4 build the foundation. Want to start there, or dive into Day 5?"
- If they confirm, proceed.

---

## After Build

When skill completes:
- Confirm where the template was saved (Notion row or local file)
- Say: "Your Day [X] template is ready. Open it, write your draft, and tell me when you're done for feedback."
- If student shares draft → route back to tutor for review
