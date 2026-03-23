$execute unless predicate {"condition":"minecraft:random_chance","chance":$(playerheads)} run return fail

execute if score $unique_playerhead_id bestiary.playerhead.id matches 1 store result storage eden:temp bestiary.head.playerhead.rolled_id int 1 run scoreboard players get $unique_playerhead_id bestiary.playerhead.id
execute if score $unique_playerhead_id bestiary.playerhead.id matches 1 store result storage eden:temp bestiary.head.playerhead.rolled_id int 1 run function evercraft:mobs/mob_equipment/playerheads/get_storage_entry with storage eden:temp bestiary.head.playerhead

execute if score $unique_playerhead_id bestiary.playerhead.id matches 2.. store result storage eden:temp bestiary.head.playerhead.max_id int 1 run scoreboard players get $unique_playerhead_id bestiary.playerhead.id
execute if score $unique_playerhead_id bestiary.playerhead.id matches 2.. run function evercraft:mobs/mob_equipment/playerheads/get_random_player with storage eden:temp bestiary.head.playerhead