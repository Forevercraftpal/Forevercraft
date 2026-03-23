scoreboard players add $unique_playerhead_id bestiary.playerhead.id 1
scoreboard players operation @s bestiary.playerhead.id = $unique_playerhead_id bestiary.playerhead.id
execute store result storage eden:temp playerhead.id int 1 run scoreboard players get @s bestiary.playerhead.id

function evercraft:mobs/database/playerheads/add/fetch_data with storage eden:temp playerhead