# Guild Scatter Node Reward — Bottles of XP (most common)
# @s = player who clicked node

give @s minecraft:experience_bottle 4
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.2
tellraw @s [{text:"[Guild] ",color:"green"},{text:"You found ",color:"gray"},{text:"4 Bottles o' Enchanting",color:"green"},{text:"!",color:"gray"}]
function evercraft:guild/contribution/add {amount:3}
