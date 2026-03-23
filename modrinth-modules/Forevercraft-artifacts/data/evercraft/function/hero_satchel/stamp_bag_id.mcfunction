# Hero's Satchel — Stamp unique bag_id onto held hero satchel item
# Run as the player holding the hero satchel in mainhand
# Requires temp.id (player hero satchel ID) already set

# 1. Assign new bag ID
scoreboard players add #next_hbag_id ec.var 1
scoreboard players operation @s ec.hbag_id = #next_hbag_id ec.var
execute store result storage evercraft:hero_satchel temp.new_bid int 1 run scoreboard players get @s ec.hbag_id

# 2. Hopper minecart intermediary to modify the held item
summon hopper_minecart ~ ~ ~ {Tags:["ec.temp_cart"],Enabled:0b}
item replace entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand

# 3. Stamp bag_id onto the cart's item via macro
function evercraft:hero_satchel/set_bag_id with storage evercraft:hero_satchel temp

# 4. Copy stamped item back to player mainhand
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] container.0

# 5. Kill temp cart
kill @e[type=hopper_minecart,tag=ec.temp_cart]

# 6. Initialize bag storage (11 slots)
function evercraft:hero_satchel/init_bag with storage evercraft:hero_satchel temp

# 7. Register bag to player's registry
function evercraft:hero_satchel/register_bag with storage evercraft:hero_satchel temp
