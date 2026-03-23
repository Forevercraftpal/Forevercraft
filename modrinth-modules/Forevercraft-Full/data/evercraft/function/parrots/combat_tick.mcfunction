# Tamed Parrot — Combat Tick (20t self-scheduling)
# Tamed parrots attack nearby hostile mobs automatically

schedule function evercraft:parrots/combat_tick 20t

# Gate: skip if no tamed parrots exist
execute unless entity @e[type=parrot,tag=ec.tame_protected,limit=1] run return 0

# Each non-sitting tamed parrot attacks the nearest hostile within 2 blocks
execute as @e[type=parrot,tag=ec.tame_protected,nbt=!{Sitting:1b}] at @s run function evercraft:parrots/attack_nearby
