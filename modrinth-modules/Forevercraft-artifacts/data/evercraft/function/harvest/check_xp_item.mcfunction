# Harvest XP — Check single item entity
# OPT: Tag-based scan (same pattern as mob_crates/check_item)
# Run as: each untagged item entity, at its position
tag @s add ec.hxp_checked
execute if data entity @s Item.components."minecraft:custom_data".ec_harvest_xp run function evercraft:harvest/award_xp_from_drop
