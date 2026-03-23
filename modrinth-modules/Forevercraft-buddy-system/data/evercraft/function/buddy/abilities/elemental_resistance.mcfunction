# Buddy Ability — Elemental Resistance (Tier 4+)
# Buddy is immune to fire, fall damage, and drowning
# Applied as effects + NBT flags

execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..32,limit=1] run effect give @s fire_resistance 5 0 true
execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..32,limit=1] run effect give @s water_breathing 5 0 true
