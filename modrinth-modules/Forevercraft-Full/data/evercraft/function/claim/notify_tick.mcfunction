# === CLAIM NOTIFICATION TICK ===
# Scheduled every 1200 ticks (60 seconds)
# Checks all players for new claimable rewards

execute as @a run function evercraft:claim/notify_check

# Reschedule
schedule function evercraft:claim/notify_tick 1200t
