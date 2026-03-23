# Pack Mule — Close Menu
# @s = player

tag @s remove ec.mule_in_menu

# Kill all mule menu elements
execute at @s run kill @e[type=text_display,tag=ec.mule_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.mule_el,distance=..5]
execute at @s run kill @e[type=item_display,tag=ec.mule_el,distance=..5]

playsound minecraft:block.chest.close master @s ~ ~ ~ 0.5 1.2
