advancement revoke @s only evercraft:mobs/talking_villager/taiga

execute store result storage eden:temp dialogues.id int 1 run random value 100..349
data modify storage eden:temp dialogues.type set value "taiga"

function evercraft:mobs/villager/talking/get_db_entry with storage eden:temp dialogues
function evercraft:mobs/villager/talking/send_msg with storage eden:temp dialogues
