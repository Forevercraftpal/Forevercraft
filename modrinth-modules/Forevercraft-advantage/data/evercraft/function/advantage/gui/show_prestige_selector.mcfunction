# Show prestige ability class selector — run as interaction entity
# Opens a chat menu where player clicks a class to see its prestige abilities

# Clear interaction data
data remove entity @s interaction

# Click sound
execute as @a[tag=Adv.InMenu,distance=..5,limit=1,sort=nearest] at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.3 1.5

# Send chat selector to nearest menu player
execute as @a[tag=Adv.InMenu,distance=..5,limit=1,sort=nearest] run function evercraft:advantage/gui/prestige_selector_menu
