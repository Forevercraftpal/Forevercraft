# Dungeon Lockout — Entry point for per-tick expiry check
# Run as: player with dg.lo_any >= 1 (every 5s via watchdog)
# Delegates to check_all which handles all structure lockouts

function evercraft:dungeon/lockout/check_all
