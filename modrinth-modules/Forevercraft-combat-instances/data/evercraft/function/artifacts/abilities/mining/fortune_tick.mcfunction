# Fortune Bonus System - Applied every tick to held tools
# This allows tools to have Fortune without the enchant permanently on them
# which would cause rarity bump and wrong name colors

# Add fortune to tools being held with fortune_bonus custom data and tag the player
# Skip awakened tools — weapon mastery handles Fortune via enchantment progression
execute as @a if items entity @s weapon.mainhand *[custom_data~{fortune_bonus:5b}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] unless items entity @s weapon.mainhand *[enchantments~[{enchantment:"minecraft:fortune",levels:{min:5b}}]] run item modify entity @s weapon.mainhand evercraft:fortune_add_5
execute as @a if items entity @s weapon.mainhand *[custom_data~{fortune_bonus:5b}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run tag @s add ec.holding_fortune_tool

# Remove fortune from tools that were put away (previous holders)
# We track this with a tag to avoid constantly checking all inventories
execute as @a[tag=ec.holding_fortune_tool] unless items entity @s weapon.mainhand *[custom_data~{fortune_bonus:5b}] run function evercraft:artifacts/abilities/mining/fortune_cleanup
