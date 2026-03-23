# Spring Spawn — Single Player Check
# Run as player, at player position
# Skip if too many animals nearby

# Count nearby animals — skip if >25
execute store result score @s ec.temp run execute if entity @e[type=#evercraft:passive_mobs,distance=..48]
execute if score @s ec.temp matches 26.. run return 0

# Pick random animal type (1-5) and summon 20-30 blocks away
execute store result score #spring_type ec.temp run random value 1..5
execute store result score #spring_ox ec.temp run random value -30..30
execute store result score #spring_oz ec.temp run random value -30..30

# Summon at offset — the mob will find valid ground on its own if close enough
execute if score #spring_type ec.temp matches 1 positioned ~20 ~5 ~0 run summon sheep ~ ~ ~
execute if score #spring_type ec.temp matches 2 positioned ~-15 ~5 ~20 run summon cow ~ ~ ~
execute if score #spring_type ec.temp matches 3 positioned ~0 ~5 ~-25 run summon pig ~ ~ ~
execute if score #spring_type ec.temp matches 4 positioned ~25 ~5 ~-10 run summon chicken ~ ~ ~
execute if score #spring_type ec.temp matches 5 positioned ~-20 ~5 ~15 run summon rabbit ~ ~ ~
