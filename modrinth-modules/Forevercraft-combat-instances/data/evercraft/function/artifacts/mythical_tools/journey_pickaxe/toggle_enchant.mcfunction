# Journey Pickaxe — Toggle Silk Touch / Fortune
# Called from check.mcfunction when player right-clicks (scoreboard detection)
# @s = player

# Check current state: pick_silk=1b means silk touch active → switch to fortune
# No pick_silk or pick_silk=0b means fortune active (default) → switch to silk touch
execute if items entity @s weapon.mainhand *[custom_data~{pick_silk:1b}] run function evercraft:artifacts/mythical_tools/journey_pickaxe/set_fortune
execute if items entity @s weapon.mainhand *[custom_data~{pick_silk:1b}] run return 0
function evercraft:artifacts/mythical_tools/journey_pickaxe/set_silk
