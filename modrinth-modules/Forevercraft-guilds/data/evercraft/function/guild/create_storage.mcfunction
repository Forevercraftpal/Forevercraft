# Guild — Initialize member storage for new guild
# $(id) = guild ID
# @s = creator player

# Store creator name
execute store result storage evercraft:guild temp.uuid3 int 1 run scoreboard players get @s companion.id
data modify storage evercraft:guild temp.player_name set from entity @s CustomName

# Create the member entry via macro
function evercraft:guild/create_storage_macro with storage evercraft:guild temp

# Realm milestone: guild created
function evercraft:milestones/increment/guild_created
