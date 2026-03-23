# Calendar Omen — Timer Tick (called from calendar/tick every 1s when omen active)

# Decrement timer
scoreboard players remove #cal_omen_timer ec.var 1

# === Phase 1: Particles (30s..1s remaining) ===
execute if score #cal_omen_timer ec.var matches 1..30 run function evercraft:omens/calendar/particles

# === Phase 2: Timer expired — start actual event ===
execute if score #cal_omen_timer ec.var matches ..0 run function evercraft:omens/calendar/start_event
