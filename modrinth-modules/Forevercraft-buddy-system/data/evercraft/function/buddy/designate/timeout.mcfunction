# Buddy Designation — Timeout (40-tick window expired)
# @s = player whose designation window expired

# Only act if they HAD a target
execute unless score @s ec.bd_des_uuid0 matches 1.. unless score @s ec.bd_des_uuid0 matches ..-1 run return fail

# Clean up
scoreboard players set @s ec.bd_designating 0
scoreboard players set @s ec.bd_des_uuid0 0
scoreboard players set @s ec.bd_des_uuid1 0
tag @e[tag=ec.bd_designating_target] remove ec.bd_designating_target
