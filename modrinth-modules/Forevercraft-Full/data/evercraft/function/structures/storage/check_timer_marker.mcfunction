# Check if this looted marker belongs to the checking player, show its timer
# Run as the marker entity

# Extract marker's stored UUID
execute store result score #marker_uuid0 cf.temp run data get entity @s data.player_uuid[0]
execute store result score #marker_uuid1 cf.temp run data get entity @s data.player_uuid[1]
execute store result score #marker_uuid2 cf.temp run data get entity @s data.player_uuid[2]
execute store result score #marker_uuid3 cf.temp run data get entity @s data.player_uuid[3]

# Compare with player — sets #timer_match to 1 if UUIDs match
scoreboard players set #timer_match cf.temp 0
execute as @a[tag=cf.checking_player,limit=1] run function evercraft:structures/storage/compare_timer_uuid

# If no match, skip
execute unless score #timer_match cf.temp matches 1 run return 0

# Read refresh_timer (total duration), looted_at, and struct_id from this marker
execute store result score #timer_duration cf.temp run data get entity @s data.refresh_timer
execute store result score #looted_at cf.temp run data get entity @s data.looted_at
execute store result score #timer_struct cf.temp run data get entity @s data.struct_id

# Read marker position for display
execute store result score #timer_x cf.temp run data get entity @s Pos[0]
execute store result score #timer_y cf.temp run data get entity @s Pos[1]
execute store result score #timer_z cf.temp run data get entity @s Pos[2]

# Calculate remaining time: refresh_timer - (game_time - looted_at)
execute store result score #now cf.temp run time query gametime
scoreboard players operation #elapsed cf.temp = #now cf.temp
scoreboard players operation #elapsed cf.temp -= #looted_at cf.temp
scoreboard players operation #timer_ticks cf.temp = #timer_duration cf.temp
scoreboard players operation #timer_ticks cf.temp -= #elapsed cf.temp

# If timer expired, convert it now (self-healing in case tick_refresh missed it)
# Tag swap, store to ready_crates, notify player, then show as Ready!
execute if score #timer_ticks cf.temp matches ..0 run tag @s add cf.refresh_marker
execute if score #timer_ticks cf.temp matches ..0 run tag @s remove cf.looted_marker
execute if score #timer_ticks cf.temp matches ..0 run function evercraft:structures/storage/store_ready
execute if score #timer_ticks cf.temp matches ..0 run function evercraft:structures/storage/reset_vault_block
execute if score #timer_ticks cf.temp matches ..0 run scoreboard players add #timer_count cf.temp 1
execute if score #timer_ticks cf.temp matches ..0 as @a[tag=cf.checking_player,limit=1] run function evercraft:structures/storage/show_timer_ready
execute if score #timer_ticks cf.temp matches ..0 run return 0

# Match found with active timer — increment counter
scoreboard players add #timer_count cf.temp 1

# Convert remaining ticks to hours and minutes (1200 ticks = 1 minute)
scoreboard players set #1200 cf.temp 1200
scoreboard players operation #timer_mins cf.temp = #timer_ticks cf.temp
scoreboard players operation #timer_mins cf.temp /= #1200 cf.temp

# hours = minutes / 60
scoreboard players operation #timer_hrs cf.temp = #timer_mins cf.temp
scoreboard players operation #timer_hrs cf.temp /= #60 ec.const

# remaining minutes = minutes % 60
scoreboard players operation #timer_rmins cf.temp = #timer_mins cf.temp
scoreboard players operation #timer_rmins cf.temp %= #60 ec.const

# Show the timer line as the player
execute as @a[tag=cf.checking_player,limit=1] run function evercraft:structures/storage/show_timer
