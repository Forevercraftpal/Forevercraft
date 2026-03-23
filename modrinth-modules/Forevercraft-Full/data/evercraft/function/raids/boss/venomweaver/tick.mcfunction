# The Venomweaver — Main Tick
# Called every tick from raids/boss/tick.mcfunction when #rd_boss_id = 10
# Routes to phase-specific behavior

# Run ambient VFX as boss entity at boss position
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:item_slime ~ ~0.5 ~ 1.5 0.5 1.5 0.01 2

# Phase routing
execute if score #rd_boss_phase ec.var matches 1 run function evercraft:raids/boss/venomweaver/abilities/phase1
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/venomweaver/abilities/phase2
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/venomweaver/abilities/phase3

# Colored vine puzzle — always active (all phases)
function evercraft:raids/boss/venomweaver/puzzle/vine_tick

# Decrement boss-specific cooldowns
execute if score #rd_vw_perch_cd ec.var matches 1.. run scoreboard players remove #rd_vw_perch_cd ec.var 1
execute if score #rd_vw_spit_cd ec.var matches 1.. run scoreboard players remove #rd_vw_spit_cd ec.var 1
execute if score #rd_vw_web_cd ec.var matches 1.. run scoreboard players remove #rd_vw_web_cd ec.var 1
execute if score #rd_vw_cloud_cd ec.var matches 1.. run scoreboard players remove #rd_vw_cloud_cd ec.var 1
execute if score #rd_vw_color_cd ec.var matches 1.. run scoreboard players remove #rd_vw_color_cd ec.var 1
