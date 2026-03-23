execute at @n[type=armor_stand,tag=bestiary.village.name,distance=..16] run particle minecraft:happy_villager ~ ~ ~ .4 .4 .4 0.5 10

execute if data entity @s SelectedItem.components."minecraft:custom_name" run data modify entity @n[type=armor_stand,tag=bestiary.village.name,distance=..16] CustomName set from entity @s SelectedItem.components.minecraft:custom_name
execute if data entity @s SelectedItem.components."minecraft:custom_name" run data modify entity @n[type=text_display,tag=bestiary.village.name,distance=..16] text set from entity @s SelectedItem.components.minecraft:custom_name

tag @n[type=armor_stand,tag=bestiary.village.name,distance=..16] add village.name.custom

execute as @s[gamemode=!creative] run item modify entity @s weapon.mainhand evercraft:mobs/used_item