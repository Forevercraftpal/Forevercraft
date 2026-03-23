# Agility Effect — +4% movement speed per level
# Remove old modifier, calculate new value, apply via macro

attribute @s movement_speed modifier remove evercraft:adv_agility

# Calculate: level * 4 = percentage points, store as decimal (4 -> 0.04)
scoreboard players operation #speed adv.temp = @s adv.agility
scoreboard players operation #speed adv.temp *= #4 adv.temp
execute store result storage evercraft:advantage speed double 0.01 run scoreboard players get #speed adv.temp

function evercraft:advantage/effects/apply_agility with storage evercraft:advantage
