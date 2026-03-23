# The Ashen Lord — Extinguish Soul Lantern
# Called as the lantern entity being extinguished

tag @s remove ec.rd_al_lantern_on
tag @s add ec.rd_al_lantern_off

# VFX
particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 10
playsound minecraft:block.respawn_anchor.deplete master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8

# Notify
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"A soul lantern dims. Nearby players gain fire protection.",color:"yellow"}]
