data modify storage eden:temp village.jungle.x set from entity @s Brain.memories.minecraft:meeting_point.value.pos[0]
data modify storage eden:temp village.jungle.y set from entity @s Brain.memories.minecraft:meeting_point.value.pos[1]
data modify storage eden:temp village.jungle.z set from entity @s Brain.memories.minecraft:meeting_point.value.pos[2]

execute store result storage eden:temp village.jungle.id int 1 run random value 1..101
$data modify storage eden:temp village.jungle.name set from storage eden:database names.village.jungle.name.$(id)

data modify storage eden:temp village.jungle.color set from storage eden:database color.villager.jungle
data modify storage eden:temp village.jungle.waypoint_range set from storage eden:settings bestiary.villager_settings.locator_range
data modify storage eden:temp village.jungle.waypoint_color set from storage eden:settings bestiary.villager_settings.locator_color

function evercraft:mobs/village/name/set_name with storage eden:temp village.jungle

tag @s add bestiary.settings.villagename.applied