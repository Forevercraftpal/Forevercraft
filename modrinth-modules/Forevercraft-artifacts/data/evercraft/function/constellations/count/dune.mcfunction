# Constellation Count — The Dune Sovereign (Desert/Badlands)
# Counts collected artifacts in this constellation. Run as: player
# Total: 10 artifacts

scoreboard players set @s ec.cn_dune 0
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_helmet=true}] run scoreboard players add @s ec.cn_dune 1
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_chestplate=true}] run scoreboard players add @s ec.cn_dune 1
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_leggings=true}] run scoreboard players add @s ec.cn_dune 1
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_boots=true}] run scoreboard players add @s ec.cn_dune 1
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_shield=true}] run scoreboard players add @s ec.cn_dune 1
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer=true}] run scoreboard players add @s ec.cn_dune 1
execute if entity @s[advancements={evercraft:artifacts/collected/celestial_helmet=true}] run scoreboard players add @s ec.cn_dune 1
execute if entity @s[advancements={evercraft:artifacts/collected/celestial_chestplate=true}] run scoreboard players add @s ec.cn_dune 1
execute if entity @s[advancements={evercraft:artifacts/collected/celestial_leggings=true}] run scoreboard players add @s ec.cn_dune 1
execute if entity @s[advancements={evercraft:artifacts/collected/celestial_boots=true}] run scoreboard players add @s ec.cn_dune 1
