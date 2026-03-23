# Marriage — Loop: find friend and check hearts >= 90

execute unless data storage evercraft:friends temp.marry_check_list[0] run return 0
execute if score #fr_is_best ec.temp matches 1 run return 0

execute store result score #fr_mc_uuid3 ec.temp run data get storage evercraft:friends temp.marry_check_list[0].uuid3
execute store result score #fr_mc_hearts ec.temp run data get storage evercraft:friends temp.marry_check_list[0].hearts

execute if score #fr_mc_uuid3 ec.temp = #fr_marry_check_target ec.temp if score #fr_mc_hearts ec.temp matches 90.. run scoreboard players set #fr_is_best ec.temp 1

data remove storage evercraft:friends temp.marry_check_list[0]
function evercraft:friends/marriage/check_best_loop
