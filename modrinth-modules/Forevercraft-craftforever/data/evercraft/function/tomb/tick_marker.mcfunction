# Tomb System — Per-Grave Tick
# @s = marker entity with tag ec.tomb_data, positioned at grave
# Runs every 10 ticks (0.5s) via tomb/tick dispatch

# === TIMER CALCULATION (game-time based — works in unloaded chunks) ===
execute store result score #tomb_now ec.temp run time query gametime
execute store result score #tomb_death_gt ec.temp run data get entity @s data.death_gametime
scoreboard players operation #tomb_elapsed ec.temp = #tomb_now ec.temp
scoreboard players operation #tomb_elapsed ec.temp -= #tomb_death_gt ec.temp
scoreboard players set #tomb_remaining ec.temp 72000
scoreboard players operation #tomb_remaining ec.temp -= #tomb_elapsed ec.temp

# === SHATTER CHECK ===
# If timer expired, shatter the grave (even if bundled — items drop at marker location)
execute if score #tomb_remaining ec.temp matches ..0 unless entity @s[tag=ec.tomb_bundled] run function evercraft:tomb/shatter
execute if score #tomb_remaining ec.temp matches ..0 if entity @s[tag=ec.tomb_bundled] run function evercraft:tomb/shatter
execute if score #tomb_remaining ec.temp matches ..0 run return 0

# === BUNDLED GRAVES — skip normal interaction (data marker stays alive for delivery) ===
execute if entity @s[tag=ec.tomb_bundled] run return 0

# === STORE GRAVE OWNER UUID FOR SUB-FUNCTIONS ===
scoreboard players operation #tomb_g_uuid0 ec.temp = @s ec.tomb_uuid0
scoreboard players operation #tomb_g_uuid1 ec.temp = @s ec.tomb_uuid1
scoreboard players operation #tomb_g_uuid2 ec.temp = @s ec.tomb_uuid2
scoreboard players operation #tomb_g_uuid3 ec.temp = @s ec.tomb_uuid3

# === REVIVE CHANNEL TICK ===
execute if entity @s[tag=ec.tomb_reviving] run function evercraft:tomb/revive/tick_channel

# === PENDING OFFER TIMEOUT ===
execute if entity @s[tag=ec.tomb_pending] run function evercraft:tomb/companion/tick_pending

# === OWNER COLLECTION CHECK (1.5 blocks) ===
# Skip collection for first 3 seconds (60 ticks) — prevents instant pickup while on death screen
# Check if owner is within 1.5 blocks — compare player UUID scores against grave UUID temps
execute if score #tomb_elapsed ec.temp matches 60.. as @a[distance=..1.5] if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run function evercraft:tomb/collect

# === INTERACTION CHECK (companion right-click) ===
execute as @e[type=interaction,tag=ec.tomb_interact,distance=..1] if data entity @s interaction run function evercraft:tomb/companion/check_interact

# === PARTICLE EFFECTS ===
function evercraft:tomb/tick_particles

# === PROXIMITY GATE — skip display/sound if nobody nearby ===
# OPT: Saves 4 math ops + 2 storage writes + macro call per grave when no player within 16 blocks
execute unless entity @a[distance=..16] run return 0

# === ACTIONBAR DISPLAY ===
# Calculate minutes and seconds for display
scoreboard players operation #tomb_minutes ec.temp = #tomb_remaining ec.temp
scoreboard players operation #tomb_minutes ec.temp /= #1200 ec.const
scoreboard players operation #tomb_seconds ec.temp = #tomb_remaining ec.temp
scoreboard players operation #tomb_seconds ec.temp %= #1200 ec.const
scoreboard players operation #tomb_seconds ec.temp /= #20 ec.const

# Store computed values for macro
execute store result storage evercraft:tomb_temp minutes int 1 run scoreboard players get #tomb_minutes ec.temp
execute store result storage evercraft:tomb_temp seconds int 1 run scoreboard players get #tomb_seconds ec.temp

# Show actionbar to nearby players
function evercraft:tomb/tick_actionbar with storage evercraft:tomb_temp

# === AMBIENT SOUND (every ~10 seconds = every 200 ticks = every 20 calls of this function) ===
scoreboard players add @s ec.tomb_count 1
execute if score @s ec.tomb_count matches 20.. run playsound minecraft:ambient.soul_sand_valley.mood ambient @a[distance=..16] ~ ~ ~ 0.15 1.8
execute if score @s ec.tomb_count matches 20.. run scoreboard players set @s ec.tomb_count 0
