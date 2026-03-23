# The Venomweaver — Vine Glow (pick a random color)
# Colors: 1=red, 2=blue, 3=green

# Pick random color
execute store result score #rd_vw_glow_color ec.var run random value 1..3

# Apply Glowing to boss (visual cue)
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run effect give @s glowing 5 0 true

# Boss particles matching the chosen color
execute if score #rd_vw_glow_color ec.var matches 1 as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[1.0,0.2,0.2],scale:2.0} ~ ~1 ~ 1 1 1 0 30
execute if score #rd_vw_glow_color ec.var matches 2 as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.2,0.4,1.0],scale:2.0} ~ ~1 ~ 1 1 1 0 30
execute if score #rd_vw_glow_color ec.var matches 3 as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.2,1.0,0.2],scale:2.0} ~ ~1 ~ 1 1 1 0 30

# Announce
execute if score #rd_vw_glow_color ec.var matches 1 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"The Venomweaver glows ",color:"gray"},{text:"RED",color:"red",bold:true},{text:"! Hit the matching vine!",color:"gray"}]
execute if score #rd_vw_glow_color ec.var matches 2 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"The Venomweaver glows ",color:"gray"},{text:"BLUE",color:"blue",bold:true},{text:"! Hit the matching vine!",color:"gray"}]
execute if score #rd_vw_glow_color ec.var matches 3 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"The Venomweaver glows ",color:"gray"},{text:"GREEN",color:"green",bold:true},{text:"! Hit the matching vine!",color:"gray"}]

# Sound
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:block.note_block.chime master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 1.0
