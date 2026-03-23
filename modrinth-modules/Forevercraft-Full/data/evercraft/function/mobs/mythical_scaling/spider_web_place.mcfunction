# Spider web placement — run as the nearest player (locked @s)
# Check DR gate: only place web if this player has DR 25+
execute store result score #web_dr ec.temp run attribute @s luck get 10
execute if score #web_dr ec.temp matches ..249 run return 0
execute at @s if block ~ ~ ~ air run setblock ~ ~ ~ cobweb
