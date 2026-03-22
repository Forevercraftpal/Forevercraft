# === CRAFTFOREVER CODEX: Disconnect recovery ===
# If player had codex open when they disconnected, clean up orphaned entities
# close uses distance=..15 which may miss anchors if player respawned far away — global fallback after
execute as @a[tag=!ec.joined,tag=CF.InCodex] at @s run function evercraft:craftforever/codex/hub/close
# Fallback: kill orphaned entities globally if close couldn't reach the anchor
execute as @a[tag=!ec.joined,tag=CF.InCodex] run function evercraft:craftforever/codex/hub/close_orphaned


# === ARTISAN FORGE: Disconnect recovery ===
execute as @a[tag=!ec.joined,tag=CF.InMenu] run function evercraft:craftforever/forging/gui/close


# === RESONANCE STRIKE: Disconnect recovery ===
execute as @a[tag=!ec.joined,scores={ec.cf_reso=1}] run function evercraft:craftforever/nodes/resonance/cleanup


# === TRADE TRIALS: Crash/disconnect recovery ===
execute as @a[tag=!ec.joined,tag=ec.tt_player] run function evercraft:craftforever/trials/crash_recovery


# === TRADE TRIALS: Intercept death before tomb ===
execute if score #tt_active ec.var matches 1 as @a[tag=ec.tt_player,scores={ec.tomb_death=1..}] run function evercraft:craftforever/trials/on_death
execute if score #tt_active ec.var matches 1 run scoreboard players set @a[tag=ec.tt_player] ec.tomb_death 0


# === BIOME NODE SYSTEM (CRAFTFOREVER) ===
# Per-tick: detect biome node right-clicks
# OPT: Existence gate — skip entity scan when no biome nodes exist
execute if entity @e[type=interaction,tag=ec.cf_node_click,limit=1] as @e[type=interaction,tag=ec.cf_node_click] if data entity @s interaction at @s run function evercraft:craftforever/nodes/on_click
# Per-tick: progress bar for active biome mining (only when players are mining)
execute as @a[scores={ec.cf_mining=1}] at @s run function evercraft:craftforever/nodes/progress_step
# Per-tick: Resonance Strike minigame (sweeping cursor)
execute as @a[scores={ec.cf_reso=1}] at @s run function evercraft:craftforever/nodes/resonance/tick
# Handle /trigger ec.cf_codex (give codex item for testing)
execute as @a[scores={ec.cf_codex=1..}] run loot give @s loot evercraft:craftforever/codex_item
scoreboard players enable @a[scores={ec.cf_codex=1..}] ec.cf_codex
scoreboard players set @a[scores={ec.cf_codex=1..}] ec.cf_codex 0


# === CRAFTFOREVER CODEX GUI ===
# Delayed item restore (consume_item fires before removal — restore next tick)
# Process using_item flag (open/toggle codex) — only if NOT already in codex
# If already in menu, right-click re-consume just refreshes cooldown to flush stale interaction data
execute as @a[scores={ec.cf_codex_use=1..},tag=!CF.InCodex] at @s run function evercraft:craftforever/codex/on_activate
execute as @a[scores={ec.cf_codex_use=1..},tag=CF.InCodex] unless score @s ec.cf_codex_cd matches 1.. run scoreboard players set @s ec.cf_codex_cd 1
scoreboard players set @a[scores={ec.cf_codex_use=1..}] ec.cf_codex_use 0
# Per-tick: codex GUI tick for players with codex open
execute as @a[tag=CF.InCodex] at @s run function evercraft:craftforever/codex/hub/tick


# === SPIRIT TOOLS (GOD-TIER T10 Trade Trial rewards) ===
# Detection: check untagged players for spirit tool in mainhand
execute as @a[tag=!ec.st_held] run function evercraft:craftforever/spirit_tools/detect
# Tick: passives, effects, sneak-mastery detection (existence-gated)
execute if entity @a[tag=ec.st_held,limit=1] run function evercraft:craftforever/spirit_tools/tick
# Deactivation: remove tag if no longer holding spirit tool
execute as @a[tag=ec.st_held] unless predicate evercraft:spirit_tools/holding_any run function evercraft:craftforever/spirit_tools/deactivate
# Artifact tool class detection: set ec.caff_class for players holding artifact tools (not spirit tools)
execute as @a[tag=!ec.st_held] run function evercraft:craft_affinity/detect_artifact_tool


# === GRAND FORGE (5-phase craft gauntlet — existence-gated) ===
execute as @a[scores={ec.gf_active=1}] at @s run function evercraft:craftforever/grand_forge/tick


# === TRADE TRIALS SYSTEM ===
# Trial Anvil interactions, break detection, ambient particles (existence-gated inside)
function evercraft:craftforever/tick
# Per-tick: timer, score tracking, bossbar (only when active — zero overhead otherwise)
execute if score #tt_active ec.var matches 1 run function evercraft:craftforever/trials/tick
# Trial Anvil GUI tick (click detection for players with menu open)
execute as @a[tag=TT.InMenu] at @s run function evercraft:craftforever/trial_anvil/gui/tick
# Emergency exit trigger
execute as @a[tag=ec.tt_player,scores={ec.tt_exit=1..}] run function evercraft:craftforever/trials/emergency_exit
scoreboard players enable @a[scores={ec.tt_exit=1..}] ec.tt_exit
scoreboard players set @a[scores={ec.tt_exit=1..}] ec.tt_exit 0


# === ARTISAN FORGE GUI ===
execute as @a[tag=CF.InMenu] at @s run function evercraft:craftforever/forging/gui/tick


# === ARTISAN INFO TRIGGER ===
execute as @a[scores={ec.cf_info=1..}] run function evercraft:craftforever/artisan/breakdown
scoreboard players enable @a[scores={ec.cf_info=1..}] ec.cf_info
scoreboard players set @a[scores={ec.cf_info=1..}] ec.cf_info 0
