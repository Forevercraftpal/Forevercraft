# Buddy Designation — Find Nearest Tamed Mob
# @s = player, first sneak+catalogue click
# Finds nearest tamed mob within 5 blocks owned by this player

# Store player UUID3 for ownership check
scoreboard players operation #bd_owner ec.temp = @s companion.id

# Find nearest tameable companion within 5 blocks that has an Owner tag
# We check ec.tame_protected which is set every 5s for all tamed entities
execute as @e[type=#evercraft:tameable_companions,tag=ec.tame_protected,distance=..5,limit=1,sort=nearest] run function evercraft:buddy/designate/check_owner

# If no target found, notify player
execute unless score #bd_found ec.temp matches 1 run tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"No tamed animal found nearby. Get closer to a tamed mob!",color:"gray"}]
