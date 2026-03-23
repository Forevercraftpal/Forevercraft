# Guild Diplomacy — Handle player joining mid-event
# @s = player who just joined, already has ec.guild_id set

# Check if event is active and player is in one of the competing guilds
execute unless score #gd_event_active ec.var matches 1 run return 0
execute unless score @s ec.guild_id = #gd_event_guild_a ec.var unless score @s ec.guild_id = #gd_event_guild_b ec.var run return 0

# Already participating? Skip
execute if score @s ec.gd_event_active matches 1 run return 0

# Initialize as participant
function evercraft:guild/diplomacy/event/init_participant

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"A guild event is in progress! You've joined the competition.",color:"yellow"}]
