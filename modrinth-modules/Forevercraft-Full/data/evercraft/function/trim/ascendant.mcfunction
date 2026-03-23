execute as @a[tag=single_wayfinder] if entity @s[tag=single_raiser] if entity @s[tag=single_shaper] if entity @s[tag=single_host] run tag @s add full_set_ascendant
execute as @a[tag=full_set_ascendant] at @s run effect give @a[distance=..128] speed 7 0 false
execute as @a[tag=full_set_ascendant] at @s run effect give @a[distance=..128] haste 7 0 false
execute as @a[tag=full_set_ascendant] at @s run effect give @a[distance=..128] strength 7 0 false
execute as @a[tag=full_set_ascendant] at @s run effect give @a[distance=..128] regeneration 7 0 false
schedule function evercraft:trim/ascendant 6s replace
