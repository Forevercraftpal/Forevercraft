# Hero's Satchel — Thunderstrike Core (Stormforged)
# Speed II + Resistance I + Dream Rate +1.5
# No AoE to add — same as regular satchel
execute if score @s ec.h_speed matches ..1 run effect give @s speed 5 1 false
execute if score @s ec.h_resist matches ..1 run effect give @s resistance 5 0 false
attribute @s luck modifier add evercraft:thunderstrike_core_luck 1.5 add_value
