# Phase 3: QUENCH — Evaluate click position (runs as player)

# Calculate distance from lock zone center
scoreboard players operation #cf_dist ec.cf_temp = @s ec.cf_quench
scoreboard players operation #cf_dist ec.cf_temp -= @s ec.cf_lock_zone

# Absolute value
execute if score #cf_dist ec.cf_temp matches ..-1 run scoreboard players operation #cf_dist ec.cf_temp *= #cf_neg1 ec.cf_temp

# Perfect (within 5 units): +3 quality
execute if score #cf_dist ec.cf_temp matches 0..5 run scoreboard players add @s ec.cf_quality 3
execute if score #cf_dist ec.cf_temp matches 0..5 run tellraw @s [{text:"Perfect quench! ",color:"aqua",bold:true},{text:"+3 quality",color:"yellow"}]
execute if score #cf_dist ec.cf_temp matches 0..5 run playsound minecraft:item.bucket.fill master @s ~ ~ ~ 1.0 1.5

# Close (within 15 units): +1 quality
execute if score #cf_dist ec.cf_temp matches 6..15 run scoreboard players add @s ec.cf_quality 1
execute if score #cf_dist ec.cf_temp matches 6..15 run tellraw @s [{text:"Decent quench. ",color:"green"},{text:"+1 quality",color:"gray"}]
execute if score #cf_dist ec.cf_temp matches 6..15 run playsound minecraft:item.bucket.fill master @s ~ ~ ~ 0.7 1.0

# Missed (>15): +0 quality
execute if score #cf_dist ec.cf_temp matches 16.. run tellraw @s [{text:"Rough quench. ",color:"red"},{text:"+0 quality",color:"gray"}]
execute if score #cf_dist ec.cf_temp matches 16.. run playsound minecraft:entity.villager.no master @s ~ ~ ~ 0.5 0.8

# Clean up phase 3 elements
execute at @s run kill @e[type=text_display,tag=CF.QuenchBar,distance=..7]
execute at @s run kill @e[type=text_display,tag=CF.QuenchText,distance=..7]
execute at @s run kill @e[type=interaction,tag=CF.QuenchBtn,distance=..7]

# Resolve minigame
function evercraft:craftforever/forging/minigame/resolve
