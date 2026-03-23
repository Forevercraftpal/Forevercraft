# Constellation Count — The Earthshaker (Mining/Underground)
# Counts collected artifacts in this constellation. Run as: player
# Total: 10 artifacts

scoreboard players set @s ec.cn_earth 0
execute if entity @s[advancements={evercraft:artifacts/collected/golem_helmet=true}] run scoreboard players add @s ec.cn_earth 1
execute if entity @s[advancements={evercraft:artifacts/collected/golem_chestplate=true}] run scoreboard players add @s ec.cn_earth 1
execute if entity @s[advancements={evercraft:artifacts/collected/golem_leggings=true}] run scoreboard players add @s ec.cn_earth 1
execute if entity @s[advancements={evercraft:artifacts/collected/golem_boots=true}] run scoreboard players add @s ec.cn_earth 1
execute if entity @s[advancements={evercraft:artifacts/collected/journey_pickaxe=true}] run scoreboard players add @s ec.cn_earth 1
execute if entity @s[advancements={evercraft:artifacts/collected/journey_shovel=true}] run scoreboard players add @s ec.cn_earth 1
execute if entity @s[advancements={evercraft:artifacts/collected/miners_lantern=true}] run scoreboard players add @s ec.cn_earth 1
execute if entity @s[advancements={evercraft:artifacts/collected/spelunkers_echo=true}] run scoreboard players add @s ec.cn_earth 1
execute if entity @s[advancements={evercraft:artifacts/collected/earthshaker=true}] run scoreboard players add @s ec.cn_earth 1
execute if entity @s[advancements={evercraft:artifacts/collected/fantasy_pickaxe=true}] run scoreboard players add @s ec.cn_earth 1
