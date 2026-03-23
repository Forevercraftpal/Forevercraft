# Macro: $(slot) = head, chest, legs, or feet
# Check if armor in this slot can be prestiged
# Sets #wm_prestige_done = 1 on success, leaves at 0 on failure

$data modify storage evercraft:armor_mastery item set from entity @s equipment.$(slot).components."minecraft:custom_data"
execute store result score #am_level ec.var run data get storage evercraft:armor_mastery item.weapon_level
execute store result score #am_prestige ec.var run data get storage evercraft:armor_mastery item.weapon_prestige

function evercraft:armor_mastery/get_max_level

# Not at max level → skip
execute unless score #am_level ec.var >= #am_max_level ec.var run return 0

# At max prestige → skip
execute if score #am_prestige ec.var matches 3.. run return 0

# Apply prestige
$function evercraft:armor_mastery/prestige/apply {slot:"$(slot)"}
scoreboard players set #wm_prestige_done ec.var 1
