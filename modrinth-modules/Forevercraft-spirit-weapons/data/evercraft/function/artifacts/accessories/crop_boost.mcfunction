# Farmer's Almanac — Crop Boost
# 5% chance per second to bone meal a random nearby crop
execute store result score @s ec.artifact_roll run random value 1..20
execute if score @s ec.artifact_roll matches 1 positioned ~-4 ~-1 ~-4 run function evercraft:artifacts/accessories/try_bone_meal
