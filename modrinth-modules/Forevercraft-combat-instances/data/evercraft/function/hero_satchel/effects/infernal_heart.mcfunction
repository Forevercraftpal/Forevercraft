# Hero's Satchel — Infernal Heart (Infernal Titan)
# Fire Resistance + Strength I + Fire damage aura (4 blocks) + Dream Rate +1.5
# AoE PRESERVED: Fire damage to nearby hostile mobs
effect give @s fire_resistance 15 0 false
execute if score @s ec.h_str matches ..1 run effect give @s strength 5 0 false
execute at @s as @e[type=#evercraft:hostile_mobs,distance=..4,limit=5] run damage @s 1 minecraft:in_fire
attribute @s luck modifier add evercraft:infernal_heart_luck 1.5 add_value
