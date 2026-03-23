# Kindlestrike — AoE Fire Burst
# @s = hit entity, position = hit entity location

# Set all mobs in 4-block radius on fire (8 seconds = 160 ticks)
execute as @e[type=!player,distance=..4] run data modify entity @s Fire set value 160s

# Fire particles
particle flame ~ ~0.5 ~ 4 1 4 0.05 60
particle lava ~ ~0.5 ~ 4 0.5 4 0.1 20
particle smoke ~ ~1 ~ 3 1 3 0.05 30
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.5 0.6
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1.0

# Feedback to archer
tellraw @p [{"text":"[Ancient Bow] ","color":"dark_purple"},{"text":"Kindlestrike ","color":"gold","bold":true},{"text":"— Inferno unleashed!","color":"red"}]
