# Lore Roll: Category weights when NOT in a structure
# Biome: 45%, Universal: 35%, Lore: 20%, Structure: 0%
# Roll is in #lore_roll ec.temp (1-100)

# 1-45 = biome
execute if score #lore_roll ec.temp matches 1..45 run scoreboard players set @s ec.lore_cat 1
# 46-80 = universal
execute if score #lore_roll ec.temp matches 46..80 run scoreboard players set @s ec.lore_cat 3
# 81-100 = lore narrative
execute if score #lore_roll ec.temp matches 81..100 run scoreboard players set @s ec.lore_cat 4
