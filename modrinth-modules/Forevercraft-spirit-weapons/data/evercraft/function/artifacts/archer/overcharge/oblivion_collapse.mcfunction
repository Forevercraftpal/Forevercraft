# Oblivion — Void Zone Collapse
# Final burst of damage at the void zone location

execute as @e[type=marker,tag=ec.ar_oblivion,limit=1] at @s run function evercraft:artifacts/archer/overcharge/oblivion_burst

# Clean up
kill @e[type=marker,tag=ec.ar_oblivion]
