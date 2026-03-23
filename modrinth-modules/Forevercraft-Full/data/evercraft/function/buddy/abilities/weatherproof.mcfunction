# Buddy Ability — Weatherproof (Tier 1+)
# Buddy is immune to lightning and powder snow damage
# Applied as fire_resistance effect on buddy during rain/thunder

execute if predicate evercraft:buddy/is_thundering as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..32,limit=1] run effect give @s fire_resistance 5 0 true
