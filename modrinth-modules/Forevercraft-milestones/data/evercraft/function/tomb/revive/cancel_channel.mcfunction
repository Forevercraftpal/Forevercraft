# Tomb Revive — Cancel Channel
# @s = grave marker with ec.tomb_reviving tag
# Called when healer moves too far, dies, disconnects, or owner self-collects

# === FIND HEALER BY FINDER UUID ON MARKER ===
scoreboard players operation #revive_f_uuid0 ec.temp = @s ec.tomb_finder0
scoreboard players operation #revive_f_uuid1 ec.temp = @s ec.tomb_finder1
scoreboard players operation #revive_f_uuid2 ec.temp = @s ec.tomb_finder2
scoreboard players operation #revive_f_uuid3 ec.temp = @s ec.tomb_finder3

# === CLEAR HEALER STATE (if they're online) ===
execute as @a if score @s ec.tomb_uuid0 = #revive_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #revive_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #revive_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #revive_f_uuid3 ec.temp run scoreboard players set @s ec.hl_revive 0
execute as @a if score @s ec.tomb_uuid0 = #revive_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #revive_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #revive_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #revive_f_uuid3 ec.temp run scoreboard players set @s ec.hl_revive_id 0
execute as @a if score @s ec.tomb_uuid0 = #revive_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #revive_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #revive_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #revive_f_uuid3 ec.temp run effect clear @s minecraft:slowness
execute as @a if score @s ec.tomb_uuid0 = #revive_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #revive_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #revive_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #revive_f_uuid3 ec.temp run effect clear @s minecraft:blindness
execute as @a if score @s ec.tomb_uuid0 = #revive_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #revive_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #revive_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #revive_f_uuid3 ec.temp run tag @s remove ec.tomb_reviver
execute as @a if score @s ec.tomb_uuid0 = #revive_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #revive_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #revive_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #revive_f_uuid3 ec.temp run tellraw @s [{"text":"⚔ ","color":"red"},{"text":"Revival interrupted.","color":"red"}]

# === REMOVE REVIVING TAG FROM MARKER ===
tag @s remove ec.tomb_reviving
