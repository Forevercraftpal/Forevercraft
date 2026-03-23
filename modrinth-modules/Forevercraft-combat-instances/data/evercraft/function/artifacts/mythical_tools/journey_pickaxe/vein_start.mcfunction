# Journey Pickaxe - Vein Mining Start
# Initiates the vein mining process for connected ores of the same type

# Reset vein size counter
scoreboard players set #vein_size ec.veinminer 0

# Mark the starting position with a marker
summon marker ~ ~ ~ {Tags:["ec_vein_start","ec_vein_ore"]}

# Begin recursive search for connected ores of the same type
execute at @e[type=marker,tag=ec_vein_start,limit=1] run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

# Destroy all marked ores
execute at @e[type=marker,tag=ec_vein_ore] run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_destroy

# Clean up markers
kill @e[type=marker,tag=ec_vein_ore]

# Play sound effect
playsound minecraft:block.stone.break master @s ~ ~ ~ 1 0.8
playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 0.5 1.2

# Particle effect
particle minecraft:sweep_attack ~ ~0.5 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:enchant ~ ~0.5 ~ 0.5 0.5 0.5 0.5 20
