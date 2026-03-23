# Duel Invite — Confirm Challenger (runs as the challenger player)
# Tags them and sets them into duel state, then starts the duel

tag @s remove duel.challenger
tag @s add ec.duel_active_tag
tag @s add duel.challenger_confirmed
scoreboard players set @s ec.duel_active 1
scoreboard players set @s ec.duel_mode 1

# Start the open world duel
function evercraft:duel/start/open_world
