# Tomb System — Store Player UUID to Scoreboards
# @s = player who died
# Stores 4 UUID int components to ec.tomb_uuid0-3 on the player
# These will be copied to the grave marker for owner matching

execute store result score @s ec.tomb_uuid0 run data get entity @s UUID[0]
execute store result score @s ec.tomb_uuid1 run data get entity @s UUID[1]
execute store result score @s ec.tomb_uuid2 run data get entity @s UUID[2]
execute store result score @s ec.tomb_uuid3 run data get entity @s UUID[3]
