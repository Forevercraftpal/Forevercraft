# Compare player UUID with marker UUID
# Run as player

execute store result score #player_uuid0 cf.temp run data get entity @s UUID[0]
execute store result score #player_uuid1 cf.temp run data get entity @s UUID[1]
execute store result score #player_uuid2 cf.temp run data get entity @s UUID[2]
execute store result score #player_uuid3 cf.temp run data get entity @s UUID[3]

# If all 4 UUID ints match, this player has already looted this position
execute if score #marker_uuid0 cf.temp = #player_uuid0 cf.temp if score #marker_uuid1 cf.temp = #player_uuid1 cf.temp if score #marker_uuid2 cf.temp = #player_uuid2 cf.temp if score #marker_uuid3 cf.temp = #player_uuid3 cf.temp run scoreboard players set #spawn_loot cf.temp 0
