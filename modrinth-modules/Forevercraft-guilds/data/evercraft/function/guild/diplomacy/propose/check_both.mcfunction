# Guild Diplomacy — Check if both guilds have approved
# Called after one guild approves

# Check guild A approved
scoreboard players operation #Search ec.guild_id = #gd_vote_guild_a ec.var
execute positioned 0 -61 0 unless entity @e[type=marker,tag=ec.guild,tag=ec.gd_vote_approved,predicate=evercraft:guild/check_id,distance=..2] run return 0

# Check guild B approved
scoreboard players operation #Search ec.guild_id = #gd_vote_guild_b ec.var
execute positioned 0 -61 0 unless entity @e[type=marker,tag=ec.guild,tag=ec.gd_vote_approved,predicate=evercraft:guild/check_id,distance=..2] run return 0

# Both approved! Execute the proposal
function evercraft:guild/diplomacy/propose/execute
