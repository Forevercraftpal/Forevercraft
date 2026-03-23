# Guild Expedition — Award MVP
# @s = player with highest ec.gexp_contrib

# Give 1 Tree Token
function evercraft:advantage/tokens/award {amount:1}

# Announce MVP to their guild (using selector for player name)
execute store result storage evercraft:expedition temp.guild_id int 1 run scoreboard players get @s ec.guild_id
function evercraft:guild/expedition/reward/announce_mvp with storage evercraft:expedition temp
