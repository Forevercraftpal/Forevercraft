schedule function evercraft:mobs/village/init 1s

#get data and spawn armor stand at meeting point
execute if data storage eden:settings bestiary.villager_settings{villagename:"enabled"} as @e[type=villager,tag=!bestiary.settings.exclude,tag=!bestiary.settings.villagename.applied] at @s if data entity @s Brain.memories.minecraft:meeting_point.value run function evercraft:mobs/village/name/init

#summon texyt display at meeting point if possible
execute as @e[type=armor_stand,tag=bestiary.village.name] at @s run function evercraft:mobs/village/name/set_display with entity @s

#kill armor stand & text displays at meeting points
execute as @e[type=armor_stand,tag=bestiary.village.name] if data storage eden:settings bestiary.villager_settings{villagename:"disabled"} run kill @s
execute as @e[type=text_display,tag=bestiary.village.name] at @s unless entity @e[type=armor_stand,tag=bestiary.village.name,distance=..10] run kill @s
execute as @e[type=text_display,tag=bestiary.village.name] at @s unless block ~ ~ ~ #minecraft:air run kill @s
execute as @e[type=armor_stand,tag=bestiary.village.name] at @s unless block ~ ~ ~ minecraft:bell run kill @s

#remove tag if meeting point is lost
execute as @e[type=villager,tag=!bestiary.settings.exclude,tag=bestiary.settings.villagename.applied] unless data entity @s Brain.memories.minecraft:meeting_point.value run tag @s remove bestiary.settings.villagename.applied
execute as @e[type=villager,tag=!bestiary.settings.exclude,tag=bestiary.settings.villagename.applied] at @s unless entity @e[type=armor_stand,tag=bestiary.village.name,distance=..128] run tag @s remove bestiary.settings.villagename.applied

#heal villagers when enabled and near meeting point
execute unless data storage eden:settings bestiary.villager_settings{villagecenter_healing:"disabled"} run function evercraft:mobs/village/healing with storage eden:settings bestiary.villager_settings

#bell particles
execute as @e[type=armor_stand,tag=bestiary.village.name] at @s run particle minecraft:wax_on ~ ~.5 ~ .4 .3 .4 .5 1

#rename triggers
execute if data storage eden:settings bestiary.villager_settings{villagename_rename:"enabled"} as @a[scores={bestiary.used.bell=1..}] at @s if items entity @s weapon.mainhand minecraft:name_tag run function evercraft:mobs/village/rename/check_hand
scoreboard players set @a[scores={bestiary.used.bell=1..}] bestiary.used.bell 0

#initialize village tracking tags for new players (prevents false Farewell on join)
execute as @a[tag=!at_village,tag=!not_at_village] run tag @s add not_at_village

#display village name message
execute unless data storage eden:settings bestiary.villager_settings{villagename_msg:"disabled"} as @a[tag=not_at_village] at @s if entity @e[type=armor_stand,tag=bestiary.village.name,distance=..96] run function evercraft:mobs/village/message/entering with entity @n[type=armor_stand,tag=bestiary.village.name]
execute as @a[tag=at_village] at @s unless entity @e[type=armor_stand,tag=bestiary.village.name,distance=..96] run function evercraft:mobs/village/message/exiting with storage eden:temp village