# ============================================================
# Friend System — Load
# Scoreboards, triggers, storage initialization
# ============================================================

# === PER-PLAYER SCOREBOARDS ===
scoreboard objectives add ec.fr_count dummy "Friend Count"
scoreboard objectives add ec.fr_married dummy "Is Married"
scoreboard objectives add ec.fr_best_nearby dummy "Best Friends Nearby"
scoreboard objectives add ec.fr_spouse_near dummy "Spouse Nearby"
scoreboard objectives add ec.fr_page dummy "Friends Menu Page"
scoreboard objectives add ec.fr_target dummy "Friend Target UUID3"

# === TRIGGERS ===
scoreboard objectives add ec.fr_invite trigger "Friend Invite"
scoreboard objectives add ec.fr_gift trigger "Friend Gift"
scoreboard objectives add ec.fr_marry trigger "Marriage"
scoreboard objectives add ec.fr_title trigger "Family Title"
scoreboard objectives add ec.fr_remove trigger "Remove Friend"

# Enable triggers for all online players
scoreboard players enable @a ec.fr_invite
scoreboard players enable @a ec.fr_gift
scoreboard players enable @a ec.fr_marry
scoreboard players enable @a ec.fr_title
scoreboard players enable @a ec.fr_remove

# === TEMP SCOREBOARDS ===
# #fr_ray ec.temp — raycast step counter
# #fr_target_uuid3 ec.temp — target's UUID[3]
# #fr_hearts ec.temp — heart count for current pair
# #fr_level ec.temp — friendship level (0-4)

# === CONSTANTS ===
scoreboard players set #fr_max_friends ec.const 50
scoreboard players set #fr_good ec.const 7
scoreboard players set #fr_great ec.const 30
scoreboard players set #fr_ultra ec.const 60
scoreboard players set #fr_best ec.const 90
scoreboard players set #fr_prox_time ec.const 60
scoreboard players set #fr_tp_cooldown ec.const 144000
scoreboard players set #48 ec.const 48

# === PROXIMITY TIMER ===
# Per-player: tracks consecutive seconds near a friend
scoreboard objectives add ec.fr_prox_timer dummy "Friend Proximity Timer"
scoreboard objectives add ec.temp_uuid3 dummy "Temp UUID3 Match"

# === STORAGE INITIALIZATION ===
# Friends registry: { "u<uuid3>": { friends: [...], married_to: 0, friend_count: 0, gift_queue: [] } }
execute unless data storage evercraft:friends {} run data merge storage evercraft:friends {}

# === SHOWCASE SYSTEM ===
function evercraft:codex/friends/showcase/load

# === START TICK SCHEDULE ===
schedule function evercraft:friends/tick 1s
