execute as @s[type=villager] at @s if predicate evercraft:mobs/location/in_deep_blue run return run function evercraft:mobs/villager/names/get_data/deep_blue/init

execute as @s[type=villager,predicate=evercraft:mobs/entity/is_desert_type] run function evercraft:mobs/villager/names/get_data/desert/init
execute as @s[type=villager,predicate=evercraft:mobs/entity/is_jungle_type] run function evercraft:mobs/villager/names/get_data/jungle/init
execute as @s[type=villager,predicate=evercraft:mobs/entity/is_plains_type] run function evercraft:mobs/villager/names/get_data/plains/init
execute as @s[type=villager,predicate=evercraft:mobs/entity/is_savanna_type] run function evercraft:mobs/villager/names/get_data/savanna/init
execute as @s[type=villager,predicate=evercraft:mobs/entity/is_snow_type] run function evercraft:mobs/villager/names/get_data/snow/init
execute as @s[type=villager,predicate=evercraft:mobs/entity/is_swamp_type] run function evercraft:mobs/villager/names/get_data/swamp/init
execute as @s[type=villager,predicate=evercraft:mobs/entity/is_taiga_type] run function evercraft:mobs/villager/names/get_data/taiga/init