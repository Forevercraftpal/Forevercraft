# Combat village: Hunter
execute as @e[type=villager,tag=!more_professions_verified,distance=..48,sort=random,limit=1] run function evercraft:professions/berries/convert_to_hunter
execute as @e[type=villager,tag=more_professions_verified,distance=..48,limit=1,sort=nearest] run tag @s add vs.just_converted
