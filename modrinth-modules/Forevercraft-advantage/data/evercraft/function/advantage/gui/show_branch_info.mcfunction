# Show branch skill descriptions — run as interaction entity
# Macro arg: branch (adventure/progression/gathering)

# Clear interaction data
data remove entity @s interaction

# Find the player
$execute as @a[tag=Adv.InMenu,distance=..5,limit=1,sort=nearest] run function evercraft:advantage/gui/branch_desc/$(branch)

# Click sound
execute as @a[tag=Adv.InMenu,distance=..5,limit=1,sort=nearest] at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.3 1.5
