# Safely leave cosmetic teams (tree + crate) without affecting non-cosmetic teams
# Also clear crate title teams
function evercraft:advantage/cosmetics/leave_crate_teams
execute if entity @s[team=adv.cosm_agility] run team leave @s
execute if entity @s[team=adv.cosm_dexterity] run team leave @s
execute if entity @s[team=adv.cosm_evasion] run team leave @s
execute if entity @s[team=adv.cosm_stealth] run team leave @s
execute if entity @s[team=adv.cosm_vitality] run team leave @s
execute if entity @s[team=adv.cosm_taskmaster] run team leave @s
execute if entity @s[team=adv.cosm_beastmaster] run team leave @s
execute if entity @s[team=adv.cosm_victorian] run team leave @s
execute if entity @s[team=adv.cosm_fishing] run team leave @s
execute if entity @s[team=adv.cosm_mining] run team leave @s
execute if entity @s[team=adv.cosm_gathering] run team leave @s
execute if entity @s[team=adv.cosm_blacksmith] run team leave @s
execute if entity @s[team=adv.cosm_explorer] run team leave @s
execute if entity @s[team=adv.cosm_culinary] run team leave @s
