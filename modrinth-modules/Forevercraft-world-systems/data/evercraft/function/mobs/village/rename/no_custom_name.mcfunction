execute at @n[type=armor_stand,tag=bestiary.village.name,distance=..16] run particle minecraft:happy_villager ~ ~ ~ .4 .4 .4 0.5 10

kill @n[type=armor_stand,tag=bestiary.village.name,distance=..16]
kill @n[type=text_display,tag=bestiary.village.name,distance=..16]

tag @n[type=villager,tag=bestiary.villagename.set,distance=..96] remove bestiary.villagename.set

execute as @s[gamemode=!creative] run item modify entity @s weapon.mainhand evercraft:mobs/used_item