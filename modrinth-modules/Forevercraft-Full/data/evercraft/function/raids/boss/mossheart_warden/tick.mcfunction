# The Mossheart Warden — Main Tick
# Called every tick from raids/boss/tick.mcfunction when #rd_boss_id = 12

# Ambient VFX: moss particles
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run particle minecraft:happy_villager ~ ~1 ~ 1 0.5 1 0.01 1

# Phase routing
execute if score #rd_boss_phase ec.var matches 1 run function evercraft:raids/boss/mossheart_warden/abilities/phase1
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/mossheart_warden/abilities/phase2
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/mossheart_warden/abilities/phase3

# Gate puzzle — always active
function evercraft:raids/boss/mossheart_warden/puzzle/gate_tick

# Decrement boss-specific cooldowns
execute if score #rd_mw_core_cd ec.var matches 1.. run scoreboard players remove #rd_mw_core_cd ec.var 1
execute if score #rd_mw_slam_cd ec.var matches 1.. run scoreboard players remove #rd_mw_slam_cd ec.var 1
execute if score #rd_mw_fissure_cd ec.var matches 1.. run scoreboard players remove #rd_mw_fissure_cd ec.var 1
