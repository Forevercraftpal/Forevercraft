# Lore Roll: Category weights when IN a structure
# Structure: 25%, Biome: 35%, Universal: 25%, Lore: 15%
# Roll is in #lore_roll ec.temp (1-100)

# 1-25 = structure
execute if score #lore_roll ec.temp matches 1..25 run scoreboard players set @s ec.lore_cat 2
# 26-60 = biome
execute if score #lore_roll ec.temp matches 26..60 run scoreboard players set @s ec.lore_cat 1
# 61-85 = universal
execute if score #lore_roll ec.temp matches 61..85 run scoreboard players set @s ec.lore_cat 3
# 86-100 = lore narrative
execute if score #lore_roll ec.temp matches 86..100 run scoreboard players set @s ec.lore_cat 4
