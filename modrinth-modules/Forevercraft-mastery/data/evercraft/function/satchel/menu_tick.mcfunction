# Satchel Menu — Fast tick for click responsiveness (runs every 2 ticks)
# Only active when at least one player has the menu open

execute as @a[tag=ec.satchel_in_menu] at @s run function evercraft:satchel/menu/tick

# Reschedule only if someone has menu open
execute if entity @a[tag=ec.satchel_in_menu] run schedule function evercraft:satchel/menu_tick 2t replace
