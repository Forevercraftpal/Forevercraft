# Find the owner player for the current laborer
# Runs as: laborer entity
# Sets tag ec.lb_owner on the matching player (if online)
# Uses companion.id matching (same pattern as companion system)

scoreboard players operation #lb_search ec.lb_temp = @s ec.lb_owner_id
execute as @a if score @s companion.id = #lb_search ec.lb_temp run tag @s add ec.lb_owner
