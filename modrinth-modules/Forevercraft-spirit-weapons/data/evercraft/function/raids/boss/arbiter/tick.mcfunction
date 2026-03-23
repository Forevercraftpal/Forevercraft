# Arbiter — Per-Tick AI
# Called from raids/boss/tick.mcfunction when #rd_boss_id = 4

# Skip if initializing
execute if entity @e[tag=ec.rd_boss,tag=ec.rd_initializing] run return 0

# Ambient particles — wind/gale theme
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:cloud ~ ~1 ~ 0.4 0.4 0.4 0.05 2
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:white_ash ~ ~1.5 ~ 1 1 1 0.01 3

# Route to current phase
execute if score #rd_boss_phase ec.var matches 1 run function evercraft:raids/boss/arbiter/phase/phase1
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/arbiter/phase/phase2
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/arbiter/phase/phase3
