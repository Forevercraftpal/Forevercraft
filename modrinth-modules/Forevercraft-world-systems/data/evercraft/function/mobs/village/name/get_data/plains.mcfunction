data modify storage eden:temp village.plains.x set from entity @s Brain.memories.minecraft:meeting_point.value.pos[0]
data modify storage eden:temp village.plains.y set from entity @s Brain.memories.minecraft:meeting_point.value.pos[1]
data modify storage eden:temp village.plains.z set from entity @s Brain.memories.minecraft:meeting_point.value.pos[2]

execute store result storage eden:temp village.plains.id int 1 run random value 1..250
$data modify storage eden:temp village.plains.name set from storage eden:database names.village.plains.name.$(id)

data modify storage eden:temp village.plains.color set from storage eden:database color.villager.plains
data modify storage eden:temp village.plains.waypoint_range set from storage eden:settings bestiary.villager_settings.locator_range
data modify storage eden:temp village.plains.waypoint_color set from storage eden:settings bestiary.villager_settings.locator_color

function evercraft:mobs/village/name/set_name with storage eden:temp village.plains

tag @s add bestiary.settings.villagename.applied