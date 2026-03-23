# Remove consumable component from mainhand striker mace
# Uses hopper_minecart intermediary (player item data is read-only in 1.21.5+)
# Run as player, at player

summon hopper_minecart ~ ~ ~ {Tags:["ec.temp_cart"]}
item replace entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand
data remove entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] Items[0].components."minecraft:consumable"
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] container.0
item replace entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1,sort=nearest] container.0 with minecraft:air
kill @e[type=hopper_minecart,tag=ec.temp_cart]
