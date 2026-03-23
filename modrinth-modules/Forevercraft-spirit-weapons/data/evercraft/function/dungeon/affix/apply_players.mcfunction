# Party Dungeon Affixes — Apply immediate effects to players
# Called once at dungeon start

# Helper: check if any affix ID matches a given value
# Glass Cannon (1): +50% attack damage, -2 armor on players
execute if score #dg_afx1 ec.var matches 1 as @a[tag=dg.player] run attribute @s attack_damage modifier add evercraft:dg_affix 0.5 add_multiplied_base
execute if score #dg_afx2 ec.var matches 1 as @a[tag=dg.player] run attribute @s attack_damage modifier add evercraft:dg_affix 0.5 add_multiplied_base
execute if score #dg_afx3 ec.var matches 1 as @a[tag=dg.player] run attribute @s attack_damage modifier add evercraft:dg_affix 0.5 add_multiplied_base
execute if score #dg_afx1 ec.var matches 1 as @a[tag=dg.player] run attribute @s armor modifier add evercraft:dg_affix_armor -2 add_value
execute if score #dg_afx2 ec.var matches 1 as @a[tag=dg.player] run attribute @s armor modifier add evercraft:dg_affix_armor -2 add_value
execute if score #dg_afx3 ec.var matches 1 as @a[tag=dg.player] run attribute @s armor modifier add evercraft:dg_affix_armor -2 add_value

# Timer (5): reduce combat timer to 3600 ticks (3 minutes)
execute if score #dg_afx1 ec.var matches 5 run scoreboard players set #dg_afx_timer ec.var 1
execute if score #dg_afx2 ec.var matches 5 run scoreboard players set #dg_afx_timer ec.var 1
execute if score #dg_afx3 ec.var matches 5 run scoreboard players set #dg_afx_timer ec.var 1

# Vulnerability (6): -30% max health on players
execute if score #dg_afx1 ec.var matches 6 as @a[tag=dg.player] run attribute @s max_health modifier add evercraft:dg_affix_hp -0.3 add_multiplied_base
execute if score #dg_afx2 ec.var matches 6 as @a[tag=dg.player] run attribute @s max_health modifier add evercraft:dg_affix_hp -0.3 add_multiplied_base
execute if score #dg_afx3 ec.var matches 6 as @a[tag=dg.player] run attribute @s max_health modifier add evercraft:dg_affix_hp -0.3 add_multiplied_base
