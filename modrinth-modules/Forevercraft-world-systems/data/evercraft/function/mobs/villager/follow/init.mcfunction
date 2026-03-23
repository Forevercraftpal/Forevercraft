# 5t interval — villager pathing is smooth enough at 4 updates/sec (OPT Session 76)
schedule function evercraft:mobs/villager/follow/init 5t

execute as @a at @s unless entity @e[type=villager,tag=!bestiary.settings.exclude,distance=..6] run tag @s remove bestiary.villager.leader
execute as @a unless items entity @s weapon.* minecraft:emerald run tag @s remove bestiary.villager.leader

execute if data storage eden:settings bestiary.villager_settings{villager_follow:"disabled"} run return fail

execute as @a[gamemode=!spectator,tag=!bestiary.villager.leader] at @s if items entity @s weapon.* minecraft:emerald if entity @e[type=villager,tag=!bestiary.settings.exclude,distance=..6] run tag @s add bestiary.villager.leader

execute as @e[type=villager,tag=!bestiary.settings.exclude] at @s if entity @e[type=player,distance=..6,tag=bestiary.villager.leader] run function evercraft:mobs/villager/follow/exec