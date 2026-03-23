# ============================================================
# House Key — Award to player
# Run as: player who reached Architect comfort + Tier 3
# ============================================================

# Prevent duplicate awards
tag @s add hs.has_satchel

# Give the item
function evercraft:housing/satchel/give

# Title announcement
title @s times 10 60 20
title @s title [{text:"\ud83d\udd11 ",color:"gold"},{text:"House Key",color:"yellow",bold:true}]
title @s subtitle [{text:"Remotely stash items at your home!",color:"gray"}]

# Chat message
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You earned a ",color:"green"},{text:"House Key",color:"yellow",bold:true},{text:"! Use it to remotely stash items to your labeled containers.",color:"green"}]

# Effects
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.6 1.2
playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.5 1.5
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 0.5 1 0 15
