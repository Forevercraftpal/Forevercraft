# split commands into scrape, ox, or cancel
$execute if items entity @s player.cursor blaze_powder[custom_data~{trim_abilities_oxidize:1b}] run $(oxidize_command)
$execute if items entity @s player.cursor grindstone[custom_data~{trim_abilities_scrape:1b}] run $(scrape_command)
execute if items entity @s player.cursor stick[custom_data~{trim_abilities_cancel:1b}] run item replace entity @s player.cursor from entity @s player.crafting.2
execute unless items entity @s player.cursor * run item replace entity @s player.cursor from entity @s player.crafting.0

# clean
item replace entity @s player.crafting.0 with air
item replace entity @s player.crafting.1 with air
item replace entity @s player.crafting.2 with air
item replace entity @s player.crafting.3 with air
tag @s remove trim_abilities_bolting
data remove storage trim_abilities:copper_bolting root
