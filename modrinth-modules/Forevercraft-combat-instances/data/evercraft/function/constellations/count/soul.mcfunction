# Constellation Count — The Soulbinder (Undead/Soul)
# Counts collected artifacts in this constellation. Run as: player
# Total: 10 artifacts

scoreboard players set @s ec.cn_soul 0
execute if entity @s[advancements={evercraft:artifacts/collected/wither_helmet=true}] run scoreboard players add @s ec.cn_soul 1
execute if entity @s[advancements={evercraft:artifacts/collected/wither_chestplate=true}] run scoreboard players add @s ec.cn_soul 1
execute if entity @s[advancements={evercraft:artifacts/collected/wither_leggings=true}] run scoreboard players add @s ec.cn_soul 1
execute if entity @s[advancements={evercraft:artifacts/collected/wither_boots=true}] run scoreboard players add @s ec.cn_soul 1
execute if entity @s[advancements={evercraft:artifacts/collected/sculk_helmet=true}] run scoreboard players add @s ec.cn_soul 1
execute if entity @s[advancements={evercraft:artifacts/collected/sculk_chestplate=true}] run scoreboard players add @s ec.cn_soul 1
execute if entity @s[advancements={evercraft:artifacts/collected/sculk_leggings=true}] run scoreboard players add @s ec.cn_soul 1
execute if entity @s[advancements={evercraft:artifacts/collected/sculk_boots=true}] run scoreboard players add @s ec.cn_soul 1
execute if entity @s[advancements={evercraft:artifacts/collected/soul_lantern_fragment=true}] run scoreboard players add @s ec.cn_soul 1
execute if entity @s[advancements={evercraft:artifacts/collected/wither_rose_crown=true}] run scoreboard players add @s ec.cn_soul 1
