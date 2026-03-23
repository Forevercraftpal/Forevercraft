# Count harmonizable effects from hero-satchel-stored boss artifacts for @s
# Called after normal counting in count_all

# Skip if player has no hero satchel ID
execute unless score @s ec.hsatch_id matches 1.. run return 0

# Skip if player doesn't have a hero satchel anywhere (hotbar, inventory, or bundle)
execute unless items entity @s hotbar.* *[custom_data~{hero_satchel:true}] unless items entity @s inventory.* *[custom_data~{hero_satchel:true}] unless data entity @s Inventory[{components:{"minecraft:bundle_contents":[{components:{"minecraft:custom_data":{hero_satchel:1b}}}]}}] run return 0

# Copy player ID to temp for registry lookup
execute store result storage evercraft:hero_satchel temp.id int 1 run scoreboard players get @s ec.hsatch_id

# Copy the player's bag registry to iteration list
function evercraft:hero_satchel/copy_registry with storage evercraft:hero_satchel temp

# Start recursive iteration over registered bags
function evercraft:harmonize/count_next_hero_satchel_bag
