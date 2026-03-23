# Constellation Count — The Shadow's Edge (Dark/Stealth)
# Counts collected artifacts in this constellation. Run as: player
# Total: 10 artifacts

scoreboard players set @s ec.cn_shade 0
execute if entity @s[advancements={evercraft:artifacts/collected/shadow_helmet=true}] run scoreboard players add @s ec.cn_shade 1
execute if entity @s[advancements={evercraft:artifacts/collected/shadow_chestplate=true}] run scoreboard players add @s ec.cn_shade 1
execute if entity @s[advancements={evercraft:artifacts/collected/shadow_leggings=true}] run scoreboard players add @s ec.cn_shade 1
execute if entity @s[advancements={evercraft:artifacts/collected/shadow_boots=true}] run scoreboard players add @s ec.cn_shade 1
execute if entity @s[advancements={evercraft:artifacts/collected/phantom_helmet=true}] run scoreboard players add @s ec.cn_shade 1
execute if entity @s[advancements={evercraft:artifacts/collected/phantom_chestplate=true}] run scoreboard players add @s ec.cn_shade 1
execute if entity @s[advancements={evercraft:artifacts/collected/phantom_leggings=true}] run scoreboard players add @s ec.cn_shade 1
execute if entity @s[advancements={evercraft:artifacts/collected/phantom_boots=true}] run scoreboard players add @s ec.cn_shade 1
execute if entity @s[advancements={evercraft:artifacts/collected/phantom_charm=true}] run scoreboard players add @s ec.cn_shade 1
execute if entity @s[advancements={evercraft:artifacts/collected/helm_of_shadows=true}] run scoreboard players add @s ec.cn_shade 1
