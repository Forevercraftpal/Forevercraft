# Duel Invite — Confirm Challenger for Arena (runs as challenger)

tag @s remove duel.challenger
tag @s add ec.duel_active_tag
tag @s add duel.challenger_confirmed
scoreboard players set @s ec.duel_active 1
scoreboard players set @s ec.duel_mode 2

# Start the arena duel (runs at the accepter's position)
execute at @a[tag=duel.self_marker] run function evercraft:duel/start/arena
