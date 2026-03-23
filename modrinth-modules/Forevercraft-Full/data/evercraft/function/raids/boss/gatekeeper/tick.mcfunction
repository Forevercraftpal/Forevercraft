# Gatekeeper — Per-Tick AI
# Called from raids/boss/tick.mcfunction when #rd_boss_id = 5

# Skip if initializing
execute if entity @e[tag=ec.rd_boss,tag=ec.rd_initializing] run return 0

# Ambient particles — ender/portal theme
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:portal ~ ~1.5 ~ 0.3 0.5 0.3 0.5 3
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:enchant ~ ~1 ~ 0.3 0.3 0.3 0.3 2

# Route to current phase
execute if score #rd_boss_phase ec.var matches 1 run function evercraft:raids/boss/gatekeeper/phase/phase1
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/gatekeeper/phase/phase2
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/gatekeeper/phase/phase3
