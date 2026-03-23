# World Events — Main Tick
# Checks conditions when idle (60s), routes active event ticks (1s)

# Early exit if no players
execute unless entity @a run schedule function evercraft:world_events/tick 20s
execute unless entity @a run return 0

# === Active Event Routing (1s tick when active) ===
# OPT: Single gate → dispatch function (was 5 redundant #we_active checks)
execute if score #we_active ec.var matches 1 run function evercraft:world_events/dispatch_active

# === Harmonic Convergence: Check if conditions align (only when world event active) ===
execute if score #we_active ec.var matches 1 run function evercraft:convergence/check

# === World Event Omen Tick (pre-event warning countdown) ===
execute if score #we_omen_timer ec.var matches 1.. run function evercraft:omens/world_events/tick

# === Idle: Condition Check (only when no event active and no omen active) ===
# OPT: Early return for active/omen states avoids repeated unless chains
execute if score #we_active ec.var matches 1 run schedule function evercraft:world_events/tick 1s
execute if score #we_active ec.var matches 1 run return 0
execute if score #we_omen_timer ec.var matches 1.. run schedule function evercraft:world_events/tick 1s
execute if score #we_omen_timer ec.var matches 1.. run return 0

# Idle: compute and check
function evercraft:world_events/compute_avg_dr
function evercraft:world_events/check_conditions
schedule function evercraft:world_events/tick 60s
