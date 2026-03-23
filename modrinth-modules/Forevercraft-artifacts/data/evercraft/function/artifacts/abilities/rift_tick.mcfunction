# Rift Tick — processes dimensional rift markers each second
# Called from accessories/tick

# Process each rift marker
execute as @e[tag=ec.rift] at @s run function evercraft:artifacts/abilities/rift_process
