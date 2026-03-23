# Pantry Menu — Try Store (macro)
# Args: pid, slot
# Validates mainhand is a cooking item, stores it to the pantry slot

# Check mainhand has a cooking item (ingredient, utensil, or meal)
# Use 'if data' for ingredient_id since it has varying string values
scoreboard players set #pantry_valid ec.temp 0
execute if data entity @s SelectedItem.components."minecraft:custom_data".ingredient_id run scoreboard players set #pantry_valid ec.temp 1
execute if items entity @s weapon.mainhand *[custom_data~{cooking_utensil:true}] run scoreboard players set #pantry_valid ec.temp 1
execute if items entity @s weapon.mainhand *[custom_data~{ec_meal:true}] run scoreboard players set #pantry_valid ec.temp 1

execute if score #pantry_valid ec.temp matches 0 run tellraw @s [{text:"[Pantry] ",color:"gold"},{text:"Hold a cooking item in your mainhand!",color:"red"}]
execute if score #pantry_valid ec.temp matches 0 run return 0

# Write item data to storage slot
$data modify storage evercraft:pantry bags.$(pid).$(slot).item set from entity @s SelectedItem
$data modify storage evercraft:pantry bags.$(pid).$(slot).name set from entity @s SelectedItem.components."minecraft:custom_name"

# Stored item in pantry should be count 1
$data modify storage evercraft:pantry bags.$(pid).$(slot).item.count set value 1

# Remove one item from mainhand
execute store result score #pantry_count ec.temp run data get entity @s SelectedItem.count
execute if score #pantry_count ec.temp matches ..1 run item replace entity @s weapon.mainhand with air
execute if score #pantry_count ec.temp matches 2.. run function evercraft:pantry/menu/decrement_mainhand

# Craftforever milestone tracking
scoreboard players add @s ec.pantry_stored 1

# Sound + feedback
playsound minecraft:item.bundle.insert master @s ~ ~ ~ 0.8 1.0
tellraw @s [{text:"[Pantry] ",color:"gold"},{text:"Item stored!",color:"green"}]
