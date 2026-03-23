# Tamable Ocelot — Assign Owner ID
# Runs as the ocelot, but @p is the taming player
# Gives the player a permanent ocelot owner ID

scoreboard players operation @p ocelot.owner = #ocelot_owner_next ocelot.owner
scoreboard players add #ocelot_owner_next ocelot.owner 1
