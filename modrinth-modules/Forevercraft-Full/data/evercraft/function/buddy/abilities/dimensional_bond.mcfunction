# Buddy Ability — Dimensional Bond (Tier 5+)
# Buddy auto-teleports when player changes dimensions
# Detected by checking if buddy is in a different dimension than player
# This is checked from the main tick as a special case

# Check if player just changed dimensions (tag-based detection)
execute unless entity @s[tag=ec.bd_dim_changed] run return fail
tag @s remove ec.bd_dim_changed

# Teleport buddy to player's location
execute at @s as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,limit=1] run tp @s ~ ~ ~

tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Your buddy followed you across dimensions!",color:"aqua"}]
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.5 20
