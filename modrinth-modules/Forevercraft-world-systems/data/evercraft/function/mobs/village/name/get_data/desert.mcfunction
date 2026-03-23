data modify storage eden:temp village.desert.x set from entity @s Brain.memories.minecraft:meeting_point.value.pos[0]
data modify storage eden:temp village.desert.y set from entity @s Brain.memories.minecraft:meeting_point.value.pos[1]
data modify storage eden:temp village.desert.z set from entity @s Brain.memories.minecraft:meeting_point.value.pos[2]

execute store result storage eden:temp village.desert.id int 1 run random value 1..250
$data modify storage eden:temp village.desert.name set from storage eden:database names.village.desert.name.$(id)

data modify storage eden:temp village.desert.color set from storage eden:database color.villager.desert
data modify storage eden:temp village.desert.waypoint_range set from storage eden:settings bestiary.villager_settings.locator_range
data modify storage eden:temp village.desert.waypoint_color set from storage eden:settings bestiary.villager_settings.locator_color

function evercraft:mobs/village/name/set_name with storage eden:temp village.desert

tag @s add bestiary.settings.villagename.applied