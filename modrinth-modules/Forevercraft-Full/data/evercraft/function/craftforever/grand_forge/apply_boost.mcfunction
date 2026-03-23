# Forge Crystal — Apply 25% boost to spirit tool in offhand

# Store offhand to storage
data modify storage evercraft:temp crystal_offhand set from entity @s equipment.offhand

# Add st_boosted:true flag
data modify storage evercraft:temp crystal_offhand.components."minecraft:custom_data".st_boosted set value true

# Restore via hopper minecart intermediary (offhand is read-only)
summon hopper_minecart ~ 320 ~ {Tags:["ec.st_temp"],Items:[{Slot:0b,id:"minecraft:stone",count:1}]}
data modify entity @e[type=hopper_minecart,tag=ec.st_temp,limit=1] Items[0] set from storage evercraft:temp crystal_offhand
item replace entity @s weapon.offhand from entity @e[type=hopper_minecart,tag=ec.st_temp,limit=1] container.0
kill @e[type=hopper_minecart,tag=ec.st_temp]

# VFX
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1.0 1.2
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1.0 0.8
particle end_rod ~ ~1 ~ 0.5 1 0.5 0.1 30
particle dust{color:[0.0,0.8,0.2],scale:1.5} ~ ~1.5 ~ 1 1 1 0.05 40

title @s title [{"text":"Power Infused!","color":"green","bold":true}]
title @s subtitle [{"text":"All abilities enhanced by 25%","color":"dark_green"}]
tellraw @s [{"text":"The Crystal's power infuses your tool. All abilities enhanced by 25%.","color":"dark_green"}]
tag @s remove ec.st_crystal_pending
