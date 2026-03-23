# Soulbound — Restore offhand spirit artifact from per-player vault
# Find vault marker matching this player's uid
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid

# Copy vault's stored offhand to temp storage for hopper minecart transfer
execute as @e[tag=ec.sp_vault] if score @s ec.sp_owner = #owner_check ec.temp run data modify storage evercraft:temp sb_restore set from entity @s data.offhand

# Restore via hopper minecart
summon hopper_minecart ~ 320 ~ {Tags:["ec.sp_temp"],Items:[{Slot:0b,id:"minecraft:stone",count:1}]}
data modify entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] Items[0] set from storage evercraft:temp sb_restore
item replace entity @s weapon.offhand from entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] container.0
kill @e[type=hopper_minecart,tag=ec.sp_temp]
