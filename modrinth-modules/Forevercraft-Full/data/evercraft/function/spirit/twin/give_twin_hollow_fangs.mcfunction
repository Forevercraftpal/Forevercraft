# Dream Storm Crystal — Reveal Ghost Fang (Hollow Fangs' Twin)

# VFX — icy frost explosion
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1.0 0.8
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 0.6 1.8
particle explosion_emitter ~ ~1 ~ 0 0 0 1 1
particle dust{color:[0.7,0.85,1.0],scale:2.0} ~ ~1.5 ~ 2 2 2 0.05 60
particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1

# Give the twin weapon
loot give @s loot evercraft:spirit/twin/snow_blade

# Mark the original as having a twin
data modify storage evercraft:temp crystal_offhand set from entity @s equipment.offhand
data modify storage evercraft:temp crystal_offhand.components."minecraft:custom_data".spirit_twin set value true
summon hopper_minecart ~ 320 ~ {Tags:["ec.sp_temp"],Items:[{Slot:0b,id:"minecraft:stone",count:1}]}
data modify entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] Items[0] set from storage evercraft:temp crystal_offhand
item replace entity @s weapon.offhand from entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] container.0
kill @e[type=hopper_minecart,tag=ec.sp_temp]

title @s title [{"text":"SNOW BLADE","color":"#B0D4F1","bold":true}]
title @s subtitle [{"text":"The twin awakens...","color":"#6FA8DC"}]
tellraw @s [{"text":"The Hollow Fangs' twin, ","color":"light_purple"},{"text":"Ghost Fang","color":"#B0D4F1","bold":true},{"text":", has been revealed!","color":"light_purple"}]

# Server-wide announcement
tellraw @a [{"text":"═══ ","color":"dark_purple"},{"text":"TWIN AWAKENED","color":"light_purple","bold":true},{"text":" ═══","color":"dark_purple"}]
tellraw @a [{"text":"  ★ ","color":"gold"},{selector:"@s"},{"text":" revealed ","color":"gray"},{"text":"Ghost Fang","color":"#B0D4F1","bold":true},{"text":"!","color":"gold"}]
tag @s remove ec.sp_crystal_pending
