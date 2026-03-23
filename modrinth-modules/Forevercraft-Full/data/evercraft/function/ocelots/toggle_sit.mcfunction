# Tamable Ocelot — Toggle Sit/Stand
# Runs as the tamed ocelot. Toggles between sitting and following.

# Snapshot current state before toggling
scoreboard players operation #ocelot_was_sitting ocelot.owner = @s ocelot.sitting

execute if score #ocelot_was_sitting ocelot.owner matches 0 run function evercraft:ocelots/sit
execute if score #ocelot_was_sitting ocelot.owner matches 1 run function evercraft:ocelots/stand
