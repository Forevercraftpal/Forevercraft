# Wise Wanderer — No Trades Setup
# Real interaction is via floating GUI (interaction entity click detection)
# Nitwit profession prevents vanilla trade UI from opening on right-click

data modify entity @s VillagerData.profession set value "minecraft:nitwit"
data modify entity @s Offers.Recipes set value []
