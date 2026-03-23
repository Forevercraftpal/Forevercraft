# Constellation Count — The Tidewalker (Ocean/Water)
# Counts collected artifacts in this constellation. Run as: player
# Total: 10 artifacts

scoreboard players set @s ec.cn_tide 0
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_helmet=true}] run scoreboard players add @s ec.cn_tide 1
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_chestplate=true}] run scoreboard players add @s ec.cn_tide 1
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_leggings=true}] run scoreboard players add @s ec.cn_tide 1
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_boots=true}] run scoreboard players add @s ec.cn_tide 1
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_pickaxe=true}] run scoreboard players add @s ec.cn_tide 1
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_shovel=true}] run scoreboard players add @s ec.cn_tide 1
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_hoe=true}] run scoreboard players add @s ec.cn_tide 1
execute if entity @s[advancements={evercraft:artifacts/collected/coral_blade=true}] run scoreboard players add @s ec.cn_tide 1
execute if entity @s[advancements={evercraft:artifacts/collected/anglers_pearl=true}] run scoreboard players add @s ec.cn_tide 1
execute if entity @s[advancements={evercraft:artifacts/collected/sea_heart_relic=true}] run scoreboard players add @s ec.cn_tide 1
