# Restore remaining stack to mainhand after consuming 1
# Run as: player | storage evercraft:transmute temp.restore has item with count-1
summon minecraft:hopper_minecart ~ ~ ~ {Tags:["tx_cart"]}
data modify entity @e[type=minecraft:hopper_minecart,tag=tx_cart,limit=1] Items append from storage evercraft:transmute temp.restore
data modify entity @e[type=minecraft:hopper_minecart,tag=tx_cart,limit=1] Items[0].Slot set value 0b
item replace entity @s weapon.mainhand from entity @e[type=minecraft:hopper_minecart,tag=tx_cart,limit=1] container.0
kill @e[type=minecraft:hopper_minecart,tag=tx_cart]
