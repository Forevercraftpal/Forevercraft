# ============================================================
# Campfire Healing — Tick (every 7 seconds / 140t)
# Validates markers, scans for new campfires, heals nearby players
# ============================================================

schedule function evercraft:campfire_heal/tick 140t
execute unless entity @a run return 0

# Validate existing markers — remove if campfire block is gone
execute as @e[type=marker,tag=ec.cf_heal] at @s unless block ~ ~ ~ #minecraft:campfires run kill @s

# Per-player: scan for nearby campfires + heal if in range
execute as @a at @s run function evercraft:campfire_heal/check_player
