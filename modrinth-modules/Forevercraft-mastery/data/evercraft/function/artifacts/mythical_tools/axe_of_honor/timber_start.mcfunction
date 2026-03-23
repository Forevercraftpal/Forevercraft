# Axe of Honor - Timber Start
# Called when player breaks a log while holding Axe of Honor
# Initiates the tree felling process

# Reset tree size counter
scoreboard players set #tree_size ec.timber 0

# Mark the starting position with a marker
summon marker ~ ~ ~ {Tags:["ec_timber_start","ec_timber_log"]}

# Begin recursive search for connected logs
execute at @e[type=marker,tag=ec_timber_start,limit=1] run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search

# Destroy all marked logs
execute at @e[type=marker,tag=ec_timber_log] run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_destroy

# Clean up markers
kill @e[type=marker,tag=ec_timber_log]
kill @e[type=marker,tag=ec_timber_leaf]

# Play sound effect
playsound minecraft:block.wood.break master @s ~ ~ ~ 1 0.8
playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 0.5 1.2

# Particle effect
particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.5 0.5 0.1 5
