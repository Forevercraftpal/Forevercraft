# The Ashen Lord — Main Tick
# Called every tick from raids/boss/tick.mcfunction when #rd_boss_id = 7
# Routes to phase-specific behavior

# Run as boss entity at boss position
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/ashen_lord/abilities/ambient

# Phase routing
execute if score #rd_boss_phase ec.var matches 1 run function evercraft:raids/boss/ashen_lord/abilities/phase1
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/ashen_lord/abilities/phase2
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/ashen_lord/abilities/phase3

# Soul Lantern puzzle — always active (all phases)
function evercraft:raids/boss/ashen_lord/puzzle/lantern_tick

# Decrement boss-specific cooldowns
execute if score #rd_al_fire_cd ec.var matches 1.. run scoreboard players remove #rd_al_fire_cd ec.var 1
execute if score #rd_al_skull_cd ec.var matches 1.. run scoreboard players remove #rd_al_skull_cd ec.var 1
execute if score #rd_al_spawner_cd ec.var matches 1.. run scoreboard players remove #rd_al_spawner_cd ec.var 1
execute if score #rd_al_safe_timer ec.var matches 1.. run scoreboard players remove #rd_al_safe_timer ec.var 1
execute if score #rd_al_heat_timer ec.var matches 1.. run scoreboard players remove #rd_al_heat_timer ec.var 1
