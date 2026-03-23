# Lore Roll: Y-level depth override (overworld only)
# If player is below Y=50 in a surface biome, override to "Underground" (biome_id 25)
# Cave biomes (15=Lush Caves, 16=Dripstone, 17=Deep Dark) keep their own ID

# Get player Y position
execute store result score #lore_y ec.temp run data get entity @s Pos[1] 1

# Only override if below Y=50
execute unless score #lore_y ec.temp matches ..49 run return 0

# Only override surface biomes (0-14, 24) — NOT cave biomes (15-17)
execute if score @s ec.biome_id matches 0..14 run scoreboard players set @s ec.biome_id 25
execute if score @s ec.biome_id matches 24 run scoreboard players set @s ec.biome_id 25
