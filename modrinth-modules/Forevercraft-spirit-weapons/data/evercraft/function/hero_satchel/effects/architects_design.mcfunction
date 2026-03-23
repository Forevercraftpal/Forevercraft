# Hero's Satchel — Architect's Design (Ender Architect)
# Night Vision + Speed I + Levitation aura (6 blocks) + Dream Rate +2.0
# AoE PRESERVED: Levitation aura to nearby hostile mobs
effect give @s night_vision 15 0 false
execute if score @s ec.h_speed matches ..1 run effect give @s speed 5 0 false
execute at @s run effect give @e[type=#evercraft:hostile_mobs,distance=..6,limit=5] levitation 3 0 false
attribute @s luck modifier add evercraft:architects_design_luck 2.0 add_value
