# Dragon's Breath - Fire Laser Beam
# Called on right-click via consume_item advancement
# 50 damage direct hit, ignites targets, 300 block range, 15s cooldown

# Check cooldown
execute if score @s ec.df_cd matches 1.. run title @s actionbar {text:"Dragon's Breath on cooldown!",color:"red"}
execute if score @s ec.df_cd matches 1.. run playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 0.5 1.5
execute if score @s ec.df_cd matches 1.. run return 0

# Set 15s cooldown (300 ticks)
scoreboard players set @s ec.df_cd 300

# Tag self to exclude from raycast
tag @s add ec.dragon_fire

# Initialize raycast tracking
scoreboard players set #df_hit ec.var 0
scoreboard players set #df_dist ec.var 0

# Sound effects
execute at @s run playsound minecraft:entity.blaze.shoot player @a[distance=..25] ~ ~ ~ 1.0 0.8
execute at @s run playsound minecraft:item.firecharge.use player @a[distance=..25] ~ ~ ~ 0.8 1.0
execute at @s run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..25] ~ ~ ~ 0.5 1.67

# Get UUID for damage attribution
function evercraft:treasure/database/get with entity @s

# Execute raycast from eyes (at @s sets position context for ^ ^ ^ coordinates)
execute at @s anchored eyes run function evercraft:artifacts/abilities/dragon_fan/fire_raycast_step

# Cleanup
tag @s remove ec.dragon_fire

# Fire notification
title @s actionbar {text:"Dragon's Breath!",color:"gold"}
tellraw @s [{text:"[",color:"gray"},{text:"Dragon Fan",color:"gold"},{text:"] ",color:"gray"},{text:"Dragon's Breath fired! ",color:"red"},{text:"(15s cooldown)",color:"dark_gray"}]
