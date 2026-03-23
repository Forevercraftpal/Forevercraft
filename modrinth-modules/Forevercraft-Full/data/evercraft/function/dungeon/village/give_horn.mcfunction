# Village Defense — Give Horn (test command)
# Uses current village ID so it works at the village you're standing in
execute store result storage eden:temp horn.village_id int 1 run scoreboard players get @s ec.current_village
function evercraft:dungeon/village/give_horn_macro with storage eden:temp horn
