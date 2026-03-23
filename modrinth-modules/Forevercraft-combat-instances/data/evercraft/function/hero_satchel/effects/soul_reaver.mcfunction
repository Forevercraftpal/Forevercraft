# Hero's Satchel — Soul Reaver (Hollow King)
# Wither aura (6 blocks) + Dream Rate +1.5
# AoE PRESERVED: Wither aura to nearby hostile mobs
execute at @s run effect give @e[type=#evercraft:hostile_mobs,distance=..6,limit=5] wither 3 0 false
attribute @s luck modifier add evercraft:soul_reaver_luck 1.5 add_value
