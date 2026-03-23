# Biome Mastery — Check for level-up at exact time thresholds
# @s = player, ec.bm_time = current seconds in this biome

# Compute current level from time
scoreboard players set @s ec.bm_level 0
execute if score @s ec.bm_time matches 1800.. run scoreboard players set @s ec.bm_level 1
execute if score @s ec.bm_time matches 7200.. run scoreboard players set @s ec.bm_level 2
execute if score @s ec.bm_time matches 21600.. run scoreboard players set @s ec.bm_level 3
execute if score @s ec.bm_time matches 54000.. run scoreboard players set @s ec.bm_level 4
execute if score @s ec.bm_time matches 108000.. run scoreboard players set @s ec.bm_level 5

# Fire level-up notification at exact thresholds only
execute if score @s ec.bm_time matches 1800 run function evercraft:biome_mastery/levelup
execute if score @s ec.bm_time matches 7200 run function evercraft:biome_mastery/levelup
execute if score @s ec.bm_time matches 21600 run function evercraft:biome_mastery/levelup
execute if score @s ec.bm_time matches 54000 run function evercraft:biome_mastery/levelup
execute if score @s ec.bm_time matches 108000 run function evercraft:biome_mastery/levelup
