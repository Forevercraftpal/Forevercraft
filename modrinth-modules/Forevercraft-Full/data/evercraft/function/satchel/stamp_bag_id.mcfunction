# Satchel — Stamp unique bag_id onto held satchel item
# Run as the player holding the satchel in mainhand
# Requires temp.id (player satchel ID) already set

# 1. Assign new bag ID
scoreboard players add #next_bag_id ec.var 1
scoreboard players operation @s ec.bag_id = #next_bag_id ec.var
execute store result storage evercraft:satchel temp.new_bid int 1 run scoreboard players get @s ec.bag_id

# 2. Hopper minecart intermediary to modify the held item
summon hopper_minecart ~ ~ ~ {Tags:["ec.temp_cart"],Enabled:0b}
item replace entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand

# 3. Stamp bag_id onto the cart's item via macro
function evercraft:satchel/set_bag_id with storage evercraft:satchel temp

# 4. Copy stamped item back to player mainhand
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] container.0

# 5. Kill temp cart
kill @e[type=hopper_minecart,tag=ec.temp_cart]

# 6. Initialize bag storage
function evercraft:satchel/init_bag with storage evercraft:satchel temp

# 7. Register bag to player's registry
function evercraft:satchel/register_bag with storage evercraft:satchel temp
