# Black Market Heist — Restore Elytra
# Uses hopper_minecart intermediary to restore saved elytra to player

# Summon temp cart, copy elytra to it, transfer to player, kill cart
execute as @a[tag=ec.heist_active_tag] at @s run summon hopper_minecart ~ ~ ~ {Tags:["heist.temp_cart"]}
data modify entity @e[type=hopper_minecart,tag=heist.temp_cart,limit=1] Items append from storage evercraft:heist_temp saved_elytra
execute as @a[tag=ec.heist_active_tag] run item replace entity @s armor.chest from entity @e[type=hopper_minecart,tag=heist.temp_cart,limit=1] container.0
kill @e[type=hopper_minecart,tag=heist.temp_cart]

# Clear saved elytra
data remove storage evercraft:heist_temp saved_elytra
