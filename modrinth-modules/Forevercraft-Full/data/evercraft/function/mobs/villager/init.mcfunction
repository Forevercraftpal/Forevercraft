execute if data storage eden:settings bestiary.villager_settings{customname:"enabled"} run function evercraft:mobs/villager/names/init

$execute if predicate {"condition":"minecraft:random_chance","chance":$(pet)} run function evercraft:mobs/villager/companions/init