# Scan all player slots for awakened weapons and distribute XP
# Called from xp_check_all when XP is gained
# Mainhand is already processed by add_xp — skip the selected hotbar slot

# Quick gate: any awakened weapons in inventory or offhand at all?
execute unless items entity @s container.* *[custom_data~{awakened:1b}] unless items entity @s weapon.offhand *[custom_data~{awakened:1b}] run return 0

# Get selected hotbar slot to skip (mainhand already processed)
execute store result score #wm_sel ec.var run data get entity @s SelectedItemSlot

# OPT: Count remaining awakened weapons in inventory for early exit
# clear count only covers Inventory (slots 0-35), not equipment
execute store result score #wm_remain ec.temp run clear @s *[custom_data~{awakened:1b}] 0
# Subtract mainhand (already processed, check_inv_slot skips it)
execute if items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run scoreboard players remove #wm_remain ec.temp 1

# Offhand (not counted by clear — equipment is separate)
execute if items entity @s weapon.offhand *[custom_data~{awakened:1b}] run function evercraft:weapon_mastery/add_xp_slot {item_slot:"weapon.offhand",data_path:"equipment.offhand"}

# Hotbar slots 0-8 (skip selected — already processed as mainhand)
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"0"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"1"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"2"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"3"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"4"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"5"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"6"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"7"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"8"}

# Main inventory slots 9-35
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"9"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"10"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"11"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"12"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"13"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"14"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"15"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"16"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"17"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"18"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"19"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"20"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"21"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"22"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"23"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"24"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"25"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"26"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"27"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"28"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"29"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"30"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"31"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"32"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"33"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"34"}
execute if score #wm_remain ec.temp matches 1.. run function evercraft:weapon_mastery/check_inv_slot {slot:"35"}
