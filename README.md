# mc-custom-op-rain

**Minecraft But It Rains OP Items** — a Minecraft Java Edition **1.18.1** datapack for singleplayer survival.

Every **5 minutes** a rain of items falls around every active player. The quality of those items grows as you progress through five stages, culminating in a netherite-tier downpour during the Ender Dragon fight.

---

## Installation

1. Copy this folder into `.minecraft/saves/<world>/datapacks/`.
2. Open (or reload) the world. The pack initialises automatically.
3. Verify with `/datapack list` — you should see `[file/mc-custom-op-rain]`.

---

## Stage Progression

| Stage | Trigger | Loot theme |
|-------|---------|------------|
| 1 | World start | Stone tools, food, torch, shield, arrows |
| 2 | Craft any **Iron Pickaxe** | Iron gear, golden apple, obsidian (rare) |
| 3 | Enter the **Nether** | Diamond gear, enchanted books, blaze rods |
| 4 | Craft **12 Eye of Ender** (cumulative) | Prot-III diamond armor, Sharpness IV sword, elytra (rare) |
| 5 | Enter **The End** | Sharpness V netherite sword, Prot-IV netherite armor, enchanted golden apple (rare) |

Stages **only go up** — re-crafting an earlier item never lowers your stage.

---

## Rain Mechanic

* Fixed interval: **5 minutes (300 s)**, reset after each wave.
* Countdown displayed on the action-bar: `Stage: X    Rain in: Xm Ys` (updates every second).
* Items spawn **Y+15 above** the player at random XZ offsets within ±10 blocks and fall naturally.
* Active in **Overworld, Nether, and End**.
* Number of drops per wave: Stage 1 → 6 · Stage 2 → 8 · Stage 3 → 10 · Stage 4 → 14 · Stage 5 → 18.
* A thunder sound plays when rain starts.

---

## End Condition

When the **Ender Dragon** is slain the rain system **permanently stops**:

* Action-bar replaced with `The Storm Has Ended.`
* Timer freezes.
* Dragon respawn does **not** re-enable rain.

---

## Scoreboard Objectives

| Objective | Type | Purpose |
|-----------|------|---------|
| `stage` | dummy | Per-player current stage (1–5) |
| `rain_timer` | dummy | `$timer` = countdown (s); `$tick` = sub-second counter |
| `dragon_dead` | dummy | `$global` = 0 alive / 1 dead |
| `disp` | dummy | Scratch space for display math |
| `ticks` | dummy | Tick counter for 1-second interval |
| `iron_pickaxe_craft` | `minecraft.crafted:minecraft.iron_pickaxe` | Stage 2 trigger |
| `ender_eye_craft` | `minecraft.crafted:minecraft.ender_eye` | Stage 4 trigger (≥ 12) |

---

## File Structure

```
pack.mcmeta
data/
  minecraft/tags/functions/
    load.json               ← calls op_rain:setup
    tick.json               ← calls op_rain:tick
  op_rain/
    advancements/
      dragon_killed.json    ← fires op_rain:on_dragon_killed
    functions/
      setup.mcfunction      ← scoreboard init (on load)
      tick.mcfunction       ← runs every tick
      second.mcfunction     ← dispatches per-second logic
      active_second.mcfunction
      init_player.mcfunction
      check_stages.mcfunction
      display.mcfunction
      rain_trigger.mcfunction
      stage_up_2..5.mcfunction
      on_dragon_killed.mcfunction
      rain/
        stage_1..5.mcfunction
    loot_tables/
      stage_1..5.json
```