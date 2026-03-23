# Best Buddy Combat — Find Target
# @s = best buddy entity, positioned at itself
# Find nearest hostile within 8 blocks and attack it

# Check for hostile mobs nearby
execute unless entity @e[type=#evercraft:hostile,distance=..8,limit=1,sort=nearest] run return fail

# Attack nearest hostile
execute as @e[type=#evercraft:hostile,distance=..8,limit=1,sort=nearest] run function evercraft:buddy/best/combat/attack
