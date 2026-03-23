# Unified XP detection — weapons + armor
# Calculates XP delta once, distributes to all awakened gear

# Read current vanilla XP level
execute store result score @s wm.curr_xp run experience query @s levels

# Calculate gain since last check
scoreboard players operation @s wm.xp_gained = @s wm.curr_xp
scoreboard players operation @s wm.xp_gained -= @s wm.prev_xp

# Update previous for next check
scoreboard players operation @s wm.prev_xp = @s wm.curr_xp

# Early exit if no XP gained
execute unless score @s wm.xp_gained matches 1.. run return 0

# Party mastery bonus: +1 XP per gain when near a party member
execute if score @s ec.party_nearby matches 1.. run scoreboard players add @s wm.xp_gained 1

# Distribute to weapon in mainhand (optimized path — reads from SelectedItem)
execute if items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run function evercraft:weapon_mastery/add_xp

# Distribute to all other awakened weapons (offhand + inventory slots)
function evercraft:weapon_mastery/scan_inventory

# Distribute to each armor slot (independently)
execute if items entity @s armor.head *[custom_data~{awakened:1b}] run function evercraft:armor_mastery/add_xp {slot:"head"}
execute if items entity @s armor.chest *[custom_data~{awakened:1b}] run function evercraft:armor_mastery/add_xp {slot:"chest"}
execute if items entity @s armor.legs *[custom_data~{awakened:1b}] run function evercraft:armor_mastery/add_xp {slot:"legs"}
execute if items entity @s armor.feet *[custom_data~{awakened:1b}] run function evercraft:armor_mastery/add_xp {slot:"feet"}
