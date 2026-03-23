# Beacon of Ancients — Full beacon + Luck III (with harmony checks)
execute if score @s ec.h_speed matches ..1 run effect give @s speed 5 0 false
execute if score @s ec.h_haste matches ..1 run effect give @s haste 5 0 false
execute if score @s ec.h_resist matches ..1 run effect give @s resistance 5 0 false
execute if score @s ec.h_jump matches ..1 run effect give @s jump_boost 5 0 false
execute if score @s ec.h_str matches ..1 run effect give @s strength 5 0 false
execute if score @s ec.h_regen matches ..1 run effect give @s regeneration 5 0 false
attribute @s luck modifier add evercraft:beacon_of_ancients_luck 3.0 add_value
