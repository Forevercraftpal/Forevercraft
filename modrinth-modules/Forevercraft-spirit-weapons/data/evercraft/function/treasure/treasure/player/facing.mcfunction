# player is north
execute if entity @s[y_rotation=135..225.9999999] run data modify storage evercraft:treasure/treasure data.facing set value 'left_rotation:[0f, 0.00001f, 0f, 0f],right_rotation:[0f, 0f, 0f, 1f]'

# player is east
execute if entity @s[y_rotation=226..315.9999999] run data modify storage evercraft:treasure/treasure data.facing set value 'left_rotation:[90f, 0f, 0f, 0.00001f],right_rotation:[90f, 0f, 90f, 0.00001f]'

# player is west
execute if entity @s[y_rotation=45..134.9999999] run data modify storage evercraft:treasure/treasure data.facing set value 'left_rotation:[90f, 0f, 0f, 1f],right_rotation:[-90f, 0f, 90f, 1f]'

# player is south
execute if entity @s[y_rotation=316..44.9999999] run data modify storage evercraft:treasure/treasure data.facing set value 'left_rotation:[0f, 0.00001f, 0f, 0f],right_rotation:[0f, 90f, 0f, 0f]'