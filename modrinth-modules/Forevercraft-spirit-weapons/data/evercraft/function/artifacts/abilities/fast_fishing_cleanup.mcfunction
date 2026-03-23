# Angler's Pearl - Cleanup fishing enchants
# Removes lure/luck when player switches away or removes pearl

# Check if player still has the pearl AND is holding a fishing rod
execute if items entity @s container.* *[custom_data~{artifact:"anglers_pearl"}] if items entity @s weapon.mainhand minecraft:fishing_rod run return 0

# Remove fishing enchants from whatever they're holding
execute if items entity @s weapon.mainhand minecraft:fishing_rod run item modify entity @s weapon.mainhand evercraft:fishing_remove
tag @s remove ec.anglers_pearl_fishing
