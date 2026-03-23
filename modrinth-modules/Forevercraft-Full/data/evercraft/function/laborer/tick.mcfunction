# === LABORER SYSTEM — 60-SECOND TICK ===
# Self-scheduling loop. Handles expedition state machine, visuals, zone confinement.
# Interaction clicks handled per-tick in main tick.mcfunction for instant response.

# Re-schedule
schedule function evercraft:laborer/tick 60s replace

# Early exit if no laborers exist
execute unless entity @e[type=villager,tag=ec.laborer,limit=1] run return 0

# Store current gametime for timer comparisons
execute store result score #lb_now ec.lb_temp run time query gametime

# Process each laborer entity
execute as @e[type=villager,tag=ec.laborer] at @s run function evercraft:laborer/tick_single

# Reconcile laborer counts (fix #8: detect dead/missing laborers)
execute as @a[scores={ec.lb_count=1..}] run function evercraft:laborer/reconcile_count
