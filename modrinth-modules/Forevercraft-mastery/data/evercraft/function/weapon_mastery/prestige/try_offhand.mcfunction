# Check if offhand weapon can be prestiged
# Sets #wm_prestige_done = 1 on success, leaves at 0 on failure

# Read weapon data from offhand
data modify storage evercraft:weapon_mastery item set from entity @s equipment.offhand.components."minecraft:custom_data"
execute store result score #wm_level ec.var run data get storage evercraft:weapon_mastery item.weapon_level
execute store result score #wm_prestige ec.var run data get storage evercraft:weapon_mastery item.weapon_prestige

# Get max level for tier
function evercraft:weapon_mastery/get_max_level

# Not at max level → skip
execute unless score #wm_level ec.var >= #wm_max_level ec.var run return 0

# At max prestige → skip
execute if score #wm_prestige ec.var matches 3.. run return 0

# Apply prestige
function evercraft:weapon_mastery/prestige/apply_offhand
scoreboard players set #wm_prestige_done ec.var 1
