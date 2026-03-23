# ============================================================
# Campfire Stories — Try Gather
# Run as/at a player near a campfire. Increment timer, check for group.
# ============================================================

# Already tagged this check cycle — skip
execute if entity @s[tag=ec.cf_gathering] run return 0

# Tag and increment near-campfire timer
tag @s add ec.cf_gathering
scoreboard players add @s ec.cf_near 1

# Need 3+ checks (15 seconds near campfire) AND 2+ players gathered AND cooldown expired
execute unless score @s ec.cf_near matches 3.. run return 0
execute unless score #cf_cooldown ec.var matches 0 run return 0

# Count other gathered players within 5 blocks
execute store result score #cf_nearby ec.var run execute if entity @a[distance=..5,tag=ec.cf_gathering]
execute unless score #cf_nearby ec.var matches 2.. run return 0

# All conditions met — lock cooldown FIRST to prevent race with other players
scoreboard players set #cf_cooldown ec.var 120
function evercraft:campfire_stories/trigger_story
