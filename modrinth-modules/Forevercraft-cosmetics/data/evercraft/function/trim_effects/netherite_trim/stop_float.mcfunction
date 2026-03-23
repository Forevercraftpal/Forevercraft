# Stop Netherite Float — When releasing sneak

attribute @s minecraft:gravity modifier remove evercraft:netherite_float_head
attribute @s minecraft:gravity modifier remove evercraft:netherite_float_chest
attribute @s minecraft:gravity modifier remove evercraft:netherite_float_legs
attribute @s minecraft:gravity modifier remove evercraft:netherite_float_feet

tag @s remove netherite_head
tag @s remove netherite_chest
tag @s remove netherite_legs
tag @s remove netherite_feet

tag @s remove netherite_floating
tag @s add netherite_falling_fast
