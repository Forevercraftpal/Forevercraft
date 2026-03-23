# Tomb System — Cancel Pending Offer
# @s = grave marker with ec.tomb_pending tag
# Called on timeout, owner self-collect, or grave shatter

# Get the finder's UUID to notify them
scoreboard players operation #tomb_f_uuid0 ec.temp = @s ec.tomb_finder0
scoreboard players operation #tomb_f_uuid1 ec.temp = @s ec.tomb_finder1
scoreboard players operation #tomb_f_uuid2 ec.temp = @s ec.tomb_finder2
scoreboard players operation #tomb_f_uuid3 ec.temp = @s ec.tomb_finder3

# Notify finder
execute as @a if score @s ec.tomb_uuid0 = #tomb_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_f_uuid3 ec.temp run tellraw @s [{"text":"The offer has expired.","color":"gray","italic":true}]

# Clear pending state
tag @s remove ec.tomb_pending
