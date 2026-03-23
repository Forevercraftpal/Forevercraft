# Buddy Ability — Lucky Paws (Tier 2+)
# Luck I while buddy is within 16 blocks
# Applied as effect (refreshed every tick, so 2s duration is sufficient)

execute if entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] run effect give @s luck 3 0 true
