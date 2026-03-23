# Hero's Satchel Menu — Close
# Run as the player

# Final sweep for unstamped duplicates before closing
clear @s minecraft:leather[custom_data~{hero_satchel:true,bag_id:0}]

# Kill all menu elements
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=ec.hsatch_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=ec.hsatch_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=item_display,tag=ec.hsatch_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Remove tags
tag @s remove ec.hsatch_in_menu

# Revoke advancement so next right-click can re-trigger
advancement revoke @s only evercraft:hero_satchel/open

# Sound
playsound minecraft:block.chest.close master @s ~ ~ ~ 0.5 1.2
