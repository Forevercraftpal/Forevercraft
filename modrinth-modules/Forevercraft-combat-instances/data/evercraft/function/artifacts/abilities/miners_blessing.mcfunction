# Miner's Lantern - Miner's Blessing
# Grants Night Vision and Fortune +2 on held pickaxe while in inventory
# Called from tick function for players with the accessory

# Check if player has Miner's Lantern in inventory
execute unless items entity @s container.* *[custom_data~{artifact:"miners_lantern"}] run return 0

# Grant Night Vision (always active while held)
effect give @s night_vision 13 0 true

# Apply Fortune +2 to held pickaxe (if holding one without fortune already)
execute if items entity @s weapon.mainhand #minecraft:pickaxes unless items entity @s weapon.mainhand *[enchantments~[{enchantment:"minecraft:fortune",levels:{min:1}}]] run item modify entity @s weapon.mainhand evercraft:fortune_add_2
execute if items entity @s weapon.mainhand #minecraft:pickaxes run tag @s add ec.miners_lantern_fortune

# Also works on shovels for gravel/clay
execute if items entity @s weapon.mainhand #minecraft:shovels unless items entity @s weapon.mainhand *[enchantments~[{enchantment:"minecraft:fortune",levels:{min:1}}]] run item modify entity @s weapon.mainhand evercraft:fortune_add_2
execute if items entity @s weapon.mainhand #minecraft:shovels run tag @s add ec.miners_lantern_fortune

# NOTE: No achievement tracking — passive tick-based ability
