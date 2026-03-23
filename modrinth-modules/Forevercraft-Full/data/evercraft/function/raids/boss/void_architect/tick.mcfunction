# Void Architect — Per-Tick AI
# Called from raids/boss/tick.mcfunction when #rd_boss_id = 2

# Skip if initializing
execute if entity @e[tag=ec.rd_boss,tag=ec.rd_initializing] run return 0

# Enderman leash-back — prevent hardcoded teleport from water/rain/eye contact
# If boss is more than 25 blocks from arena center, snap back
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @e[type=marker,tag=rd.center,limit=1] unless entity @s[distance=..25] run tp @s ~ ~ ~

# Ambient particles — end/void theme
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:portal ~ ~1.5 ~ 0.5 0.5 0.5 0.3 3
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:end_rod ~ ~2 ~ 0.3 0.3 0.3 0.01 1

# Crystal healing particles
execute as @e[tag=ec.rd_va_crystal] at @s run particle minecraft:end_rod ~ ~ ~ 0.3 0.3 0.3 0.02 2

# Route to current phase
execute if score #rd_boss_phase ec.var matches 1 run function evercraft:raids/boss/void_architect/phase/phase1
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/void_architect/phase/phase2
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/void_architect/phase/phase3
