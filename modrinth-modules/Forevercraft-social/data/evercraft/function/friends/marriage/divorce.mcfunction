# Marriage — Divorce
# @s = player requesting divorce

execute unless score @s ec.fr_married matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You are not married!",color:"red"}]
execute unless score @s ec.fr_married matches 1 run return 0

# Get self UUID3 and load spouse UUID3 from storage
execute store result score #fr_self_uuid3 ec.temp run data get entity @s UUID[3]
execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp

function evercraft:friends/buff/read_married with storage evercraft:friends temp
# #fr_married_to ec.temp = spouse's UUID3

execute store result storage evercraft:friends temp.spouse_uuid3 int 1 run scoreboard players get #fr_married_to ec.temp

# Clear married_to on both storages
function evercraft:friends/marriage/do_divorce with storage evercraft:friends temp

# Clear married flag on self
scoreboard players set @s ec.fr_married 0

# Reset title from "spouse" to "friend" on both entries
data modify storage evercraft:friends temp.new_title set value "friend"
execute store result storage evercraft:friends temp.title_target_uuid3 int 1 run scoreboard players get #fr_married_to ec.temp
function evercraft:friends/title/do_set with storage evercraft:friends temp

execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_married_to ec.temp
execute store result storage evercraft:friends temp.title_target_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp
function evercraft:friends/title/do_set with storage evercraft:friends temp

# Find spouse online and update
execute as @a store result score @s ec.temp_uuid3 run data get entity @s UUID[3]
execute as @a if score @s ec.temp_uuid3 = #fr_married_to ec.temp run scoreboard players set @s ec.fr_married 0

# Notify
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You are no longer married.",color:"gray"}]
