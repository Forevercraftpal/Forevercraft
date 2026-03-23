# Hero's Satchel — Soulkeeper's Ember (Soul Warden)
# Strength I + Undead pacify aura (12 blocks) + Dream Rate +1.5
# AoE PRESERVED: Undead weakness aura
execute if score @s ec.h_str matches ..1 run effect give @s strength 5 0 false
execute at @s run effect give @e[type=#minecraft:undead,distance=..12] weakness 5 4 false
attribute @s luck modifier add evercraft:soulkeepers_ember_luck 1.5 add_value
