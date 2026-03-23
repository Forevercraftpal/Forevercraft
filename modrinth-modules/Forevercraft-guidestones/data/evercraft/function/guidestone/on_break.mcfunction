# Guidestone — On Break (lodestone block removed)
# Run as: the marker entity at the block position
# The lodestone is gone — clean up marker, item_display, and registry entry

# Store the ID for registry removal
execute store result storage evercraft:guidestone remove_id int 1 run scoreboard players get @s ec.gs_id

# Kill the item_display overlay and interaction entity
kill @e[type=armor_stand,tag=ec.gs_stand,distance=..2,limit=1]
kill @e[type=item_display,tag=ec.gs_display,distance=..2,limit=1]
kill @e[type=interaction,tag=ec.gs_interact,distance=..2,limit=1]

# Kill the vanilla lodestone item drop (spawns at the block position)
kill @e[type=item,nbt={Item:{id:"minecraft:lodestone"}},distance=..2]

# Drop the correct color variant guidestone item based on marker data
# Marker stores data.color as "guidestone", "guidestone_crimson", etc.
execute if data entity @s {data:{color:"guidestone_crimson"}} run loot spawn ~ ~0.5 ~ loot evercraft:guidestone/guidestone_drop_crimson
execute if data entity @s {data:{color:"guidestone_verdant"}} run loot spawn ~ ~0.5 ~ loot evercraft:guidestone/guidestone_drop_verdant
execute if data entity @s {data:{color:"guidestone_azure"}} run loot spawn ~ ~0.5 ~ loot evercraft:guidestone/guidestone_drop_azure
execute if data entity @s {data:{color:"guidestone_solar"}} run loot spawn ~ ~0.5 ~ loot evercraft:guidestone/guidestone_drop_solar
# Default amethyst (original color or missing data)
execute unless data entity @s {data:{color:"guidestone_crimson"}} unless data entity @s {data:{color:"guidestone_verdant"}} unless data entity @s {data:{color:"guidestone_azure"}} unless data entity @s {data:{color:"guidestone_solar"}} run loot spawn ~ ~0.5 ~ loot evercraft:guidestone/guidestone_drop

# Notify nearby players
tellraw @a[distance=..16] [{text:"[Forevercraft] ",color:"gold"},{text:"A guidestone was destroyed.",color:"gray"}]
playsound minecraft:block.amethyst_block.break master @a[distance=..16] ~ ~ ~ 1 0.5
particle minecraft:reverse_portal ~ ~0.5 ~ 0.3 0.3 0.3 0.03 20

# Remove registry entry matching this ID
# Iterate through registry, remove matching entry
function evercraft:guidestone/remove_from_registry

# Kill this marker
kill @s
