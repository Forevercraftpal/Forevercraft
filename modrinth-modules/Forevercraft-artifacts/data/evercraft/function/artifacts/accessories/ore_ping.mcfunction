# Ore Ping — Spawns particles at player when ores are nearby
# Used by: Miner's Lantern (8b), Codex of Everything (16b), Claude Companion (12b)
# Checks common ore blocks in a sampling pattern around the player

# Diamond ore
execute at @s if block ~4 ~ ~ diamond_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~-4 ~ ~ diamond_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~ ~-2 ~ diamond_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~ ~ ~4 diamond_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~ ~ ~-4 diamond_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~2 ~-1 ~2 diamond_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~-2 ~-1 ~-2 diamond_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3

# Deepslate diamond ore
execute at @s if block ~4 ~ ~ deepslate_diamond_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~-4 ~ ~ deepslate_diamond_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~ ~-2 ~ deepslate_diamond_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~ ~ ~4 deepslate_diamond_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3

# Emerald ore
execute at @s if block ~3 ~ ~ emerald_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~-3 ~ ~ emerald_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~ ~ ~3 emerald_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~3 ~-1 ~3 deepslate_emerald_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3

# Gold ore / deepslate gold / nether gold
execute at @s if block ~5 ~ ~ gold_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~-5 ~ ~ gold_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~ ~-3 ~ deepslate_gold_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~3 ~ ~3 nether_gold_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3

# Iron ore
execute at @s if block ~5 ~1 ~ iron_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~-5 ~ ~-2 iron_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~ ~-2 ~5 deepslate_iron_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3

# Ancient debris (nether)
execute at @s if block ~3 ~ ~ ancient_debris run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~-3 ~ ~ ancient_debris run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~ ~-2 ~ ancient_debris run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~ ~ ~3 ancient_debris run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~2 ~-1 ~2 ancient_debris run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5

# Lapis ore
execute at @s if block ~4 ~1 ~ lapis_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~ ~-2 ~4 deepslate_lapis_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3

# Redstone ore
execute at @s if block ~5 ~ ~2 redstone_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~-3 ~-1 ~-3 deepslate_redstone_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3

# Copper ore
execute at @s if block ~6 ~ ~ copper_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
execute at @s if block ~ ~-2 ~-6 deepslate_copper_ore run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
