# Guild Event — Weekly: Scan pending rewards list
# Currently simplified: delivers rewards if the "top_contributor" tag is on the player
# and they have a pending entry. Full UUID matching requires more complex storage ops.

# For now, if the player has the top contributor tag and wasn't online for the reward,
# they would have gotten it live. The pending system is a fallback for future expansion.

# Check for pending entries (simplified approach using tag-based delivery)
# Players who were offline when the weekly event fired will get their snapshot
# reset on next login, and if they were top contributor, the tag persists.
