# Guild Diplomacy — A guild approved the proposal
# Tag their marker as approved and check if both guilds are done

# Determine which guild this voter belongs to
scoreboard players set #gd_approved_guild ec.temp 0
execute as @a[scores={ec.gd_vote_cd=1..},limit=1] store result score #gd_approved_guild ec.temp run scoreboard players get @s ec.guild_id

# Tag the guild marker as approved
scoreboard players operation #Search ec.guild_id = #gd_approved_guild ec.temp
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run tag @s add ec.gd_vote_approved

# Clear vote state for this guild's members
execute as @a if score @s ec.guild_id = #gd_approved_guild ec.temp run scoreboard players set @s ec.gd_vote_cd 0

# Announce to this guild
execute as @a if score @s ec.guild_id = #gd_approved_guild ec.temp run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your guild voted YES! Waiting for the other guild...",color:"green"}]

# Check if both guilds have now resolved
function evercraft:guild/diplomacy/propose/check_both
