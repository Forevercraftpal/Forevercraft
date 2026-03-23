# World Event Omen — Timer Tick (called from world_events/tick every 1s when omen active)

# Decrement timer
scoreboard players remove #we_omen_timer ec.var 1

# === Phase 1: Particles (30s..1s remaining) ===
execute if score #we_omen_timer ec.var matches 1..30 run function evercraft:omens/world_events/particles

# === Phase 2: Timer expired — recheck and start ===
execute if score #we_omen_timer ec.var matches ..0 run function evercraft:omens/world_events/recheck
