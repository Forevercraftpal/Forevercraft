# Scholarly village: Artificer or Wise Wanderer (random)
execute store result score #vs_roll vs.temp run random value 1..2
execute if score #vs_roll vs.temp matches 1 as @e[type=villager,tag=!more_professions_verified,distance=..48,sort=random,limit=1] run function evercraft:professions/berries/convert_to_artificer
execute if score #vs_roll vs.temp matches 2 as @e[type=villager,tag=!more_professions_verified,distance=..48,sort=random,limit=1] run function evercraft:professions/berries/convert_to_wise_wanderer
execute as @e[type=villager,tag=more_professions_verified,distance=..48,limit=1,sort=nearest] run tag @s add vs.just_converted
