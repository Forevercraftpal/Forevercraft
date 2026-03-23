# ============================================================
# Tick Guards — Respawn Iron Golem Guards
# Runs every 10s via self-schedule
# Checks each upgraded village marker and respawns guards if below 2
# ============================================================

# For each upgraded village marker, check guard count and respawn if needed
execute as @e[type=armor_stand,tag=VS.Upgraded] at @s run function evercraft:village/upgrades/check_guard_count

# Self-schedule every 10 seconds
schedule function evercraft:village/upgrades/tick_guards 10s replace
