# Angler's Pearl - Fast Fishing
# Adds Lure II and Luck of the Sea I to held fishing rod
# Called from tick function for players with the accessory

# Check if player has Angler's Pearl in inventory
execute unless items entity @s container.* *[custom_data~{artifact:"anglers_pearl"}] run return 0

# Apply Lure II to held fishing rod (if holding one without lure already)
execute if items entity @s weapon.mainhand minecraft:fishing_rod unless items entity @s weapon.mainhand *[enchantments~[{enchantment:"minecraft:lure",levels:{min:1}}]] run item modify entity @s weapon.mainhand evercraft:fishing_lure_2
execute if items entity @s weapon.mainhand minecraft:fishing_rod run tag @s add ec.anglers_pearl_fishing

# Also add Luck of the Sea I
execute if items entity @s weapon.mainhand minecraft:fishing_rod unless items entity @s weapon.mainhand *[enchantments~[{enchantment:"minecraft:luck_of_the_sea",levels:{min:1}}]] run item modify entity @s weapon.mainhand evercraft:fishing_luck_1

# NOTE: No achievement tracking — passive tick-based ability
