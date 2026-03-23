# Black Market Heist — On Fail (hit, timeout, or near-death)
# Safely teleports player home with no penalties

# Prevent double-trigger
execute unless score #heist_active ec.var matches 1 run return 0

# === TOTEM POP + IMMEDIATE SURVIVAL ===
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100
playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:resistance 5 4 true
effect clear @s minecraft:slow_falling

# === FAILURE TITLE ===
title @s times 5 40 15
title @s title {text:"BUSTED",color:"red",bold:true}
title @s subtitle {text:"The guards got you!",color:"gray"}

# Sound
playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.3 0.5

# Chat
tellraw @s [{text:"\n"},{text:"  [Heist] ",color:"dark_red"},{text:"Busted! You were detected.\n",color:"gray"},{text:"  [Heist] ",color:"dark_red"},{text:"No items or levels lost.\n",color:"green"}]

# === PREVENT TOMB DEATH ===
scoreboard players set @s ec.tomb_death 0

# === TELEPORT TO BED ===
execute if data entity @s respawn run function evercraft:heist/active/tp_to_spawn
execute unless data entity @s respawn run spreadplayers ~ ~ 0 1 false @s

# === CLEANUP ===
function evercraft:heist/cleanup
