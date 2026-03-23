# Wishing Star — Grant Selected Artifact (Macro)
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
tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"Dreamy Star granted you: ","color":"gray"},{"nbt":"selected_name","storage":"evercraft:wishing_star","interpret":true,"color":"gold","bold":true},{"text":"!","color":"gray"},{"text":" \u2726\u2726\u2726","color":"gold"}]

# Cleanup — remove tag and close codex
tag @s remove ec.wishing_star_active
function evercraft:advantage/gui/close
