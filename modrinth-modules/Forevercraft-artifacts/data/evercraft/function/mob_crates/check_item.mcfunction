# Mob Crate — Check single item entity
# Run as each unchecked item — mark checked + process if crate marker
tag @s add ec.crate_checked
execute if data entity @s Item.components."minecraft:custom_data".mob_crate_marker at @s positioned ~ ~0.1 ~ run function evercraft:mob_crates/process_marker
