# Tamable Fox — Combat Tick (20t self-scheduling)
# Tamed foxes attack nearby hostile mobs automatically

schedule function evercraft:foxes/combat_tick 20t

# Gate: skip if no tamed foxes exist
execute unless entity @e[type=fox,tag=ec.fox_tamed,limit=1] run return 0

# Each non-sitting tamed fox attacks the nearest hostile within 3 blocks
execute as @e[type=fox,tag=ec.fox_tamed,scores={fox.sitting=0}] at @s run function evercraft:foxes/attack_nearby
