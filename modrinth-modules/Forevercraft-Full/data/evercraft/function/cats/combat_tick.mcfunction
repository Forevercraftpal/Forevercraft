# Tamed Cat — Combat Tick (20t self-scheduling)
# Tamed cats attack nearby hostile mobs automatically

schedule function evercraft:cats/combat_tick 20t

# Gate: skip if no tamed cats exist
execute unless entity @e[type=cat,tag=ec.tame_protected,limit=1] run return 0

# Each non-sitting tamed cat attacks the nearest hostile within 3 blocks
execute as @e[type=cat,tag=ec.tame_protected,nbt=!{Sitting:1b}] at @s run function evercraft:cats/attack_nearby
