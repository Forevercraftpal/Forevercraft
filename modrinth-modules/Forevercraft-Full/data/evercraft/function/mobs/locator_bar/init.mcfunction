schedule function evercraft:mobs/locator_bar/init 15s

execute if data storage eden:settings bestiary.misc{locator_assets:"disabled"} as @e[type=!#evercraft:mobs/invalid_for_settings,tag=bestiary.settings.applied,tag=!bestiary.settings.exclude] run function evercraft:mobs/locator_bar/default_icons with entity @s data.bestiary.locator_bar
execute if data storage eden:settings bestiary.misc{locator_assets:"enabled"} as @e[type=!#evercraft:mobs/invalid_for_settings,tag=bestiary.settings.applied,tag=!bestiary.settings.exclude] run function evercraft:mobs/locator_bar/resource_icons with entity @s data.bestiary.locator_bar

execute if data storage eden:settings bestiary.misc{locator_assets:"disabled"} as @e[type=armor_stand,tag=bestiary.village.name] run function evercraft:mobs/locator_bar/default_icons with entity @s data.bestiary.locator_bar
execute if data storage eden:settings bestiary.misc{locator_assets:"enabled"} as @e[type=armor_stand,tag=bestiary.village.name] run function evercraft:mobs/locator_bar/resource_icons with entity @s data.bestiary.locator_bar

execute if data storage eden:settings bestiary.misc{mobs_on_locator_bar:"enabled"} as @e[type=!#evercraft:mobs/invalid_for_settings,tag=bestiary.settings.applied,tag=!bestiary.settings.exclude] run function evercraft:mobs/locator_bar/set_range with entity @s data.bestiary.locator_bar
execute if data storage eden:settings bestiary.misc{mobs_on_locator_bar:"disabled"} as @e[type=!#evercraft:mobs/invalid_for_settings,tag=bestiary.settings.applied,tag=!bestiary.settings.exclude] run attribute @s waypoint_transmit_range base set 0