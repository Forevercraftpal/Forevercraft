# Pantry Menu — Close
# Kill all menu elements
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=ec.pantry_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=ec.pantry_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=item_display,tag=ec.pantry_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Remove tags
tag @s remove ec.pantry_in_menu

# Revoke advancement so next right-click can re-trigger
advancement revoke @s only evercraft:pantry/open

# Sound
playsound minecraft:block.barrel.close master @s ~ ~ ~ 0.5 1.2
