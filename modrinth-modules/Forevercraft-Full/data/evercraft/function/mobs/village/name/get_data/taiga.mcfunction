data modify storage eden:temp village.taiga.x set from entity @s Brain.memories.minecraft:meeting_point.value.pos[0]
data modify storage eden:temp village.taiga.y set from entity @s Brain.memories.minecraft:meeting_point.value.pos[1]
data modify storage eden:temp village.taiga.z set from entity @s Brain.memories.minecraft:meeting_point.value.pos[2]

execute store result storage eden:temp village.taiga.id int 1 run random value 1..250
$data modify storage eden:temp village.taiga.name set from storage eden:database names.village.taiga.name.$(id)

data modify storage eden:temp village.taiga.color set from storage eden:database color.villager.taiga
data modify storage eden:temp village.taiga.waypoint_range set from storage eden:settings bestiary.villager_settings.locator_range
data modify storage eden:temp village.taiga.waypoint_color set from storage eden:settings bestiary.villager_settings.locator_color

function evercraft:mobs/village/name/set_name with storage eden:temp village.taiga

tag @s add bestiary.settings.villagename.applied