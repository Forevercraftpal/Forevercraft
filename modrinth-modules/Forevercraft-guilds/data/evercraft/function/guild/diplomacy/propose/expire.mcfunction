# Guild Diplomacy — Vote expired (non-queued only, cd hit 0)
# @s = a player whose vote timed out

# Announce to their guild
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Vote timed out! Proposal failed.",color:"red"}]

# Full cleanup — this cancels the entire proposal for both guilds
function evercraft:guild/diplomacy/propose/cleanup
