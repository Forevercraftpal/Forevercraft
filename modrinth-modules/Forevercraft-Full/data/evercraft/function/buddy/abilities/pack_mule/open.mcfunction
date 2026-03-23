# Buddy Ability — Pack Mule (Tier 3+)
# Opens a 3-slot buddy inventory GUI using storage-based system (satchel pattern)
# @s = player, position context set
# Called from buddy tab GUI

# Verify tier 3+
execute unless score @s ec.bd_tier matches 3.. run tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Pack Mule unlocks at Devoted tier (1,500 points).",color:"red"}]
execute unless score @s ec.bd_tier matches 3.. run return fail

# Verify buddy exists nearby
execute at @s unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] run tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Your buddy must be nearby!",color:"red"}]
execute at @s unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] run return fail

# Safety: kill any orphaned menu elements
execute at @s run kill @e[type=text_display,tag=ec.mule_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.mule_el,distance=..5]

# Tag player as in mule menu
tag @s add ec.mule_in_menu

# Initialize storage if not present (keyed by companion.id)
execute store result storage evercraft:buddy mule_temp.pid int 1 run scoreboard players get @s companion.id
function evercraft:buddy/abilities/pack_mule/init_storage with storage evercraft:buddy mule_temp

# Spawn GUI elements
execute at @s run function evercraft:buddy/abilities/pack_mule/spawn_gui

# Refresh slot displays
function evercraft:buddy/abilities/pack_mule/refresh

# Start click detection tick
schedule function evercraft:buddy/abilities/pack_mule/tick 2t replace

playsound minecraft:block.chest.open master @s ~ ~ ~ 0.5 1.2
