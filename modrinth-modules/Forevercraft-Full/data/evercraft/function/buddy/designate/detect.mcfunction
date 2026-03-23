# Buddy Designation — Detect (sneak + right-click catalogue near tamed mob)
# @s = player who used catalogue while sneaking
# Called from companions/handler/menu_v2/open.mcfunction (redirect at top)

# Revoke the consume advancement (same as normal menu open does)
advancement revoke @s only evercraft:companions/menu_v2/spawn

# Restore catalogue only if using legacy stick/wfoas item (book-based item is NOT consumed)
execute if items entity @s weapon.mainhand stick[custom_data~{CompanionMenuKey:true}] run tag @s add companion.restore_menu
execute if items entity @s weapon.mainhand stick[custom_data~{CompanionMenuKey:true}] run tag @s add companion.restore_mainhand
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{CompanionMenuKey:true}] run tag @s add companion.restore_menu
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{CompanionMenuKey:true}] run tag @s add companion.restore_mainhand

# Check if already in designation window (second click)
execute if score @s ec.bd_designating matches 1.. run return run function evercraft:buddy/designate/confirm

# First click — find nearest tamed mob and start 40-tick window
function evercraft:buddy/designate/find_nearest_tamed
