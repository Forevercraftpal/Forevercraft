# Uplift — AoE Levitation + Knockback
# @s = hit entity, position = hit entity location

# Levitation III for 7 seconds to all mobs in 4-block radius
effect give @e[type=!player,distance=..4] levitation 140 2 false

# Wind burst particles
particle cloud ~ ~0.5 ~ 4 0.5 4 0.1 40
particle poof ~ ~1 ~ 3 1 3 0.1 30
playsound minecraft:entity.wind_charge.wind_burst master @a ~ ~ ~ 1.5 0.8
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.5 2.0

# Feedback to archer
tellraw @p [{"text":"[Light Bow] ","color":"aqua"},{"text":"Uplift ","color":"white","bold":true},{"text":"— Enemies launched skyward!","color":"yellow"}]
