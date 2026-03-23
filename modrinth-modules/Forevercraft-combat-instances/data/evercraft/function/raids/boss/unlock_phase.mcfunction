# Spirit Raids — Unlock Phase (called 60 ticks after transition)
# Guard: if fight is already over, don't touch state
execute unless score #rd_active ec.var matches 1 run return 0
scoreboard players set #rd_phase_lock ec.var 0
