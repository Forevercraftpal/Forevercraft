# Hero's Satchel — Earthshaker Core (Earthshaker)
# Resistance II + 50% KB Resist + Dream Rate +1.5
# No AoE to add — same as regular satchel
execute if score @s ec.h_resist matches ..1 run effect give @s resistance 5 1 false
attribute @s knockback_resistance modifier add evercraft:earthshaker_core_kb 0.5 add_value
attribute @s luck modifier add evercraft:earthshaker_core_luck 1.5 add_value
