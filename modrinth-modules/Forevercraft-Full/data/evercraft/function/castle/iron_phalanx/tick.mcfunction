# The Iron Phalanx — Boss Tick
# Called from castle/tick_active when ic.iron_phalanx exists
# Handles phase routing, cooldowns, and bearer management

# Decrement cooldowns
execute if score #ic_phalanx_cd ec.var matches 1.. run scoreboard players remove #ic_phalanx_cd ec.var 1
execute if score #ic_phalanx_bearer_cd ec.var matches 1.. run scoreboard players remove #ic_phalanx_bearer_cd ec.var 1
execute if score #ic_phalanx_charge_cd ec.var matches 1.. run scoreboard players remove #ic_phalanx_charge_cd ec.var 1

# Phase check — read boss HP and route phases
function evercraft:castle/iron_phalanx/phase_check

# Route to current phase
execute if score #ic_phalanx_phase ec.var matches 1 run function evercraft:castle/iron_phalanx/phase1
execute if score #ic_phalanx_phase ec.var matches 2 run function evercraft:castle/iron_phalanx/phase2
execute if score #ic_phalanx_phase ec.var matches 3 run function evercraft:castle/iron_phalanx/phase3

# Ambient VFX — iron particles around boss
execute as @e[tag=ic.iron_phalanx,limit=1] at @s run particle ash ~ ~1 ~ 0.5 0.5 0.5 0.01 2
