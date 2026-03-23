# Marriage — Propose to a best friend
# @s = proposer, ec.fr_marry = target's UUID3

# Check not already married
execute if score @s ec.fr_married matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You are already married!",color:"red"}]
execute if score @s ec.fr_married matches 1 run return 0

# Get target UUID3
scoreboard players operation #fr_marry_target ec.temp = @s ec.fr_marry

# Get self UUID3
execute store result score #fr_self_uuid3 ec.temp run data get entity @s UUID[3]
execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp
execute store result storage evercraft:friends temp.marry_target_uuid3 int 1 run scoreboard players get #fr_marry_target ec.temp

# Check target is a best friend (90+ hearts)
function evercraft:friends/marriage/check_best_friend with storage evercraft:friends temp
execute unless score #fr_is_best ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You can only propose to a Best Friend (90+ hearts)!",color:"red"}]
execute unless score #fr_is_best ec.temp matches 1 run return 0

# Find target online
scoreboard players set #fr_marry_found ec.temp 0
execute as @a store result score @s ec.temp_uuid3 run data get entity @s UUID[3]
execute as @a if score @s ec.temp_uuid3 = #fr_marry_target ec.temp run function evercraft:friends/marriage/send_proposal

execute if score #fr_marry_found ec.temp matches 0 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"That player is not online!",color:"red"}]
