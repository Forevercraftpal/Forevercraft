execute if score #found ec.id matches 1 run return -1
execute on attacker if entity @s[type=player,tag=ec.player] run scoreboard players set #found ec.id 1
execute if score #found ec.id matches 0 run return -1
function evercraft:treasure/technical/hit_match/hit_entity
function evercraft:treasure/technical/hit_match/player_hurt_entity/setup/setup_id