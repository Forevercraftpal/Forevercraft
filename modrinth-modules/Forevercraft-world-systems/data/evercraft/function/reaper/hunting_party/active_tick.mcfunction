# Reaper — Hunting Party Active Tick (1s self-scheduling while hunters exist)
# Started from reaper/tick when hunter entities first detected

# If no hunters left, stop self-scheduling
execute unless entity @e[tag=rp.hunter,limit=1] run return 0

# Reschedule while hunters alive
schedule function evercraft:reaper/hunting_party/active_tick 1s

# Check if each player's hunt party is still alive
execute as @a[scores={rp.hunt_active=1}] run function evercraft:reaper/hunting_party/check_alive
