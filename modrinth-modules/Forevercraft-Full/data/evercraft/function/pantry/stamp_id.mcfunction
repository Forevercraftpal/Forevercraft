# Pantry — Stamp unique pantry_id onto held item
# Run as the player holding the pantry in mainhand

# 1. Assign new pantry ID
scoreboard players add #next_pantry_id ec.var 1
scoreboard players operation @s ec.pid = #next_pantry_id ec.var
execute store result storage evercraft:pantry temp.new_pid int 1 run scoreboard players get @s ec.pid

# 2. Hopper minecart intermediary to modify the held item
summon hopper_minecart ~ ~ ~ {Tags:["ec.temp_cart"],Enabled:0b}
item replace entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand

# 3. Stamp pantry_id onto the cart's item via macro
function evercraft:pantry/set_pantry_id with storage evercraft:pantry temp

# 4. Copy stamped item back to player mainhand
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] container.0

# 5. Kill temp cart
kill @e[type=hopper_minecart,tag=ec.temp_cart]
