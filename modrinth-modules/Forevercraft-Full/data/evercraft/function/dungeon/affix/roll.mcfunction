# Party Dungeon Affixes — Roll affixes based on party size
# Only called when #dg_players >= 2
# Affixes: 1=Glass Cannon, 2=Speed Demon, 3=Armored, 4=Darkness,
#          5=Timer, 6=Vulnerability, 7=No Healing, 8=Reinforcements

# Determine affix count based on party size
# 2 players: 1 affix, 3 players: 2 affixes, 4+: 3 affixes
scoreboard players set #dg_afx_count ec.var 1
execute if score #dg_players ec.var matches 3 run scoreboard players set #dg_afx_count ec.var 2
execute if score #dg_players ec.var matches 4.. run scoreboard players set #dg_afx_count ec.var 3

# Roll first affix (always)
execute store result score #dg_afx1 ec.var run random value 1..8
scoreboard players set #dg_afx2 ec.var 0
scoreboard players set #dg_afx3 ec.var 0

# Roll second affix if count >= 2 (re-roll if duplicate)
execute if score #dg_afx_count ec.var matches 2.. store result score #dg_afx2 ec.var run random value 1..8
execute if score #dg_afx_count ec.var matches 2.. if score #dg_afx2 ec.var = #dg_afx1 ec.var store result score #dg_afx2 ec.var run random value 1..8
execute if score #dg_afx_count ec.var matches 2.. if score #dg_afx2 ec.var = #dg_afx1 ec.var store result score #dg_afx2 ec.var run random value 1..8

# Roll third affix if count >= 3 (re-roll if duplicate)
execute if score #dg_afx_count ec.var matches 3.. store result score #dg_afx3 ec.var run random value 1..8
execute if score #dg_afx_count ec.var matches 3.. if score #dg_afx3 ec.var = #dg_afx1 ec.var store result score #dg_afx3 ec.var run random value 1..8
execute if score #dg_afx_count ec.var matches 3.. if score #dg_afx3 ec.var = #dg_afx2 ec.var store result score #dg_afx3 ec.var run random value 1..8
execute if score #dg_afx_count ec.var matches 3.. if score #dg_afx3 ec.var = #dg_afx1 ec.var store result score #dg_afx3 ec.var run random value 1..8

# Announce affixes
function evercraft:dungeon/affix/announce

# Apply immediate effects to players
function evercraft:dungeon/affix/apply_players
