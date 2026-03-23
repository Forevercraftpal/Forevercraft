# Party Dungeon Affixes — Remove all affix effects on dungeon exit
# Called from cleanup.mcfunction

# Remove player attribute modifiers
execute as @a run attribute @s attack_damage modifier remove evercraft:dg_affix
execute as @a run attribute @s armor modifier remove evercraft:dg_affix_armor
execute as @a run attribute @s max_health modifier remove evercraft:dg_affix_hp

# Clear affix state
scoreboard players set #dg_afx_count ec.var 0
scoreboard players set #dg_afx1 ec.var 0
scoreboard players set #dg_afx2 ec.var 0
scoreboard players set #dg_afx3 ec.var 0
scoreboard players set #dg_afx_timer ec.var 0
