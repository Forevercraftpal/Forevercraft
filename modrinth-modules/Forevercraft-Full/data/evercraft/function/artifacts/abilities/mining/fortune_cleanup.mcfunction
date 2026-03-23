# Clean up fortune from tools that are no longer held
# Scans all player slots for tools with fortune_bonus and removes the fortune enchant

tag @s remove ec.holding_fortune_tool

# Remove fortune from mainhand and offhand
execute if items entity @s weapon.mainhand *[custom_data~{fortune_bonus:5b}] run item modify entity @s weapon.mainhand evercraft:fortune_remove
execute if items entity @s weapon.offhand *[custom_data~{fortune_bonus:5b}] run item modify entity @s weapon.offhand evercraft:fortune_remove

# Remove fortune from all hotbar slots
execute if items entity @s hotbar.0 *[custom_data~{fortune_bonus:5b}] run item modify entity @s hotbar.0 evercraft:fortune_remove
execute if items entity @s hotbar.1 *[custom_data~{fortune_bonus:5b}] run item modify entity @s hotbar.1 evercraft:fortune_remove
execute if items entity @s hotbar.2 *[custom_data~{fortune_bonus:5b}] run item modify entity @s hotbar.2 evercraft:fortune_remove
execute if items entity @s hotbar.3 *[custom_data~{fortune_bonus:5b}] run item modify entity @s hotbar.3 evercraft:fortune_remove
execute if items entity @s hotbar.4 *[custom_data~{fortune_bonus:5b}] run item modify entity @s hotbar.4 evercraft:fortune_remove
execute if items entity @s hotbar.5 *[custom_data~{fortune_bonus:5b}] run item modify entity @s hotbar.5 evercraft:fortune_remove
execute if items entity @s hotbar.6 *[custom_data~{fortune_bonus:5b}] run item modify entity @s hotbar.6 evercraft:fortune_remove
execute if items entity @s hotbar.7 *[custom_data~{fortune_bonus:5b}] run item modify entity @s hotbar.7 evercraft:fortune_remove
execute if items entity @s hotbar.8 *[custom_data~{fortune_bonus:5b}] run item modify entity @s hotbar.8 evercraft:fortune_remove

# Remove fortune from all main inventory slots
execute if items entity @s inventory.0 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.0 evercraft:fortune_remove
execute if items entity @s inventory.1 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.1 evercraft:fortune_remove
execute if items entity @s inventory.2 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.2 evercraft:fortune_remove
execute if items entity @s inventory.3 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.3 evercraft:fortune_remove
execute if items entity @s inventory.4 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.4 evercraft:fortune_remove
execute if items entity @s inventory.5 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.5 evercraft:fortune_remove
execute if items entity @s inventory.6 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.6 evercraft:fortune_remove
execute if items entity @s inventory.7 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.7 evercraft:fortune_remove
execute if items entity @s inventory.8 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.8 evercraft:fortune_remove
execute if items entity @s inventory.9 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.9 evercraft:fortune_remove
execute if items entity @s inventory.10 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.10 evercraft:fortune_remove
execute if items entity @s inventory.11 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.11 evercraft:fortune_remove
execute if items entity @s inventory.12 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.12 evercraft:fortune_remove
execute if items entity @s inventory.13 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.13 evercraft:fortune_remove
execute if items entity @s inventory.14 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.14 evercraft:fortune_remove
execute if items entity @s inventory.15 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.15 evercraft:fortune_remove
execute if items entity @s inventory.16 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.16 evercraft:fortune_remove
execute if items entity @s inventory.17 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.17 evercraft:fortune_remove
execute if items entity @s inventory.18 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.18 evercraft:fortune_remove
execute if items entity @s inventory.19 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.19 evercraft:fortune_remove
execute if items entity @s inventory.20 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.20 evercraft:fortune_remove
execute if items entity @s inventory.21 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.21 evercraft:fortune_remove
execute if items entity @s inventory.22 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.22 evercraft:fortune_remove
execute if items entity @s inventory.23 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.23 evercraft:fortune_remove
execute if items entity @s inventory.24 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.24 evercraft:fortune_remove
execute if items entity @s inventory.25 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.25 evercraft:fortune_remove
execute if items entity @s inventory.26 *[custom_data~{fortune_bonus:5b}] run item modify entity @s inventory.26 evercraft:fortune_remove
