# Constellation Count — The Stormcaller (Wind/Storm)
# Counts collected artifacts in this constellation. Run as: player
# Total: 10 artifacts

scoreboard players set @s ec.cn_storm 0
execute if entity @s[advancements={evercraft:artifacts/collected/storm_helmet=true}] run scoreboard players add @s ec.cn_storm 1
execute if entity @s[advancements={evercraft:artifacts/collected/storm_chestplate=true}] run scoreboard players add @s ec.cn_storm 1
execute if entity @s[advancements={evercraft:artifacts/collected/storm_leggings=true}] run scoreboard players add @s ec.cn_storm 1
execute if entity @s[advancements={evercraft:artifacts/collected/storm_boots=true}] run scoreboard players add @s ec.cn_storm 1
execute if entity @s[advancements={evercraft:artifacts/collected/storm_pickaxe=true}] run scoreboard players add @s ec.cn_storm 1
execute if entity @s[advancements={evercraft:artifacts/collected/storm_shovel=true}] run scoreboard players add @s ec.cn_storm 1
execute if entity @s[advancements={evercraft:artifacts/collected/storm_hoe=true}] run scoreboard players add @s ec.cn_storm 1
execute if entity @s[advancements={evercraft:artifacts/collected/stormcatcher_shard=true}] run scoreboard players add @s ec.cn_storm 1
execute if entity @s[advancements={evercraft:artifacts/collected/stormcaller_bow=true}] run scoreboard players add @s ec.cn_storm 1
execute if entity @s[advancements={evercraft:artifacts/collected/wind_chime=true}] run scoreboard players add @s ec.cn_storm 1
