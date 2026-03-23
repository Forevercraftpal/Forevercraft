execute at @e[type=area_effect_cloud,tag=trim_ward_xp] as @p[advancements={evercraft:trim/kill_mob=true}] at @s as @e[type=experience_orb,distance=..8] store result entity @s Value short 2 run data get entity @s Value
execute at @e[type=area_effect_cloud,tag=trim_ward_xp] as @p[advancements={evercraft:trim/kill_mob=true}] run advancement revoke @s only evercraft:trim/kill_mob
