# Buddy Ability — Shared Meal (Tier 2+)
# When player feeds buddy (via treat), restore 2 hunger points to player
# @s = player who just treated their pet
# Called from do_treat hook

# Only if player has a buddy at tier 2+
execute unless score @s ec.bd_tier matches 2.. run return fail

# Only if YOUR buddy is within 16 blocks (ownership verified)
scoreboard players operation #Search companion.id = @s companion.id
execute at @s unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,predicate=evercraft:buddy/check_owner,limit=1] run return fail

# Restore 2 hunger (saturation effect level 0 for 1 tick = ~2 food points)
effect give @s saturation 1 0 true

tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Shared meal! ",color:"green"},{text:"(+2 hunger)",color:"yellow"}]
