# Buddy Ability — Cozy Rest (Tier 2+)
# Regeneration I for 30 seconds when waking up with buddy nearby
# Triggered from sleep_skip hook — check via #slept_through_night flag
# This runs in the buddy tick, so we check the global flag

execute unless score #slept_through_night ec.var matches 1 run return fail
execute unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] run return fail

# Only apply once per sleep (use a tag)
execute if entity @s[tag=ec.bd_cozy_applied] run return fail
tag @s add ec.bd_cozy_applied

effect give @s regeneration 30 0 true
tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Your buddy kept you warm through the night. ",color:"yellow"},{text:"(Regeneration I - 30s)",color:"green"}]

# Schedule tag removal (clear after 5 seconds to allow re-trigger next night)
schedule function evercraft:buddy/abilities/clear_cozy 100t append
