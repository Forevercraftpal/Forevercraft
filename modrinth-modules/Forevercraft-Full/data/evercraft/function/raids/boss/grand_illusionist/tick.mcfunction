# Grand Illusionist — Per-Tick AI
# Called from raids/boss/tick.mcfunction when #rd_boss_id = 6

# Skip if initializing
execute if entity @e[tag=ec.rd_boss,tag=ec.rd_initializing] run return 0

# Ambient particles — real boss has end_rod (subtle tell), fakes have enchant
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:end_rod ~ ~1.5 ~ 0.2 0.2 0.2 0.01 1
execute as @e[tag=ec.rd_gi_fake] at @s run particle minecraft:enchant ~ ~1.5 ~ 0.2 0.5 0.2 0.3 1

# Route to current phase
execute if score #rd_boss_phase ec.var matches 1 run function evercraft:raids/boss/grand_illusionist/phase/phase1
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/grand_illusionist/phase/phase2
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/grand_illusionist/phase/phase3
