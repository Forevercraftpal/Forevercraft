# Timber (5% Any Axe) — Tick Function
# Detects timber marker items in player inventory and triggers tree felling
# Runs every 2 ticks via schedule

# Re-schedule
schedule function evercraft:world/timber/tick 2t

# Check for players carrying a timber marker
execute as @a if items entity @s inventory.* *[custom_data~{ec_timber_marker:1b}] run function evercraft:world/timber/activate
