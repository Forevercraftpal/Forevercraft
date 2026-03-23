# Housing Visitor Check — Detect non-owners in a homeowner's zone
# Run as: homeowner with hs.tier >= 1, at homeowner
# For each other player, check if they're within 64 blocks of this home

# Decrement visit cooldown for this homeowner
execute if score @s hs.visit_cd matches 1.. run scoreboard players remove @s hs.visit_cd 1

# Skip if cooldown active
execute if score @s hs.visit_cd matches 1.. run return 0

# Store home coords for comparison
scoreboard players operation #hs_vx hs.temp = @s hs.home_x
scoreboard players operation #hs_vy hs.temp = @s hs.home_y
scoreboard players operation #hs_vz hs.temp = @s hs.home_z
scoreboard players operation #hs_vdim hs.temp = @s hs.home_dim

# Tag self to exclude from search
tag @s add hs.owner_check

# Check each other player
execute as @a[tag=!hs.owner_check] at @s run function evercraft:housing/zone/visitor_test

# Cleanup
tag @s remove hs.owner_check
