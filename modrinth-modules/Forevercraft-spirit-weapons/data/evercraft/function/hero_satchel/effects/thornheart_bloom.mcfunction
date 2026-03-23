# Hero's Satchel — Thornheart Bloom (Verdant Warden)
# Regen I on natural ground + Poison aura (5 blocks) + Dream Rate +1.5
# AoE PRESERVED: Poison aura to nearby hostile mobs
execute if score @s ec.h_regen matches ..1 if block ~ ~-1 ~ #minecraft:dirt run effect give @s regeneration 5 0 false
execute at @s run effect give @e[type=#evercraft:hostile_mobs,distance=..5,limit=5] poison 3 0 false
attribute @s luck modifier add evercraft:thornheart_bloom_luck 1.5 add_value
