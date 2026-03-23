# Tamable Fox — Assign Owner ID
# Runs as the fox, but @p is the taming player
# Gives the player a permanent fox owner ID

scoreboard players operation @p fox.owner = #fox_owner_next fox.owner
scoreboard players add #fox_owner_next fox.owner 1
