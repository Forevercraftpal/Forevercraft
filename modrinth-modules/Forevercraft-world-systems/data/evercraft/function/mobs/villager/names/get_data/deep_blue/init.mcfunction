execute store result storage eden:temp villager_names.deep_blue.id.first_name int 1 run random value 1..75
execute store result storage eden:temp villager_names.deep_blue.id.last_name int 1 run random value 1..75

function evercraft:mobs/villager/names/get_data/deep_blue/copy_to_temp with storage eden:temp villager_names.deep_blue.id

data modify storage eden:temp villager_names.deep_blue.color set from storage eden:database color.villager.deep_blue

function evercraft:mobs/villager/names/set_name with storage eden:temp villager_names.deep_blue