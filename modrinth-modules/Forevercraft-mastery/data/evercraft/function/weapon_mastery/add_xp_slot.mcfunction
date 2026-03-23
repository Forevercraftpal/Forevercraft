# Macro: $(item_slot) = slot name, $(data_path) = NBT data path
# Slot-flexible version of add_xp — works with any player slot
# e.g., {item_slot:"container.5",data_path:"Inventory[{Slot:5b}]"}
# e.g., {item_slot:"weapon.offhand",data_path:"equipment.offhand"}

# Read weapon data from specified slot into storage
$data modify storage evercraft:weapon_mastery item set from entity @s $(data_path).components."minecraft:custom_data"

# Read current values into scoreboards
execute store result score #wm_xp ec.var run data get storage evercraft:weapon_mastery item.weapon_xp
execute store result score #wm_level ec.var run data get storage evercraft:weapon_mastery item.weapon_level
execute store result score #wm_prestige ec.var run data get storage evercraft:weapon_mastery item.weapon_prestige

# Get max level for this weapon's tier
function evercraft:weapon_mastery/get_max_level

# If already at max level, do nothing
execute if score #wm_level ec.var >= #wm_max_level ec.var run return 0

# Add XP gained (1 weapon XP per vanilla XP level gained)
scoreboard players operation #wm_xp ec.var += @s wm.xp_gained

# Check level-up (escalating cost — level_up handles its own threshold check)
scoreboard players set #wm_enchants_dirty ec.var 0
function evercraft:weapon_mastery/level_up

# Write updated values back to item
$function evercraft:weapon_mastery/write_back_slot {item_slot:"$(item_slot)",data_path:"$(data_path)"}
