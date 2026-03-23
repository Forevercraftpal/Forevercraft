# Tamable Ocelot — Combat Tick (20t self-scheduling)
# Tamed ocelots attack nearby hostile mobs automatically

schedule function evercraft:ocelots/combat_tick 20t

# Gate: skip if no tamed ocelots exist
execute unless entity @e[type=ocelot,tag=ec.ocelot_tamed,limit=1] run return 0

# Each non-sitting tamed ocelot attacks the nearest hostile within 4 blocks
execute as @e[type=ocelot,tag=ec.ocelot_tamed,scores={ocelot.sitting=0}] at @s run function evercraft:ocelots/attack_nearby
