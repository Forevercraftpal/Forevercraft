# Pantry — Restore item after consume_item removal (1 tick delayed)
tag @s remove ec.pantry_restore

# Restore via hopper minecart intermediary (preserves stamped pantry_id + all NBT)
summon hopper_minecart ~ 320 ~ {Tags:["ec.pantry_cart"],Enabled:0b,Items:[{Slot:0b,id:"minecraft:stone",count:1}]}
data modify entity @e[type=hopper_minecart,tag=ec.pantry_cart,limit=1] Items[0] merge from storage evercraft:pantry temp.restore_item

# Restore to correct hand
execute if entity @s[tag=ec.pantry_mainhand] run item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.pantry_cart,limit=1] container.0
execute unless entity @s[tag=ec.pantry_mainhand] run item replace entity @s weapon.offhand from entity @e[type=hopper_minecart,tag=ec.pantry_cart,limit=1] container.0
tag @s remove ec.pantry_mainhand

kill @e[type=hopper_minecart,tag=ec.pantry_cart]
