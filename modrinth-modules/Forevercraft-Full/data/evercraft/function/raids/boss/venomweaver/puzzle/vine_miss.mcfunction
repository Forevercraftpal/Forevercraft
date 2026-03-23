# The Venomweaver — Missed the vine window
# Time expired without hitting any vine — minor punishment

# Clear the glow color
scoreboard players set #rd_vw_glow_color ec.var 0

# Mild poison nova (less punishing than wrong answer)
effect give @a[tag=ec.rd_participant] poison 3 0

# VFX
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:item_slime ~ ~1 ~ 4 2 4 0.1 30

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"Too slow! The venom spreads...",color:"gray",italic:true}]
