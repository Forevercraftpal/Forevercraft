# Summer Heat Scorch — Per-player eligibility check
# Run as player, at player position
# Conditions: hot biome, no shade, no chestplate+helmet, 4-day cooldown, 5% chance

# --- Cooldown: skip if scorched within last 4 days ---
scoreboard players operation #heat_calc ec.temp = #visual_day ec.var
scoreboard players operation #heat_calc ec.temp -= @s ec.last_scorch
execute if score #heat_calc ec.temp matches ..3 run return 0

# --- Biome: must be in a hot biome (desert or badlands variants) ---
execute unless biome ~ ~ ~ minecraft:desert unless biome ~ ~ ~ minecraft:badlands unless biome ~ ~ ~ minecraft:eroded_badlands unless biome ~ ~ ~ minecraft:wooded_badlands run return 0

# --- Armor: protected if wearing BOTH chestplate AND helmet ---
execute if items entity @s armor.chest * if items entity @s armor.head * run return 0

# --- Shade: protected if any block from y+2 to y+6 above is not air ---
execute unless block ~ ~2 ~ air run return 0
execute unless block ~ ~3 ~ air run return 0
execute unless block ~ ~4 ~ air run return 0
execute unless block ~ ~5 ~ air run return 0
execute unless block ~ ~6 ~ air run return 0

# --- Chance: 5% (1 in 20) ---
execute store result score @s ec.temp run random value 1..20
execute unless score @s ec.temp matches 1 run return 0

# All checks passed — SCORCH!
function evercraft:seasons/effects/summer_heat_scorch
