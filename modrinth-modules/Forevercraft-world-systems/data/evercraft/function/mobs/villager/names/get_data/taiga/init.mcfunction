execute store result storage eden:temp villager_names.taiga.id.first_name int 1 run random value 1..250
execute store result storage eden:temp villager_names.taiga.id.last_name int 1 run random value 1..250
function evercraft:mobs/villager/names/get_data/taiga/copy_to_temp with storage eden:temp villager_names.taiga.id

data modify storage eden:temp villager_names.taiga.color set from storage eden:database color.villager.taiga

function evercraft:mobs/villager/names/set_name with storage eden:temp villager_names.taiga