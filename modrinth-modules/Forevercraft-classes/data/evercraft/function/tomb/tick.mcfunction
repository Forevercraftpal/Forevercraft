# Tomb System — Main Tick (10-tick self-schedule)
# Handles: per-grave dispatch, trigger handling, delivery checks
# NOTE: Death detection moved to evercraft:tick (per-tick) for accurate death position

# Re-schedule (10 ticks = 0.5s)
schedule function evercraft:tomb/tick 10t

# === UUID INIT (ensures all players have UUID scores for companion recovery matching) ===
# OPT: Gate — skip @a scan when all players are already initialized
execute if entity @a[tag=!ec.tomb_uuid_set] as @a[tag=!ec.tomb_uuid_set] run function evercraft:tomb/store_uuid
execute as @a[tag=!ec.tomb_uuid_set] run tag @s add ec.tomb_uuid_set

# === PER-GRAVE TICK ===
# Tick each active grave marker (timer, particles, collection, interaction checks)
execute as @e[type=marker,tag=ec.tomb_data] at @s run function evercraft:tomb/tick_marker

# === TRIGGER HANDLING (Companion Recovery) ===
# OPT: enable @s instead of @a — load + on_join handle first-time/reconnect
# Handle [Accept] clicks
execute as @a[scores={ec.tomb_accept=1..}] run function evercraft:tomb/companion/accept
execute as @a[scores={ec.tomb_accept=1..}] run scoreboard players enable @s ec.tomb_accept
scoreboard players set @a[scores={ec.tomb_accept=1..}] ec.tomb_accept 0

# Handle [Deny] clicks
execute as @a[scores={ec.tomb_deny=1..}] run function evercraft:tomb/companion/deny
execute as @a[scores={ec.tomb_deny=1..}] run scoreboard players enable @s ec.tomb_deny
scoreboard players set @a[scores={ec.tomb_deny=1..}] ec.tomb_deny 0

# === BUNDLE DELIVERY CHECK ===
# Check if any carrier with a soul bundle is near the owner
execute as @a[tag=ec.tomb_carrier] at @s run function evercraft:tomb/companion/tick_delivery
