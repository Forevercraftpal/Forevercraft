# Gilded Tyrant — Per-Tick AI
# Called from raids/boss/tick.mcfunction when #rd_boss_id = 3

# Skip if initializing
execute if entity @e[tag=ec.rd_boss,tag=ec.rd_initializing] run return 0

# Ambient particles — gold/fire theme
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:flame ~ ~1.5 ~ 0.3 0.3 0.3 0.02 2
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 0.01 1

# Route to current phase
execute if score #rd_boss_phase ec.var matches 1 run function evercraft:raids/boss/gilded_tyrant/phase/phase1
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/gilded_tyrant/phase/phase2
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/gilded_tyrant/phase/phase3
