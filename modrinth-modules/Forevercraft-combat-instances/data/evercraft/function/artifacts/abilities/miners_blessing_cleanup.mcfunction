# Miner's Lantern - Cleanup Fortune when no longer applicable
# Removes fortune from tools when player switches away or removes lantern

# Check if player no longer has the lantern OR is not holding a valid tool
execute if items entity @s container.* *[custom_data~{artifact:"miners_lantern"}] if items entity @s weapon.mainhand #minecraft:pickaxes run return 0
execute if items entity @s container.* *[custom_data~{artifact:"miners_lantern"}] if items entity @s weapon.mainhand #minecraft:shovels run return 0

# Remove fortune from whatever they're holding (if it was added by us)
execute if items entity @s weapon.mainhand *[enchantments~[{enchantment:"minecraft:fortune",levels:{min:2}}]] run item modify entity @s weapon.mainhand evercraft:fortune_remove
tag @s remove ec.miners_lantern_fortune
