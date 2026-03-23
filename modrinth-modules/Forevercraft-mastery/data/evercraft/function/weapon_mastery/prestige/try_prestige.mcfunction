# Revoke advancement for re-use
advancement revoke @s only evercraft:weapon_mastery/prestige/consume_token

# Track whether prestige was applied
scoreboard players set #wm_prestige_done ec.var 0

# Priority 1: Check mainhand weapon
execute if items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run function evercraft:weapon_mastery/prestige/try_weapon
execute if score #wm_prestige_done ec.var matches 1 run return 0

# Priority 2: Check offhand weapon (for items with interactions like fishing rods)
execute if items entity @s weapon.offhand *[custom_data~{awakened:1b}] run function evercraft:weapon_mastery/prestige/try_offhand
execute if score #wm_prestige_done ec.var matches 1 run return 0

# Priority 3: Check armor slots (top to bottom)
execute if items entity @s armor.head *[custom_data~{awakened:1b}] run function evercraft:armor_mastery/prestige/try_slot {slot:"head"}
execute if score #wm_prestige_done ec.var matches 1 run return 0
execute if items entity @s armor.chest *[custom_data~{awakened:1b}] run function evercraft:armor_mastery/prestige/try_slot {slot:"chest"}
execute if score #wm_prestige_done ec.var matches 1 run return 0
execute if items entity @s armor.legs *[custom_data~{awakened:1b}] run function evercraft:armor_mastery/prestige/try_slot {slot:"legs"}
execute if score #wm_prestige_done ec.var matches 1 run return 0
execute if items entity @s armor.feet *[custom_data~{awakened:1b}] run function evercraft:armor_mastery/prestige/try_slot {slot:"feet"}
execute if score #wm_prestige_done ec.var matches 1 run return 0

# No valid target found — return the token
function evercraft:weapon_mastery/prestige/fail
