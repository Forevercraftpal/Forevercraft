# Hollow Sovereign — Per-Tick AI
# Called from raids/boss/tick.mcfunction when #rd_boss_id = 1

# Skip if boss is still initializing
execute if entity @e[tag=ec.rd_boss,tag=ec.rd_initializing] run return 0

# Ambient particles — sculk theme (always active)
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:sculk_soul ~ ~1.5 ~ 0.5 0.5 0.5 0.02 2
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:sculk_charge_pop ~ ~0.5 ~ 0.3 0.2 0.3 0.01 1

# Route to current phase behavior
execute if score #rd_boss_phase ec.var matches 1 run function evercraft:raids/boss/hollow_sovereign/phase/phase1
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/hollow_sovereign/phase/phase2
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/hollow_sovereign/phase/phase3
