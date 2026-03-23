# Macro: $(slot) = inventory slot number (0-35)
# Checks if an awakened weapon exists in this slot (skipping mainhand) and adds XP
# OPT: Decrement remaining count for early exit in scan_inventory
$execute unless score #wm_sel ec.var matches $(slot) if items entity @s container.$(slot) *[custom_data~{awakened:1b}] run scoreboard players remove #wm_remain ec.temp 1
$execute unless score #wm_sel ec.var matches $(slot) if items entity @s container.$(slot) *[custom_data~{awakened:1b}] run function evercraft:weapon_mastery/add_xp_slot {item_slot:"container.$(slot)",data_path:"Inventory[{Slot:$(slot)b}]"}
