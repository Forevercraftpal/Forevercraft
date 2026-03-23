# The Crimson Bulwark — Main Tick
# Called every tick from raids/boss/tick.mcfunction when #rd_boss_id = 13

# Ambient VFX
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.7,0.1,0.1],scale:0.8} ~ ~1 ~ 1 0.5 1 0 1

# Phase routing
execute if score #rd_boss_phase ec.var matches 1 run function evercraft:raids/boss/crimson_bulwark/abilities/phase1
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/crimson_bulwark/abilities/phase2
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/crimson_bulwark/abilities/phase3

# Banner puzzle — always active
function evercraft:raids/boss/crimson_bulwark/puzzle/banner_tick

# Decrement boss-specific cooldowns
execute if score #rd_cb_slam_cd ec.var matches 1.. run scoreboard players remove #rd_cb_slam_cd ec.var 1
execute if score #rd_cb_guard_cd ec.var matches 1.. run scoreboard players remove #rd_cb_guard_cd ec.var 1
execute if score #rd_cb_spin_cd ec.var matches 1.. run scoreboard players remove #rd_cb_spin_cd ec.var 1
execute if score #rd_cb_throw_cd ec.var matches 1.. run scoreboard players remove #rd_cb_throw_cd ec.var 1
