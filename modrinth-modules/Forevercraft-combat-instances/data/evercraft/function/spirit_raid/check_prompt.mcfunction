# Spirit Raid Unlock — Poll Prompt Responses
# Called from dungeon/tick_active while sr.prompted tag is active
# Multi-player safe: per-player timers, any-descend-all-enter, individual decline

# === DEATH DURING PROMPT — force dungeon fail ===
execute if entity @a[tag=dg.player,scores={dg.deaths=1..}] run tag @a remove sr.prompted
execute if entity @a[tag=dg.player,scores={dg.deaths=1..}] run function evercraft:dungeon/fail_death
execute if entity @a[tag=dg.player,scores={dg.deaths=1..}] run return 0

# === DISCONNECT DURING PROMPT — all players left ===
execute unless entity @a[tag=dg.player] run tag @a remove sr.prompted
execute unless entity @a[tag=dg.player] run function evercraft:dungeon/fail_disconnect
execute unless entity @a[tag=dg.player] run return 0

# === DECREMENT PER-PLAYER TIMERS ===
scoreboard players remove @a[tag=sr.prompted,scores={ec.sr_timer=1..}] ec.sr_timer 1

# === ANY PLAYER CHOSE DESCEND → EVERYONE ENTERS RAID ===
# First descend click wins — all players enter regardless of their individual choice
execute if entity @a[tag=sr.prompted,scores={ec.sr_prompt=1}] run function evercraft:spirit_raid/confirm_descend
execute unless entity @a[tag=sr.prompted] run return 0

# === INDIVIDUAL LEAVE RESPONSES — remove that player's prompt only ===
execute as @a[tag=sr.prompted,scores={ec.sr_prompt=2}] run tag @s remove sr.prompted
scoreboard players set @a[scores={ec.sr_prompt=2}] ec.sr_prompt 0

# === INDIVIDUAL TIMEOUTS — remove timed-out player's prompt ===
execute as @a[tag=sr.prompted,scores={ec.sr_timer=..0}] run tag @s remove sr.prompted

# === ALL PROMPTS RESOLVED (everyone left or timed out) → CLEANUP ===
execute unless entity @a[tag=sr.prompted] run function evercraft:dungeon/cleanup
