# Buddy Ability — Buddy Aura (Tier 5+)
# Passive AoE effect based on buddy's mob type
# Applied to player and nearby allies within 8 blocks of buddy

# Only if buddy is within 16 blocks
execute unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] run return fail

# Wolf: Strength I to nearby players
execute if score @s ec.bd_type_id matches 1 as @e[tag=ec.bd_buddy,type=minecraft:wolf,distance=..16,limit=1] at @s run effect give @a[distance=..8] strength 3 0 true

# Cat: Luck I to nearby players (stacks with Lucky Paws — Luck II total)
execute if score @s ec.bd_type_id matches 2 as @e[tag=ec.bd_buddy,type=minecraft:cat,distance=..16,limit=1] at @s run effect give @a[distance=..8] luck 3 0 true

# Parrot: Speed I to nearby players
execute if score @s ec.bd_type_id matches 3 as @e[tag=ec.bd_buddy,type=minecraft:parrot,distance=..16,limit=1] at @s run effect give @a[distance=..8] speed 3 0 true

# Horse/Donkey/Mule/Llama/Camel: Resistance I to nearby players
execute if score @s ec.bd_type_id matches 4..9 as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] at @s run effect give @a[distance=..8] resistance 3 0 true

# Fox: Night Vision to nearby players
execute if score @s ec.bd_type_id matches 10 as @e[tag=ec.bd_buddy,type=minecraft:fox,distance=..16,limit=1] at @s run effect give @a[distance=..8] night_vision 5 0 true

# Ocelot: Haste I to nearby players
execute if score @s ec.bd_type_id matches 11 as @e[tag=ec.bd_buddy,type=minecraft:ocelot,distance=..16,limit=1] at @s run effect give @a[distance=..8] haste 3 0 true

# Happy Ghast: Slow Falling to nearby players
execute if score @s ec.bd_type_id matches 12 as @e[tag=ec.bd_buddy,type=minecraft:happy_ghast,distance=..16,limit=1] at @s run effect give @a[distance=..8] slow_falling 3 0 true
