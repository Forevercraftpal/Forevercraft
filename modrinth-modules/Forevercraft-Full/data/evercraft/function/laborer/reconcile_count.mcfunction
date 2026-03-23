# Reconcile laborer count — detect dead/missing laborers
# Runs as: player with ec.lb_count >= 1
# Count actual laborer entities owned by this player and fix the score if mismatched

scoreboard players operation #lb_search ec.lb_temp = @s companion.id

# Count living laborers matching this owner
scoreboard players set #lb_actual ec.lb_temp 0
execute as @e[type=villager,tag=ec.laborer] if score @s ec.lb_owner_id = #lb_search ec.lb_temp run scoreboard players add #lb_actual ec.lb_temp 1

# If actual count differs from tracked count, fix it
execute unless score @s ec.lb_count = #lb_actual ec.lb_temp run scoreboard players operation @s ec.lb_count = #lb_actual ec.lb_temp
