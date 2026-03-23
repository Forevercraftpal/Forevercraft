# Dragon Fan — Restore consumed item preserving all modifications
# (glyphforge runes, patina, weapon mastery, etc.)
# Uses hopper_minecart intermediary since Player Inventory is read-only in 1.21.5+

kill @e[type=hopper_minecart,tag=ec.df_temp]
summon hopper_minecart ~ 320 ~ {Tags:["ec.df_temp"],Items:[{Slot:0b,id:"minecraft:stone",count:1}]}
data modify entity @e[type=hopper_minecart,tag=ec.df_temp,limit=1] Items[0] merge from storage evercraft:item_restore dragon_fan
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.df_temp,limit=1] container.0
data modify entity @e[type=hopper_minecart,tag=ec.df_temp,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=ec.df_temp]
