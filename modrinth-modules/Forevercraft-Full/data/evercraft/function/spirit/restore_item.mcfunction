# Spirit Artifact — Restore consumed item (1-tick delayed)
# consume_item fires BEFORE item removal — must restore next tick via hopper_minecart
# Run as @s at @s (the player who consumed)

# Anti-dupe: game's consume mechanic can restore consumed items on its own
# (same issue the satchel system handles — clear duplicates before we restore)
# Save offhand twin if present (clear may remove it)
data remove storage evercraft:temp sp_twin_backup
execute if items entity @s weapon.offhand *[custom_data~{spirit_artifact:true}] run data modify storage evercraft:temp sp_twin_backup set from entity @s equipment.offhand
# Clear ALL spirit artifact copies from player (inventory, hotbar, equipment)
clear @s *[custom_data~{spirit_artifact:true}]
execute if items entity @s weapon.mainhand *[custom_data~{spirit_artifact:true}] run item replace entity @s weapon.mainhand with minecraft:air
execute if items entity @s weapon.offhand *[custom_data~{spirit_artifact:true}] run item replace entity @s weapon.offhand with minecraft:air

# Summon temp hopper minecart at build limit (out of sight)
summon hopper_minecart ~ 320 ~ {Tags:["ec.sp_temp"],Items:[{Slot:0b,id:"minecraft:stone",count:1}]}

# Copy saved item data into cart
data modify entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] Items[0] set from storage evercraft:item_restore spirit_weapon

# Restore to correct slot — offhand if consumed from offhand, mainhand otherwise
execute if entity @s[tag=ec.sp_restore_offhand] run item replace entity @s weapon.offhand from entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] container.0
execute unless entity @s[tag=ec.sp_restore_offhand] run item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] container.0
tag @s remove ec.sp_restore_offhand

# Kill temp cart
kill @e[type=hopper_minecart,tag=ec.sp_temp]

# Restore offhand twin if it was saved
execute if data storage evercraft:temp sp_twin_backup.id run summon hopper_minecart ~ 320 ~ {Tags:["ec.sp_temp"],Items:[{Slot:0b,id:"minecraft:stone",count:1}]}
execute if data storage evercraft:temp sp_twin_backup.id run data modify entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] Items[0] set from storage evercraft:temp sp_twin_backup
execute if data storage evercraft:temp sp_twin_backup.id run item replace entity @s weapon.offhand from entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] container.0
execute if data storage evercraft:temp sp_twin_backup.id run kill @e[type=hopper_minecart,tag=ec.sp_temp]
