# Marriage — Check if removed friend was spouse, and divorce if so
# @s = player who removed a friend
# #fr_remove_target ec.temp = removed friend's UUID3

execute store result score #fr_self_uuid3 ec.temp run data get entity @s UUID[3]
execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp

# Read married_to
function evercraft:friends/buff/read_married with storage evercraft:friends temp

# If the removed friend is the spouse, auto-divorce
execute unless score #fr_married_to ec.temp = #fr_remove_target ec.temp run return 0

execute store result storage evercraft:friends temp.spouse_uuid3 int 1 run scoreboard players get #fr_remove_target ec.temp
function evercraft:friends/marriage/do_divorce with storage evercraft:friends temp
scoreboard players set @s ec.fr_married 0

# Update spouse online if present
execute as @a store result score @s ec.temp_uuid3 run data get entity @s UUID[3]
execute as @a if score @s ec.temp_uuid3 = #fr_remove_target ec.temp run scoreboard players set @s ec.fr_married 0

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Marriage ended due to friend removal.",color:"gray"}]
