schedule function evercraft:mobs/misc_modifications 5s

# OPT: Added limit=50 caps to prevent unbounded entity processing on mob farms
execute as @e[type=#evercraft:mobs/can_drown,tag=bestiary.settings.drown.disabled,tag=!bestiary.settings.exclude,limit=50] run data modify entity @s Air set value 300s
execute as @e[type=#evercraft:mobs/can_breed,tag=bestiary.settings.breed.disabled,tag=!bestiary.settings.exclude,limit=50] run function evercraft:mobs/disable_breeding
execute if data storage eden:settings bestiary.misc{egglay:"disabled"} as @e[type=minecraft:chicken,tag=!bestiary.settings.exclude,limit=50] run data modify entity @s EggLayTime set value 6500
execute if data storage eden:settings bestiary.misc{rabbitcarrot:"disabled"} as @e[type=minecraft:rabbit,tag=!bestiary.settings.exclude,limit=50] run data modify entity @s MoreCarrotTicks set value 6500
execute if data storage eden:settings bestiary.misc{snifferbrain:"disabled"} as @e[type=minecraft:sniffer,tag=!bestiary.settings.exclude,limit=50] run data remove entity @s Brain.memories.minecraft:sniffer_explored_positions
execute if data storage eden:settings bestiary.villager{restock:"enabled"} as @e[type=minecraft:villager,tag=!bestiary.settings.exclude,limit=50] run data modify entity @s RestocksToday set value 0
execute if data storage eden:settings bestiary.villager{gossip:"disabled"} as @e[type=minecraft:villager,tag=!bestiary.settings.exclude,limit=50] run data modify entity @s Gossips set value []
