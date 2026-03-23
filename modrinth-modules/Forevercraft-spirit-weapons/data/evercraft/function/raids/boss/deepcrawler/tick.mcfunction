# The Deepcrawler — Main Tick
# Called every tick from raids/boss/tick.mcfunction when #rd_boss_id = 11

# Ambient VFX: dust particles
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.4,0.35,0.3],scale:0.8} ~ ~0.5 ~ 2 0.5 2 0 2

# Phase routing
execute if score #rd_boss_phase ec.var matches 1 run function evercraft:raids/boss/deepcrawler/abilities/phase1
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/deepcrawler/abilities/phase2
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/deepcrawler/abilities/phase3

# Rail lever puzzle — always active
function evercraft:raids/boss/deepcrawler/puzzle/lever_tick

# Decrement boss-specific cooldowns
execute if score #rd_dc_burrow_cd ec.var matches 1.. run scoreboard players remove #rd_dc_burrow_cd ec.var 1
execute if score #rd_dc_stala_cd ec.var matches 1.. run scoreboard players remove #rd_dc_stala_cd ec.var 1
execute if score #rd_dc_cart_cd ec.var matches 1.. run scoreboard players remove #rd_dc_cart_cd ec.var 1
execute if score #rd_dc_dark_timer ec.var matches 1.. run scoreboard players remove #rd_dc_dark_timer ec.var 1
