# Underground Biome Encounters — Trigger Check
# Run as/at player who has no active encounter

# Must be in a cave biome — detect biome first
function evercraft:biome/detect

# Check biome ID: 15=Lush Caves, 16=Dripstone, 17=Deep Dark
execute unless score @s ec.biome_id matches 15..17 run return 0

# Check cooldown: gametime - last_encounter >= 72000
execute store result score #ube_now ec.var run time query gametime
scoreboard players operation #ube_elapsed ec.var = #ube_now ec.var
scoreboard players operation #ube_elapsed ec.var -= @s ube.cd
execute if score @s ube.cd matches 1.. if score #ube_elapsed ec.var matches ..71999 run return 0

# Random roll: 0.05% chance per check (~16% per full day in caves)
execute store result score #ube_roll ec.var run random value 1..2000
execute unless score #ube_roll ec.var matches 1 run return 0

# Triggered! Start encounter based on biome
function evercraft:encounters/start
