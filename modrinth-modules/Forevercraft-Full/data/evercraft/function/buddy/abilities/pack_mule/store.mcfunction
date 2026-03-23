# Pack Mule — Store Item (macro)
# $(pid) = player ID, $(slot) = s0/s1/s2
# Stores ANY item from mainhand (unlike satchel which only takes artifacts)

# Check mainhand has something
execute unless data entity @s SelectedItem run tellraw @s [{"text":"[Buddy] ","color":"#FFD700"},{"text":"Hold an item in your mainhand!","color":"red"}]
execute unless data entity @s SelectedItem run return fail

# Copy item name and full NBT to storage
$data modify storage evercraft:buddy mule.$(pid).$(slot).name set from entity @s SelectedItem.components."minecraft:custom_name"
# If no custom_name, use item ID as fallback display
$execute unless data entity @s SelectedItem.components."minecraft:custom_name" run data modify storage evercraft:buddy mule.$(pid).$(slot).name set from entity @s SelectedItem.id
$data modify storage evercraft:buddy mule.$(pid).$(slot).item set from entity @s SelectedItem

# Remove item from mainhand
item replace entity @s weapon.mainhand with air

# Sound + feedback
playsound minecraft:item.bundle.insert master @s ~ ~ ~ 0.8 1.0
tellraw @s [{"text":"[Buddy] ","color":"#FFD700"},{"text":"Item stored in buddy's pack!","color":"green"}]
