# Spirit Artifact — Right-click consumed (consume_item advancement fired)
# Determines which ability to fire based on sneak state
# Run as @s (the player)

advancement revoke @s only evercraft:spirit/consume

# SAFETY: Only process if spirit weapon is in mainhand (SelectedItem).
# If consumed from offhand, SelectedItem is the WRONG item — restore would delete mainhand.
# Bail out: the offhand weapon is lost to consume, but we restore it from offhand data instead.
execute unless items entity @s weapon.mainhand *[custom_data~{spirit_artifact:true}] run data modify storage evercraft:item_restore spirit_weapon set from entity @s equipment.offhand
execute unless items entity @s weapon.mainhand *[custom_data~{spirit_artifact:true}] run tag @s add ec.sp_restore_offhand
execute unless items entity @s weapon.mainhand *[custom_data~{spirit_artifact:true}] run tag @s add ec.sp_restore
execute unless items entity @s weapon.mainhand *[custom_data~{spirit_artifact:true}] run return 0

# Save item data for restoration (consume destroys item in survival)
data modify storage evercraft:item_restore spirit_weapon set from entity @s SelectedItem

# Tag for 1-tick delayed restore
tag @s add ec.sp_restore

# === DETERMINE ABILITY (sneak = ability 2, standing = ability 1) ===
# Route to weapon-specific ability based on ec.sp_weapon ID

# Sneaking → Ability 2
execute if predicate evercraft:spirit/is_sneaking run function evercraft:spirit/use_ability2
# Standing → Ability 1
execute unless predicate evercraft:spirit/is_sneaking run function evercraft:spirit/use_ability1
