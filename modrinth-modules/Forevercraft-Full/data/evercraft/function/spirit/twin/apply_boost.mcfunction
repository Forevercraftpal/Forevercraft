# Dream Storm Crystal — Apply 25% Solo Boost to non-twin spirit artifact
# The spirit_boosted flag in custom_data enables +25% to all ability damage/healing

# Mark the offhand artifact as boosted via item modifier
# Since we can't directly edit offhand custom_data easily, we use hopper minecart intermediary
# Save offhand item → modify → restore

# Store offhand to storage
data modify storage evercraft:temp crystal_offhand set from entity @s equipment.offhand

# Add spirit_boosted:true flag
data modify storage evercraft:temp crystal_offhand.components."minecraft:custom_data".spirit_boosted set value true

# Restore via hopper minecart intermediary (offhand is read-only)
summon hopper_minecart ~ 320 ~ {Tags:["ec.sp_temp"],Items:[{Slot:0b,id:"minecraft:stone",count:1}]}
data modify entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] Items[0] set from storage evercraft:temp crystal_offhand
item replace entity @s weapon.offhand from entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] container.0
kill @e[type=hopper_minecart,tag=ec.sp_temp]

# VFX — power infusion
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1.0 1.2
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1.0 0.8
particle end_rod ~ ~1 ~ 0.5 1 0.5 0.1 30
particle dust{color:[0.5,0.0,0.8],scale:1.5} ~ ~1.5 ~ 1 1 1 0.05 40

title @s title [{"text":"Power Infused!","color":"dark_purple","bold":true}]
title @s subtitle [{"text":"All abilities enhanced by 25%","color":"light_purple"}]
tellraw @s [{"text":"The Crystal's power infuses your weapon. All abilities enhanced by 25%.","color":"light_purple"}]
tag @s remove ec.sp_crystal_pending
