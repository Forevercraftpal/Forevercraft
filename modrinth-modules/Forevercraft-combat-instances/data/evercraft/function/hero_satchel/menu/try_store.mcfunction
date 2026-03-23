# Hero's Satchel Menu — Try to store boss artifact from mainhand into slot (macro)
# Run as player. Args from storage: bid, slot
# Only accepts boss_exclusive artifacts (unlike regular satchel)

# Check mainhand has a boss-exclusive artifact
execute unless items entity @s weapon.mainhand *[custom_data~{boss_exclusive:true}] run tellraw @s [{text:"[Hero's Satchel] ",color:"#FF4500"},{text:"Hold a boss artifact in your mainhand!",color:"red"}]
execute unless items entity @s weapon.mainhand *[custom_data~{boss_exclusive:true}] run return 0

# Copy artifact custom_data and display name to temp
data modify storage evercraft:hero_satchel temp.mainhand set from entity @s SelectedItem.components."minecraft:custom_data"
data modify storage evercraft:hero_satchel temp.item_name set from entity @s SelectedItem.components."minecraft:custom_name"

# Write artifact ID, display name, and full item to the storage slot
$data modify storage evercraft:hero_satchel bags.$(bid).$(slot).artifact set from storage evercraft:hero_satchel temp.mainhand.artifact
$data modify storage evercraft:hero_satchel bags.$(bid).$(slot).name set from storage evercraft:hero_satchel temp.item_name
$data modify storage evercraft:hero_satchel bags.$(bid).$(slot).item set from entity @s SelectedItem

# Remove item from mainhand
item replace entity @s weapon.mainhand with air

# Increment stored count
scoreboard players add @s ec.hsatch_count 1

# Sound + feedback
playsound minecraft:item.bundle.insert master @s ~ ~ ~ 0.8 1.0
tellraw @s [{text:"[Hero's Satchel] ",color:"#FF4500"},{text:"Boss artifact stored!",color:"green"}]
