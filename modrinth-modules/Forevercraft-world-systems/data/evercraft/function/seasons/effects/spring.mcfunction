# Spring Effects — 1s tick
# Fresh green particles + periodic animal spawns and flower generation

# Nature particles (green sparkles)
execute as @a at @s run particle happy_villager ~ ~1 ~ 8 2 8 0.1 2

# Pollen/spore particles
execute as @a at @s run particle dust{color:[0.5,0.9,0.3],scale:0.4} ~ ~2 ~ 10 3 10 0.01 1

# === Animal Spawns (every 60s) ===
scoreboard players add #spring_spawn_cd ec.var 1
execute if score #spring_spawn_cd ec.var matches 60.. run function evercraft:seasons/effects/spring_spawns
execute if score #spring_spawn_cd ec.var matches 60.. run scoreboard players set #spring_spawn_cd ec.var 0

# === Flower Generation (every 30s) ===
scoreboard players add #spring_flower_cd ec.var 1
execute if score #spring_flower_cd ec.var matches 30.. run function evercraft:seasons/effects/spring_flowers
execute if score #spring_flower_cd ec.var matches 30.. run scoreboard players set #spring_flower_cd ec.var 0
