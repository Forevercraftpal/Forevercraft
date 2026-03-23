# Check if this looted marker belongs to the checking player
# Run as the marker, checking player has tag cf.checking_player

# Compare marker's stored UUID with checking player's UUID
execute store result score #marker_uuid0 cf.temp run data get entity @s data.player_uuid[0]
execute store result score #marker_uuid1 cf.temp run data get entity @s data.player_uuid[1]
execute store result score #marker_uuid2 cf.temp run data get entity @s data.player_uuid[2]
execute store result score #marker_uuid3 cf.temp run data get entity @s data.player_uuid[3]

execute as @a[tag=cf.checking_player,limit=1] run function evercraft:structures/storage/compare_uuid

# If UUID matched (spawn_loot set to 0), calculate remaining time for feedback
execute unless score #spawn_loot cf.temp matches 0 run return 0

# Read marker data
execute store result score #looted_duration cf.temp run data get entity @s data.refresh_timer
execute store result score #looted_at cf.temp run data get entity @s data.looted_at
execute store result score #looted_struct cf.temp run data get entity @s data.struct_id

# remaining = refresh_timer - (now - looted_at)
execute store result score #looted_timer cf.temp run time query gametime
scoreboard players operation #looted_timer cf.temp -= #looted_at cf.temp
scoreboard players operation #looted_timer cf.temp *= #-1 ec.const
scoreboard players operation #looted_timer cf.temp += #looted_duration cf.temp
execute if score #looted_timer cf.temp matches ..-1 run scoreboard players set #looted_timer cf.temp 0
