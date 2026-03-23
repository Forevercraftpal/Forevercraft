# Pantry — Decrement mainhand stack by 1 using hopper minecart intermediary
# #pantry_count ec.temp has the ORIGINAL count (2+)

# Calculate new count
scoreboard players remove #pantry_count ec.temp 1

# Use hopper minecart to modify item count
summon hopper_minecart ~ ~ ~ {Tags:["ec.temp_cart"],Enabled:0b}
item replace entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand

# Set count to original - 1
execute store result entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] Items[0].count int 1 run scoreboard players get #pantry_count ec.temp

# Copy back
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] container.0

# Cleanup
kill @e[type=hopper_minecart,tag=ec.temp_cart]
