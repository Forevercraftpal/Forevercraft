# Lucid Claim — Grant Selected Artifact (Macro)
# Macro args: art (artifact ID), tier (tier name)
# Run as @s = player

# Grant the artifact from its loot table
$loot give @s loot evercraft:artifacts/$(tier)/$(art)

# Celebration effects
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.3 1.5
particle totem_of_undying ~ ~1.5 ~ 1 1.5 1 0.5 100 force @s
particle end_rod ~ ~2 ~ 0.5 1 0.5 0.05 50 force @s

# Grant message (use saved display name from storage)
tellraw @s [{"text":"\u2605\u2605\u2605 ","color":"gold"},{"text":"Lucid Claim granted you: ","color":"gray"},{"nbt":"selected_name","storage":"evercraft:lucid_claim","interpret":true,"color":"gold","bold":true},{"text":"!","color":"gray"},{"text":" \u2605\u2605\u2605","color":"gold"}]

# Broadcast to all players
tellraw @a [{"text":"\u2605\u2605\u2605 ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" claimed their ","color":"gray"},{"text":"LUCID CLAIM","color":"gold","bold":true},{"text":" from the Fountain!","color":"gray"},{"text":" \u2605\u2605\u2605","color":"gold"}]

# Title display
title @s subtitle {"text":"Lucid Dream Fulfilled!","color":"gold"}
title @s title {"text":"\u2605 CLAIMED \u2605","color":"gold","bold":true}

# Reset spark counter
scoreboard players set @s ec.wish_spark 0

# Cleanup — remove tag and close codex
tag @s remove ec.lucid_claim_active
function evercraft:advantage/gui/close
