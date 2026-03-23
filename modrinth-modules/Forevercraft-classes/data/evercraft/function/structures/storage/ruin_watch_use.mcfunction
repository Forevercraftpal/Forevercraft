# Ruin Watch — Right-click ability
# Shows all structure loot timers (same as /trigger ec.loot_timer)
# Triggered via using_item — consumable has huge duration so item is never actually consumed

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/use/ruin_watch

# Show the timer display
function evercraft:structures/storage/check_timer
