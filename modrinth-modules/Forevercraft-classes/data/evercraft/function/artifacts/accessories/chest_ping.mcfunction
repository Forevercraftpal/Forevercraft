# Chest/Treasure Ping — Spawns particles when chests, barrels, or spawners are nearby
# Used by: Spelunker's Echo (24b), Codex of Everything, Celestial 2pc
# Samples common positions around the player for treasure containers

# Chests
execute at @s if block ~3 ~ ~ chest run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~-3 ~ ~ chest run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~ ~-2 ~ chest run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~ ~ ~3 chest run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~ ~ ~-3 chest run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~5 ~1 ~ chest run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~-5 ~-1 ~ chest run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~ ~-3 ~5 chest run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~4 ~ ~4 chest run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5

# Trapped chests
execute at @s if block ~3 ~ ~ trapped_chest run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~-3 ~ ~ trapped_chest run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~ ~-2 ~ trapped_chest run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5

# Barrels
execute at @s if block ~3 ~1 ~ barrel run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~-3 ~ ~2 barrel run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~ ~-1 ~-3 barrel run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5
execute at @s if block ~5 ~ ~-2 barrel run particle composter ~ ~0.5 ~ 0.3 0.3 0.3 0.01 5

# Spawners
execute at @s if block ~4 ~ ~ spawner run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 8
execute at @s if block ~-4 ~ ~ spawner run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 8
execute at @s if block ~ ~-2 ~ spawner run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 8
execute at @s if block ~ ~ ~4 spawner run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 8
execute at @s if block ~ ~ ~-4 spawner run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 8
execute at @s if block ~3 ~-1 ~3 spawner run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 8
execute at @s if block ~-3 ~1 ~-3 spawner run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 8

# Trial spawners
execute at @s if block ~4 ~ ~ trial_spawner run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 8
execute at @s if block ~-4 ~-1 ~ trial_spawner run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 8
execute at @s if block ~ ~ ~4 trial_spawner run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 8
