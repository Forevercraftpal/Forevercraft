# The Ashen Lord — Light Soul Lantern
# Called as the lantern entity being lit

tag @s remove ec.rd_al_lantern_off
tag @s add ec.rd_al_lantern_on
tag @s add ec.rd_al_lantern_just_lit

# VFX
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.05 15
playsound minecraft:block.respawn_anchor.charge master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.2

# Notify
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"A soul lantern ignites! The Ashen Lord's fire immunity weakens...",color:"aqua"}]
