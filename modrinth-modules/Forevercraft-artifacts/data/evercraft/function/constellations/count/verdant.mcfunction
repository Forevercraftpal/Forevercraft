# Constellation Count — The Verdant Crown (Nature/Forest)
# Counts collected artifacts in this constellation. Run as: player
# Total: 10 artifacts

scoreboard players set @s ec.cn_verd 0
execute if entity @s[advancements={evercraft:artifacts/collected/nature_helmet=true}] run scoreboard players add @s ec.cn_verd 1
execute if entity @s[advancements={evercraft:artifacts/collected/nature_chestplate=true}] run scoreboard players add @s ec.cn_verd 1
execute if entity @s[advancements={evercraft:artifacts/collected/nature_leggings=true}] run scoreboard players add @s ec.cn_verd 1
execute if entity @s[advancements={evercraft:artifacts/collected/nature_boots=true}] run scoreboard players add @s ec.cn_verd 1
execute if entity @s[advancements={evercraft:artifacts/collected/nature_pickaxe=true}] run scoreboard players add @s ec.cn_verd 1
execute if entity @s[advancements={evercraft:artifacts/collected/nature_shovel=true}] run scoreboard players add @s ec.cn_verd 1
execute if entity @s[advancements={evercraft:artifacts/collected/nature_hoe=true}] run scoreboard players add @s ec.cn_verd 1
execute if entity @s[advancements={evercraft:artifacts/collected/farmers_almanac=true}] run scoreboard players add @s ec.cn_verd 1
execute if entity @s[advancements={evercraft:artifacts/collected/heartstone=true}] run scoreboard players add @s ec.cn_verd 1
execute if entity @s[advancements={evercraft:artifacts/collected/healers_salve=true}] run scoreboard players add @s ec.cn_verd 1
