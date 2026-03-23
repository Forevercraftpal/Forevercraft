# Check if this player matches the marker's UUID, notify if so
# Run as each player (marker UUIDs in #marker_uuid0-3)

execute store result score #player_uuid0 cf.temp run data get entity @s UUID[0]
execute store result score #player_uuid1 cf.temp run data get entity @s UUID[1]
execute store result score #player_uuid2 cf.temp run data get entity @s UUID[2]
execute store result score #player_uuid3 cf.temp run data get entity @s UUID[3]

# If all 4 UUID ints match, send notification
execute unless score #marker_uuid0 cf.temp = #player_uuid0 cf.temp run return 0
execute unless score #marker_uuid1 cf.temp = #player_uuid1 cf.temp run return 0
execute unless score #marker_uuid2 cf.temp = #player_uuid2 cf.temp run return 0
execute unless score #marker_uuid3 cf.temp = #player_uuid3 cf.temp run return 0

# UUID matched — notify this player
tellraw @s [{text:"⏳ ",color:"gold"},{text:"A structure loot container has refreshed! ",color:"yellow"},{text:"There must be someone or something that can show you where it is...",color:"gray",italic:true}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.5
