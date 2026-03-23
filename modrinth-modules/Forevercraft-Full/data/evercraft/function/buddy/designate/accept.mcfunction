# Buddy Designation — Accept ([Yes] clicked)
# @s = player who confirmed buddy designation

# Reset trigger
scoreboard players set @s ec.bd_confirm 0
scoreboard players enable @s ec.bd_confirm

# Verify target entity still exists nearby
scoreboard players operation #bd_target0 ec.temp = @s ec.bd_des_uuid0
scoreboard players operation #bd_target1 ec.temp = @s ec.bd_des_uuid1

# Find the target entity (within 10 blocks — may have moved slightly)
tag @e[type=#evercraft:tameable_companions,tag=ec.bd_designating_target,distance=..10,limit=1] add ec.bd_confirm_target
execute unless entity @e[tag=ec.bd_confirm_target,limit=1] run tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"That animal wandered too far away. Try again!",color:"red"}]
execute unless entity @e[tag=ec.bd_confirm_target,limit=1] run return fail

# Check if player already has a buddy of this mob type
function evercraft:buddy/designate/check_existing

# If check_existing set #bd_already to 1, stop
execute if score #bd_already ec.temp matches 1 run tag @e[tag=ec.bd_confirm_target] remove ec.bd_confirm_target
execute if score #bd_already ec.temp matches 1 run tag @e[tag=ec.bd_designating_target] remove ec.bd_designating_target
execute if score #bd_already ec.temp matches 1 run return fail

# Check if mob already has a CustomName
execute as @e[tag=ec.bd_confirm_target,limit=1] if data entity @s CustomName run function evercraft:buddy/naming/ask_rename
execute as @e[tag=ec.bd_confirm_target,limit=1] unless data entity @s CustomName run function evercraft:buddy/naming/give_charter

# Clean up temp tags
tag @e[tag=ec.bd_confirm_target] remove ec.bd_confirm_target
