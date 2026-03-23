# Constellation Count — The Starweaver (Celestial/End)
# Counts collected artifacts in this constellation. Run as: player
# Total: 8 artifacts

scoreboard players set @s ec.cn_star 0
execute if entity @s[advancements={evercraft:artifacts/collected/ender_helmet=true}] run scoreboard players add @s ec.cn_star 1
execute if entity @s[advancements={evercraft:artifacts/collected/ender_chestplate=true}] run scoreboard players add @s ec.cn_star 1
execute if entity @s[advancements={evercraft:artifacts/collected/ender_leggings=true}] run scoreboard players add @s ec.cn_star 1
execute if entity @s[advancements={evercraft:artifacts/collected/ender_boots=true}] run scoreboard players add @s ec.cn_star 1
execute if entity @s[advancements={evercraft:artifacts/collected/void_heart=true}] run scoreboard players add @s ec.cn_star 1
execute if entity @s[advancements={evercraft:artifacts/collected/call_of_the_void=true}] run scoreboard players add @s ec.cn_star 1
execute if entity @s[advancements={evercraft:artifacts/collected/prism_of_light=true}] run scoreboard players add @s ec.cn_star 1
execute if entity @s[advancements={evercraft:artifacts/collected/heart_of_the_void=true}] run scoreboard players add @s ec.cn_star 1
