# The Ashen Lord — Fire Anchor Destroyed
# Called as the anchor entity that reached 5 hits

# Reduce remaining anchor count
scoreboard players remove #rd_al_anchors ec.var 1

# Destruction VFX
particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0.5 5
particle minecraft:soul_fire_flame ~ ~1 ~ 1 1 1 0.1 30
playsound minecraft:entity.generic.explode master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8
playsound minecraft:block.beacon.deactivate master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.0

# Announce
execute if score #rd_al_anchors ec.var matches 3 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Fire anchor destroyed! 3 remaining — heat reduced!",color:"green"}]
execute if score #rd_al_anchors ec.var matches 2 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Fire anchor destroyed! 2 remaining!",color:"green"}]
execute if score #rd_al_anchors ec.var matches 1 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Fire anchor destroyed! 1 remaining!",color:"yellow"}]
execute if score #rd_al_anchors ec.var matches 0 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"All fire anchors destroyed! The heat subsides!",color:"green",bold:true}]

# Kill the anchor entity
kill @s
