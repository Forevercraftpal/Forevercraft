# Spirit Raids — Phase Check (3-phase system)
# Called as the boss entity, at the boss position

# Read current HP
execute store result score #rd_temp ec.var run data get entity @s Health 1

# Phase 1 -> Phase 2 transition (HP dropped below 66%)
# IMPORTANT: return after transition to prevent skipping Phase 2 if HP also below 33%
execute if score #rd_boss_phase ec.var matches 1 if score #rd_temp ec.var <= #rd_p2_threshold ec.var run function evercraft:raids/boss/phase_transition
execute if score #rd_boss_phase ec.var matches 2 if score #rd_phase_lock ec.var matches 1.. run return 0

# Phase 2 -> Phase 3 transition (HP dropped below 33%)
execute if score #rd_boss_phase ec.var matches 2 if score #rd_temp ec.var <= #rd_p3_threshold ec.var run function evercraft:raids/boss/phase_transition
