# Macro: $(slot) = head, chest, legs, or feet
# Add XP to an awakened armor piece in the specified slot

# Read armor data from equipment slot into storage
$data modify storage evercraft:armor_mastery item set from entity @s equipment.$(slot).components."minecraft:custom_data"

# Store slot name for classify_armor
$data modify storage evercraft:armor_mastery current_slot set value "$(slot)"

# Read current values into scoreboards (use #am_ prefix to avoid weapon collision)
execute store result score #am_xp ec.var run data get storage evercraft:armor_mastery item.weapon_xp
execute store result score #am_level ec.var run data get storage evercraft:armor_mastery item.weapon_level
execute store result score #am_prestige ec.var run data get storage evercraft:armor_mastery item.weapon_prestige

# Get max level for this armor's tier
function evercraft:armor_mastery/get_max_level

# If already at max level, do nothing
execute if score #am_level ec.var >= #am_max_level ec.var run return 0

# Add XP gained (1 armor XP per vanilla XP level gained)
scoreboard players operation #am_xp ec.var += @s wm.xp_gained

# Check level-up (escalating cost — level_up handles its own threshold check)
scoreboard players set #am_enchants_dirty ec.var 0
function evercraft:armor_mastery/level_up

# Write updated values back to item
$function evercraft:armor_mastery/write_back {slot:"$(slot)"}
