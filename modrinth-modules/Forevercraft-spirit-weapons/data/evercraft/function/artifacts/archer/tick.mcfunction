# Archer Bow Artifacts — 1-Second Tick (self-scheduling)
# Decrements cooldowns

# OPT: Skip when nobody has active archer cooldowns
execute unless entity @a[scores={ec.ar_cd=1..}] unless entity @a[scores={ec.ar_disengage=1..}] run return run schedule function evercraft:artifacts/archer/tick 1s

# === COOLDOWN DECREMENTS ===
scoreboard players remove @a[scores={ec.ar_cd=1..}] ec.ar_cd 1
scoreboard players remove @a[scores={ec.ar_disengage=1..}] ec.ar_disengage 1

# Reschedule
schedule function evercraft:artifacts/archer/tick 1s
