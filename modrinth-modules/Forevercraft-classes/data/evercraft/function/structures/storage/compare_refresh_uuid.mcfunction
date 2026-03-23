# Compare player UUID with refresh marker UUID
# Run as player (checking_player tag)

execute store result score #player_uuid0 cf.temp run data get entity @s UUID[0]
execute store result score #player_uuid1 cf.temp run data get entity @s UUID[1]
execute store result score #player_uuid2 cf.temp run data get entity @s UUID[2]
execute store result score #player_uuid3 cf.temp run data get entity @s UUID[3]

# If all 4 UUID ints match, this refresh marker belongs to this player
execute if score #marker_uuid0 cf.temp = #player_uuid0 cf.temp if score #marker_uuid1 cf.temp = #player_uuid1 cf.temp if score #marker_uuid2 cf.temp = #player_uuid2 cf.temp if score #marker_uuid3 cf.temp = #player_uuid3 cf.temp run scoreboard players set #refresh_match cf.temp 1
