# Healer Artifacts — Delayed Item Restore (preserves all modifications)
# Uses hopper_minecart intermediary to restore the exact saved item
# (glyphforge runes, patina, weapon mastery, etc. are preserved)
# ec.hl_restore_hand: 1 = mainhand, 0 = offhand

tag @s remove ec.hl_restore

# Set up hopper_minecart with saved item data
kill @e[type=hopper_minecart,tag=ec.hl_temp]
summon hopper_minecart ~ 320 ~ {Tags:["ec.hl_temp"],Items:[{Slot:0b,id:"minecraft:stone",count:1}]}
data modify entity @e[type=hopper_minecart,tag=ec.hl_temp,limit=1] Items[0] merge from storage evercraft:item_restore healer

# Restore to correct hand
execute if score @s ec.hl_restore_hand matches 1 run item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.hl_temp,limit=1] container.0
execute if score @s ec.hl_restore_hand matches 0 run item replace entity @s weapon.offhand from entity @e[type=hopper_minecart,tag=ec.hl_temp,limit=1] container.0

# Cleanup
data modify entity @e[type=hopper_minecart,tag=ec.hl_temp,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=ec.hl_temp]
