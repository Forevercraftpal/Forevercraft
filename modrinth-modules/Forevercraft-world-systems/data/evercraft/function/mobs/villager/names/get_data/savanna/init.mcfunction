execute store result storage eden:temp villager_names.savanna.id.first_name int 1 run random value 1..250
execute store result storage eden:temp villager_names.savanna.id.last_name int 1 run random value 1..250
function evercraft:mobs/villager/names/get_data/savanna/copy_to_temp with storage eden:temp villager_names.savanna.id

data modify storage eden:temp villager_names.savanna.color set from storage eden:database color.villager.savanna

function evercraft:mobs/villager/names/set_name with storage eden:temp villager_names.savanna