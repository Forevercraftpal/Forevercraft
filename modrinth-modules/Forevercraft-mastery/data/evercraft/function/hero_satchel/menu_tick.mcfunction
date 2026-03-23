# Hero's Satchel Menu — Fast tick for click responsiveness (runs every 2 ticks)
# Only active when at least one player has the menu open

execute as @a[tag=ec.hsatch_in_menu] at @s run function evercraft:hero_satchel/menu/tick

# Reschedule only if someone has menu open
execute if entity @a[tag=ec.hsatch_in_menu] run schedule function evercraft:hero_satchel/menu_tick 2t replace
