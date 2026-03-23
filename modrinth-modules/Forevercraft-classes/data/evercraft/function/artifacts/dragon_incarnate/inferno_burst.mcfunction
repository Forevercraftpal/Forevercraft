# Dragon Incarnate — Inferno Burst
# AOE fire nova: 20 true damage to all hostile mobs within 5 blocks, 20s cooldown
# Called from on_consume when sneaking

# Check cooldown
execute if score @s ec.di_burst_cd matches 1.. run title @s actionbar {"text":"Inferno Burst recharging!","color":"red"}
execute if score @s ec.di_burst_cd matches 1.. run playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 0.5 1.5
execute if score @s ec.di_burst_cd matches 1.. run return 0

# Set 20s cooldown (400 ticks)
scoreboard players set @s ec.di_burst_cd 400

# Get UUID for damage attribution
function evercraft:treasure/database/get with entity @s

# Tag self to exclude from damage
tag @s add ec.di_burst

# AOE damage — 20 true damage (minecraft:magic bypasses armor) to all hostile mobs in 5 blocks
execute at @s as @e[type=!#evercraft:treasure/non_entity,type=!player,distance=..5] run function evercraft:artifacts/dragon_incarnate/inferno_burst_hit with storage evercraft:treasure/write data

# VFX — fire nova
execute at @s run particle flame ~ ~0.5 ~ 3 0.5 3 0.15 300 force @a
execute at @s run particle lava ~ ~1 ~ 2 1 2 0 40 force @a
execute at @s run particle smoke ~ ~0.5 ~ 3 1 3 0.1 100 force @a
execute at @s run particle minecraft:explosion ~ ~1 ~ 2 0.5 2 0.05 5 force @a

# SFX
execute at @s run playsound minecraft:entity.ender_dragon.shoot player @a[distance=..25] ~ ~ ~ 1.0 0.6
execute at @s run playsound minecraft:entity.generic.explode player @a[distance=..25] ~ ~ ~ 0.8 1.2
execute at @s run playsound minecraft:item.firecharge.use player @a[distance=..25] ~ ~ ~ 0.6 0.8

# Ignite all hit targets (3 seconds = 60 ticks)
execute at @s as @e[type=!#evercraft:treasure/non_entity,type=!player,distance=..5] run data merge entity @s {Fire:60s}

# Cleanup
tag @s remove ec.di_burst

# Feedback
title @s actionbar {"text":"Inferno Burst!","color":"#FF4400","bold":true}
tellraw @s [{"text":"[","color":"gray"},{"text":"Dragon Fan","color":"gold"},{"text":"] ","color":"gray"},{"text":"Inferno Burst unleashed! ","color":"#FF6600"},{"text":"(20s cooldown)","color":"dark_gray"}]
