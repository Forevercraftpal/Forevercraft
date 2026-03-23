# Dual Swordsman — Normal Whirlwind Roll (1/8 chance)
# Run as @s at @s

# Roll 1-8
execute store result score @s ec.temp run random value 1..8
execute if score @s ec.temp matches 1 run function evercraft:dual_swordsman/whirlwind_strike
