# The Iron Phalanx — Phase Check
# Read boss HP and transition phases at 66% (396 HP) and 33% (198 HP)

# Get current HP
execute store result score #ic_phalanx_hp ec.var run data get entity @e[tag=ic.iron_phalanx,limit=1] Health 1

# Phase 1 → Phase 2 at 66% (396 HP)
execute if score #ic_phalanx_phase ec.var matches 1 if score #ic_phalanx_hp ec.var matches ..396 run function evercraft:castle/iron_phalanx/enter_phase2

# Phase 2 → Phase 3 at 33% (198 HP)
execute if score #ic_phalanx_phase ec.var matches 2 if score #ic_phalanx_hp ec.var matches ..198 run function evercraft:castle/iron_phalanx/enter_phase3
