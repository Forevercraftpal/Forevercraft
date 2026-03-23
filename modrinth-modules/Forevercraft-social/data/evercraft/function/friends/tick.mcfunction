# Friend System — Tick (runs every 1s via schedule)
# Handles: proximity heart checks, buff application, trigger processing

# Gate: skip if no players online
execute unless entity @a run return run schedule function evercraft:friends/tick 1s

# === TRIGGER PROCESSING ===
# Friend invite accept/decline
execute as @a[scores={ec.fr_invite=1..}] run function evercraft:friends/trigger_handler
execute as @a[scores={ec.fr_invite=..-1}] run function evercraft:friends/trigger_handler

# Gift send
execute as @a[scores={ec.fr_gift=1..}] run function evercraft:friends/gift/send

# Marriage propose/accept/divorce
execute as @a[scores={ec.fr_marry=1..}] run function evercraft:friends/marriage/trigger_handler
execute as @a[scores={ec.fr_marry=..-1}] run function evercraft:friends/marriage/trigger_handler

# Family title set
execute as @a[scores={ec.fr_title=1..}] run function evercraft:friends/title/set

# Remove friend
execute as @a[scores={ec.fr_remove=1..}] run function evercraft:friends/remove

# OPT: Removed blanket enable @a — each trigger handler re-enables @s after processing,
# and load + on_join handle first-time/reconnect enables

# === PROXIMITY HEARTS + BUFFS (every 1s for players with friends) ===
# OPT: 2 @a scans → 1 per-player function call
execute as @a[scores={ec.fr_count=1..}] at @s run function evercraft:friends/player_tick

# === TITLE NOTIFICATION CHECK (1-minute delayed notifications) ===
function evercraft:friends/title/check_pending_notify

# Reschedule
schedule function evercraft:friends/tick 1s
