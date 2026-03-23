# Hero's Satchel — Void Sovereign's Eye (Void Sovereign)
# Night Vision + Slow Falling + Strange power aura (5 blocks) + Dream Rate +2.0
# AoE PRESERVED: Strange power damage to nearby hostile mobs
effect give @s night_vision 15 0 false
effect give @s slow_falling 5 0 false
execute at @s as @e[type=#evercraft:hostile_mobs,distance=..5,limit=5] run damage @s 2 evercraft:bonus_strike
attribute @s luck modifier add evercraft:void_sovereigns_eye_luck 2.0 add_value
