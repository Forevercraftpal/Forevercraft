# Lore Exchange — Back to dimension picker (page 1)
# Kills exchange content, re-spawns lore page 1

# Kill exchange entities
execute at @s run kill @e[type=text_display,tag=Adv.LoreExContent,distance=..5]
execute at @s run kill @e[type=interaction,tag=Adv.LoreExContent,distance=..5]

# Reset exchange state
scoreboard players set @s lx.count 0
scoreboard players set @s lx.tier 0
scoreboard players set @s lx.required 0
scoreboard players set @s lx.reward 0

# Re-spawn lore page 1
function evercraft:codex/hub/lore/spawn

# Sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.0
