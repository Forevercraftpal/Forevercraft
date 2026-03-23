# Count harmonizable effects from satchel-stored artifacts for @s
# Called after normal counting in count_all

# Skip if player has no satchel ID
execute unless score @s ec.satchel_id matches 1.. run return 0

# Skip if player doesn't have a satchel anywhere (hotbar, inventory, or bundle)
execute unless items entity @s hotbar.* *[custom_data~{satchel:true}] unless items entity @s inventory.* *[custom_data~{satchel:true}] unless data entity @s Inventory[{components:{"minecraft:bundle_contents":[{components:{"minecraft:custom_data":{satchel:1b}}}]}}] run return 0

# Copy player ID to temp for registry lookup
execute store result storage evercraft:satchel temp.id int 1 run scoreboard players get @s ec.satchel_id

# Copy the player's bag registry to iteration list
function evercraft:satchel/copy_registry with storage evercraft:satchel temp

# Start recursive iteration over registered bags
function evercraft:harmonize/count_next_satchel_bag
