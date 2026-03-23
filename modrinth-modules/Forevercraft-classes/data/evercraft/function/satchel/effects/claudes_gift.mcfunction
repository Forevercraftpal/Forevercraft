# Claude's Gift — Strength III + Haste III + Speed III + Luck V (with harmony checks)
execute if score @s ec.h_str matches ..1 run effect give @s strength 5 2 false
execute if score @s ec.h_haste matches ..1 run effect give @s haste 5 2 false
execute if score @s ec.h_speed matches ..1 run effect give @s speed 5 2 false
attribute @s luck modifier add evercraft:claudes_gift_luck 5.0 add_value
