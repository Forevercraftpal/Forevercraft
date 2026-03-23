data modify storage eden:temp village.snow.x set from entity @s Brain.memories.minecraft:meeting_point.value.pos[0]
data modify storage eden:temp village.snow.y set from entity @s Brain.memories.minecraft:meeting_point.value.pos[1]
data modify storage eden:temp village.snow.z set from entity @s Brain.memories.minecraft:meeting_point.value.pos[2]

execute store result storage eden:temp village.snow.id int 1 run random value 1..250
$data modify storage eden:temp village.snow.name set from storage eden:database names.village.snow.name.$(id)

data modify storage eden:temp village.snow.color set from storage eden:database color.villager.snow
data modify storage eden:temp village.snow.waypoint_range set from storage eden:settings bestiary.villager_settings.locator_range
data modify storage eden:temp village.snow.waypoint_color set from storage eden:settings bestiary.villager_settings.locator_color

function evercraft:mobs/village/name/set_name with storage eden:temp village.snow

tag @s add bestiary.settings.villagename.applied