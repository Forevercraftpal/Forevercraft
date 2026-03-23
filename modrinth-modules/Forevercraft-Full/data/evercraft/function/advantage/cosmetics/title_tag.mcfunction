# Title Tag — Level 10 cosmetic (also used by Glow Outline tier 4)
# Join tree-specific team for colored name prefix
# Called every 1s from tick — must NOT call clear_all (would nuke scores + self-deactivate)

# Skip if a non-cosmetic title is active — let that title's team take priority
# (Glow Outline tier 4 uses this too; glow effect stays, team color comes from active title)
execute if score @s adv.cc_title matches 1.. run return 0
execute if score @s wb.title matches 1.. run return 0
execute if score @s bm.title matches 1.. run return 0
execute if score @s ec.special_title matches 1.. run return 0
execute if score @s ec.gd_title matches 1.. run return 0

# No other title active — apply cosmetic tree team (team join auto-removes from old team)
execute if score @s adv.cosm_tree matches 1 run team join adv.cosm_agility @s
execute if score @s adv.cosm_tree matches 2 run team join adv.cosm_dexterity @s
execute if score @s adv.cosm_tree matches 3 run team join adv.cosm_evasion @s
execute if score @s adv.cosm_tree matches 4 run team join adv.cosm_stealth @s
execute if score @s adv.cosm_tree matches 5 run team join adv.cosm_vitality @s
execute if score @s adv.cosm_tree matches 6 run team join adv.cosm_taskmaster @s
execute if score @s adv.cosm_tree matches 7 run team join adv.cosm_beastmaster @s
execute if score @s adv.cosm_tree matches 8 run team join adv.cosm_victorian @s
execute if score @s adv.cosm_tree matches 9 run team join adv.cosm_fishing @s
execute if score @s adv.cosm_tree matches 10 run team join adv.cosm_mining @s
execute if score @s adv.cosm_tree matches 11 run team join adv.cosm_gathering @s
execute if score @s adv.cosm_tree matches 12 run team join adv.cosm_blacksmith @s
execute if score @s adv.cosm_tree matches 13 run team join adv.cosm_explorer @s
execute if score @s adv.cosm_tree matches 14 run team join adv.cosm_culinary @s
