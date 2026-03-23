# Remove temporary looting enchant from artifact weapons
# Called every tick to clean up the dynamically added looting
# Scans mainhand, offhand, and hotbar — player may have moved weapon between kill and cleanup

# Mainhand (always checked — original behavior)
item modify entity @s weapon.mainhand evercraft:looting_remove

# Offhand
execute if items entity @s weapon.offhand *[custom_data~{looting_bonus:1b}] run item modify entity @s weapon.offhand evercraft:looting_remove
execute if items entity @s weapon.offhand *[custom_data~{looting_bonus:2b}] run item modify entity @s weapon.offhand evercraft:looting_remove
execute if items entity @s weapon.offhand *[custom_data~{looting_bonus:3b}] run item modify entity @s weapon.offhand evercraft:looting_remove

# Hotbar slots 0-8 (only remove from slots that have a looting_bonus artifact)
execute if items entity @s hotbar.0 *[custom_data~{looting_bonus:1b}] run item modify entity @s hotbar.0 evercraft:looting_remove
execute if items entity @s hotbar.0 *[custom_data~{looting_bonus:2b}] run item modify entity @s hotbar.0 evercraft:looting_remove
execute if items entity @s hotbar.0 *[custom_data~{looting_bonus:3b}] run item modify entity @s hotbar.0 evercraft:looting_remove
execute if items entity @s hotbar.1 *[custom_data~{looting_bonus:1b}] run item modify entity @s hotbar.1 evercraft:looting_remove
execute if items entity @s hotbar.1 *[custom_data~{looting_bonus:2b}] run item modify entity @s hotbar.1 evercraft:looting_remove
execute if items entity @s hotbar.1 *[custom_data~{looting_bonus:3b}] run item modify entity @s hotbar.1 evercraft:looting_remove
execute if items entity @s hotbar.2 *[custom_data~{looting_bonus:1b}] run item modify entity @s hotbar.2 evercraft:looting_remove
execute if items entity @s hotbar.2 *[custom_data~{looting_bonus:2b}] run item modify entity @s hotbar.2 evercraft:looting_remove
execute if items entity @s hotbar.2 *[custom_data~{looting_bonus:3b}] run item modify entity @s hotbar.2 evercraft:looting_remove
execute if items entity @s hotbar.3 *[custom_data~{looting_bonus:1b}] run item modify entity @s hotbar.3 evercraft:looting_remove
execute if items entity @s hotbar.3 *[custom_data~{looting_bonus:2b}] run item modify entity @s hotbar.3 evercraft:looting_remove
execute if items entity @s hotbar.3 *[custom_data~{looting_bonus:3b}] run item modify entity @s hotbar.3 evercraft:looting_remove
execute if items entity @s hotbar.4 *[custom_data~{looting_bonus:1b}] run item modify entity @s hotbar.4 evercraft:looting_remove
execute if items entity @s hotbar.4 *[custom_data~{looting_bonus:2b}] run item modify entity @s hotbar.4 evercraft:looting_remove
execute if items entity @s hotbar.4 *[custom_data~{looting_bonus:3b}] run item modify entity @s hotbar.4 evercraft:looting_remove
execute if items entity @s hotbar.5 *[custom_data~{looting_bonus:1b}] run item modify entity @s hotbar.5 evercraft:looting_remove
execute if items entity @s hotbar.5 *[custom_data~{looting_bonus:2b}] run item modify entity @s hotbar.5 evercraft:looting_remove
execute if items entity @s hotbar.5 *[custom_data~{looting_bonus:3b}] run item modify entity @s hotbar.5 evercraft:looting_remove
execute if items entity @s hotbar.6 *[custom_data~{looting_bonus:1b}] run item modify entity @s hotbar.6 evercraft:looting_remove
execute if items entity @s hotbar.6 *[custom_data~{looting_bonus:2b}] run item modify entity @s hotbar.6 evercraft:looting_remove
execute if items entity @s hotbar.6 *[custom_data~{looting_bonus:3b}] run item modify entity @s hotbar.6 evercraft:looting_remove
execute if items entity @s hotbar.7 *[custom_data~{looting_bonus:1b}] run item modify entity @s hotbar.7 evercraft:looting_remove
execute if items entity @s hotbar.7 *[custom_data~{looting_bonus:2b}] run item modify entity @s hotbar.7 evercraft:looting_remove
execute if items entity @s hotbar.7 *[custom_data~{looting_bonus:3b}] run item modify entity @s hotbar.7 evercraft:looting_remove
execute if items entity @s hotbar.8 *[custom_data~{looting_bonus:1b}] run item modify entity @s hotbar.8 evercraft:looting_remove
execute if items entity @s hotbar.8 *[custom_data~{looting_bonus:2b}] run item modify entity @s hotbar.8 evercraft:looting_remove
execute if items entity @s hotbar.8 *[custom_data~{looting_bonus:3b}] run item modify entity @s hotbar.8 evercraft:looting_remove

tag @s remove artifact_got_looting
