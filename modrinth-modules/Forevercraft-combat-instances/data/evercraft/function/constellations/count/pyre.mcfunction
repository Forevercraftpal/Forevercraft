# Constellation Count — The Pyreborn (Fire/Nether)
# Counts collected artifacts in this constellation. Run as: player
# Total: 11 artifacts

scoreboard players set @s ec.cn_pyre 0
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_helmet=true}] run scoreboard players add @s ec.cn_pyre 1
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_chestplate=true}] run scoreboard players add @s ec.cn_pyre 1
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_leggings=true}] run scoreboard players add @s ec.cn_pyre 1
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_boots=true}] run scoreboard players add @s ec.cn_pyre 1
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_pickaxe=true}] run scoreboard players add @s ec.cn_pyre 1
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_shovel=true}] run scoreboard players add @s ec.cn_pyre 1
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_hoe=true}] run scoreboard players add @s ec.cn_pyre 1
execute if entity @s[advancements={evercraft:artifacts/collected/inferno_blade=true}] run scoreboard players add @s ec.cn_pyre 1
execute if entity @s[advancements={evercraft:artifacts/collected/blaze_core=true}] run scoreboard players add @s ec.cn_pyre 1
execute if entity @s[advancements={evercraft:artifacts/collected/phoenix_feather=true}] run scoreboard players add @s ec.cn_pyre 1
execute if entity @s[advancements={evercraft:artifacts/collected/nether_star_shard=true}] run scoreboard players add @s ec.cn_pyre 1
