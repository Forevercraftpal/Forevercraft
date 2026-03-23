# Water Net — On Break (barrel block removed)
# Run as: the WaterNet marker at the barrel position
# Barrel contents are already dropped by vanilla when barrel is broken

# Kill any vanilla barrel item drop (prevent plain barrel from dropping)
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2]

# Drop the Water Net item (with custom name, glint, lore, custom_data)
loot spawn ~ ~0.5 ~ loot evercraft:advantage/water_net_drop

# Notify nearby players
tellraw @a[distance=..32] [{text:"✦ ",color:"gold"},{text:"A Water Net",color:"aqua"},{text:" was retrieved.",color:"gray"}]
playsound minecraft:block.note_block.chime master @a[distance=..32] ~ ~ ~ 0.5 1.5

# Particles
particle minecraft:splash ~ ~0.5 ~ 0.3 0.3 0.3 0.3 15
particle minecraft:bubble ~ ~0.5 ~ 0.3 0.3 0.3 0.02 10

# Kill overlay display entities
kill @e[type=armor_stand,tag=WaterNet.stand,distance=..1]
kill @e[type=item_display,tag=WaterNet.display,distance=..1]

# Kill this marker
kill @s
