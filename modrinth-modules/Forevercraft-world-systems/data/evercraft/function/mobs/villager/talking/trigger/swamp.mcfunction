advancement revoke @s only evercraft:mobs/talking_villager/swamp

execute store result storage eden:temp dialogues.id int 1 run random value 100..349
data modify storage eden:temp dialogues.type set value "swamp"

function evercraft:mobs/villager/talking/get_db_entry with storage eden:temp dialogues
function evercraft:mobs/villager/talking/send_msg with storage eden:temp dialogues
