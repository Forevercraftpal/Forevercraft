# Tamed Horse — Combat Tick (20t self-scheduling)
# Tamed horses kick nearby hostile mobs automatically

schedule function evercraft:horses/combat_tick 20t

# Gate: skip if no tamed horses exist
execute unless entity @e[type=horse,tag=ec.tame_protected,limit=1] run return 0

# Each tamed horse kicks the nearest hostile within 1 block (not while being ridden)
execute as @e[type=horse,tag=ec.tame_protected,nbt=!{Passengers:[{}]}] at @s run function evercraft:horses/attack_nearby
