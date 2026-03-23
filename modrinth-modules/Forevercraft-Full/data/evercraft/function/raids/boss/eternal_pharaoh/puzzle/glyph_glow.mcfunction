# The Eternal Pharaoh — Boss Glows a Color
# Pick random color 1-4, display to players

execute store result score #rd_ep_glow_color ec.var run random value 1..4
scoreboard players set #rd_ep_glow_cd ec.var 600

# Color VFX on boss
execute if score #rd_ep_glow_color ec.var matches 1 as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[1.0,0.2,0.2],scale:2.5} ~ ~2 ~ 0.5 0.5 0.5 0.01 20
execute if score #rd_ep_glow_color ec.var matches 2 as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.2,0.4,1.0],scale:2.5} ~ ~2 ~ 0.5 0.5 0.5 0.01 20
execute if score #rd_ep_glow_color ec.var matches 3 as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.2,1.0,0.2],scale:2.5} ~ ~2 ~ 0.5 0.5 0.5 0.01 20
execute if score #rd_ep_glow_color ec.var matches 4 as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[1.0,0.8,0.0],scale:2.5} ~ ~2 ~ 0.5 0.5 0.5 0.01 20

# Announce color
execute if score #rd_ep_glow_color ec.var matches 1 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The Pharaoh glows ",color:"gray"},{text:"RED",color:"red",bold:true},{text:"! Hit the matching pillar!",color:"gray"}]
execute if score #rd_ep_glow_color ec.var matches 2 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The Pharaoh glows ",color:"gray"},{text:"BLUE",color:"blue",bold:true},{text:"! Hit the matching pillar!",color:"gray"}]
execute if score #rd_ep_glow_color ec.var matches 3 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The Pharaoh glows ",color:"gray"},{text:"GREEN",color:"green",bold:true},{text:"! Hit the matching pillar!",color:"gray"}]
execute if score #rd_ep_glow_color ec.var matches 4 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The Pharaoh glows ",color:"gray"},{text:"GOLD",color:"gold",bold:true},{text:"! Hit the matching pillar!",color:"gray"}]

playsound minecraft:block.note_block.chime master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.0
