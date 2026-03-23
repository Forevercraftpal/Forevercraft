# Guild Stone — Break detection
# @s = ec.guildstone marker entity, at its position
# Lodestone block is no longer present — clean up

# Remove from guidestone registry (only if registered)
execute if entity @s[tag=ec.gs_registered] run execute store result storage evercraft:guidestone remove_id int 1 run scoreboard players get @s ec.gs_id
execute if entity @s[tag=ec.gs_registered] run function evercraft:guidestone/remove_from_registry

# Close any open guild menus nearby
execute as @a[tag=ec.guild_in_menu,distance=..8] run function evercraft:guild/gui/menu/close

# Kill nearby interaction entity, armor_stand, and item_display overlay
# (Passengers dismount when parent is killed, so kill item_display explicitly)
kill @e[type=interaction,tag=ec.guildstone_interact,distance=..2]
kill @e[type=item_display,tag=ec.guildstone_display,distance=..2]
kill @e[type=armor_stand,tag=ec.guildstone_stand,distance=..2]

# Kill the vanilla lodestone item drop and spawn the guild stone item instead
kill @e[type=item,nbt={Item:{id:"minecraft:lodestone"}},distance=..2]
loot spawn ~ ~ ~ loot evercraft:guild/guild_stone_drop

# Notify nearby players
tellraw @a[distance=..16] [{text:"[Guild] ",color:"green"},{text:"A Guild Stone was destroyed!",color:"red"}]
playsound minecraft:block.beacon.deactivate player @a[distance=..16] ~ ~ ~ 1 0.5

# Kill self (the marker)
kill @s
