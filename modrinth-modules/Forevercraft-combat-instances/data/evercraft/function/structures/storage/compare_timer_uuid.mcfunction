# Compare player UUID with marker UUID for timer display
# Run as player (marker UUIDs already in #marker_uuid0-3)

execute store result score #player_uuid0 cf.temp run data get entity @s UUID[0]
execute store result score #player_uuid1 cf.temp run data get entity @s UUID[1]
execute store result score #player_uuid2 cf.temp run data get entity @s UUID[2]
execute store result score #player_uuid3 cf.temp run data get entity @s UUID[3]

# If all 4 UUID ints match, set flag
execute if score #marker_uuid0 cf.temp = #player_uuid0 cf.temp if score #marker_uuid1 cf.temp = #player_uuid1 cf.temp if score #marker_uuid2 cf.temp = #player_uuid2 cf.temp if score #marker_uuid3 cf.temp = #player_uuid3 cf.temp run scoreboard players set #timer_match cf.temp 1
