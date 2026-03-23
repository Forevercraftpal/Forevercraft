# Party Dungeon Affixes — Apply affix effects to newly spawned mobs
# Called from spawn_wave after mob summoning (alongside modifier apply)
# Only runs when #dg_afx_count >= 1

# Speed Demon (2): mobs get Speed II
execute if score #dg_afx1 ec.var matches 2 run effect give @e[tag=dg.mob] speed 999999 1 true
execute if score #dg_afx2 ec.var matches 2 run effect give @e[tag=dg.mob] speed 999999 1 true
execute if score #dg_afx3 ec.var matches 2 run effect give @e[tag=dg.mob] speed 999999 1 true

# Armored (3): mobs get +8 armor
execute if score #dg_afx1 ec.var matches 3 as @e[tag=dg.mob] run attribute @s armor modifier add dg_affix 8.0 add_value
execute if score #dg_afx2 ec.var matches 3 as @e[tag=dg.mob] run attribute @s armor modifier add dg_affix 8.0 add_value
execute if score #dg_afx3 ec.var matches 3 as @e[tag=dg.mob] run attribute @s armor modifier add dg_affix 8.0 add_value
