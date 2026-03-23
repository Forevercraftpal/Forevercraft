# Satchel Menu — Try to store artifact from mainhand into slot (macro)
# Run as player. Args from storage: bid, slot
# Validates: mainhand has is_artifact, NOT excluded type

# Check mainhand has an artifact
execute unless items entity @s weapon.mainhand *[custom_data~{is_artifact:true}] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Hold an artifact in your mainhand!",color:"red"}]
execute unless items entity @s weapon.mainhand *[custom_data~{is_artifact:true}] run return 0

# Check it's not a weapon/tool/armor (excluded types)
execute if items entity @s weapon.mainhand #evercraft:satchel_excluded run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Weapons, tools, and armor cannot be stored!",color:"red"}]
execute if items entity @s weapon.mainhand #evercraft:satchel_excluded run return 0

# Copy artifact custom_data and display name to temp
data modify storage evercraft:satchel temp.mainhand set from entity @s SelectedItem.components."minecraft:custom_data"
data modify storage evercraft:satchel temp.item_name set from entity @s SelectedItem.components."minecraft:custom_name"

# Write artifact ID, display name, and full item to the bag's storage slot
$data modify storage evercraft:satchel bags.$(bid).$(slot).artifact set from storage evercraft:satchel temp.mainhand.artifact
$data modify storage evercraft:satchel bags.$(bid).$(slot).name set from storage evercraft:satchel temp.item_name
$data modify storage evercraft:satchel bags.$(bid).$(slot).item set from entity @s SelectedItem

# Remove item from mainhand
item replace entity @s weapon.mainhand with air

# Increment stored count
scoreboard players add @s ec.satchel_count 1

# Sound + feedback
playsound minecraft:item.bundle.insert master @s ~ ~ ~ 0.8 1.0
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Artifact stored!",color:"green"}]
