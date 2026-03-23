# Bestiary GUI — On Row Click Inner (Macro)
# Args: {row:0}
# Run as the player

# Store row index to score for routing
$scoreboard players set #bs_row bs.temp $(row)

# Route to page-specific handler
execute if score @s adv.gui_page matches 2 run function evercraft:bestiary/gui/detail/page2_click
execute if score @s adv.gui_page matches 3 run function evercraft:bestiary/gui/detail/page3_click
execute if score @s adv.gui_page matches 4 run function evercraft:bestiary/gui/detail/page4_click
execute if score @s adv.gui_page matches 5 run function evercraft:bestiary/gui/detail/page5_click
execute if score @s adv.gui_page matches 6 run function evercraft:bestiary/gui/detail/page6_click

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
