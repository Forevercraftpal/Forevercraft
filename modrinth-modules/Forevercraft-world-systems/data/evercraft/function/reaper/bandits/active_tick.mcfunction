# Reaper — Bandit Active Tick (1s self-scheduling while bandits exist)
# Started from reaper/tick when bandit entities first detected

# If no bandits left, stop self-scheduling
execute unless entity @e[tag=rp.bandit,limit=1] run return 0

# Reschedule while bandits alive
schedule function evercraft:reaper/bandits/active_tick 1s

# Check if each player's bandits are still alive
execute as @a[scores={rp.band_active=1}] run function evercraft:reaper/bandits/check_alive

# Steal attempt: if a player was recently hit (HurtTime) and bandits are nearby, try to steal
execute as @a[scores={rp.band_active=1},nbt={HurtTime:10s}] at @s if entity @e[tag=rp.bandit,distance=..6,limit=1] run function evercraft:reaper/bandits/steal_attempt
