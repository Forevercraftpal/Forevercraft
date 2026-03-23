# ============================================================
# Hearthstone — Broken (lodestone block removed)
# Run as: the HS.Marker entity, at its position
# Clean up marker, interaction, registry entry, player data
# ============================================================

# Close any open menus for nearby players
execute as @a[tag=HS.InMenu,distance=..10] at @s run function evercraft:housing/gui/close

# Kill the interaction entity and visual overlay
kill @e[type=interaction,tag=HS.Interact,distance=..2]
kill @e[type=armor_stand,tag=HS.Stand,distance=..2]
kill @e[type=item_display,tag=HS.Display,distance=..2]

# Kill all stash barrel markers and displays within 32 blocks
kill @e[type=marker,tag=HS.Stash,distance=..32]
kill @e[type=text_display,tag=HS.StashDisplay,distance=..32]

# Kill the vanilla lodestone item drop (spawns at the block position)
kill @e[type=item,nbt={Item:{id:"minecraft:lodestone"}},distance=..2]

# Drop the hearthstone item back
loot spawn ~ ~0.5 ~ loot evercraft:housing/hearthstone_drop

# Store the ID for guidestone registry removal
execute store result storage evercraft:guidestone remove_id int 1 run scoreboard players get @s ec.gs_id

# Remove from guidestone registry
function evercraft:guidestone/remove_from_registry

# Drop home companions as items and clean up before resetting owner data
execute store result score #hs_break_id hc.slot run scoreboard players get @s ec.gs_id
execute as @a[scores={hs.tier=1..}] if score @s hs.gs_id = #hs_break_id hc.slot run function evercraft:companions/handler/home/on_hearthstone_break

# Reset the owner's home data
# Find the owner by matching the stored UUID
# Since we can't easily match UUID, find the nearest player and check their hs.gs_id
execute as @a[scores={hs.tier=1..}] run function evercraft:housing/check_owner_reset

# Remove 3x3 chunk forceload (same math as setup, using marker Pos)
execute store result score #hs_fl_x hs.temp run data get entity @s Pos[0]
execute store result score #hs_fl_z hs.temp run data get entity @s Pos[2]
scoreboard players add #hs_fl_x hs.temp 480000
scoreboard players add #hs_fl_z hs.temp 480000
scoreboard players set #16 hs.temp 16
scoreboard players operation #hs_fl_x hs.temp /= #16 hs.temp
scoreboard players operation #hs_fl_z hs.temp /= #16 hs.temp
scoreboard players operation #hs_fl_x hs.temp *= #16 hs.temp
scoreboard players operation #hs_fl_z hs.temp *= #16 hs.temp
scoreboard players remove #hs_fl_x hs.temp 480000
scoreboard players remove #hs_fl_z hs.temp 480000
scoreboard players remove #hs_fl_x hs.temp 16
scoreboard players remove #hs_fl_z hs.temp 16
execute store result storage evercraft:housing temp.x1 int 1 run scoreboard players get #hs_fl_x hs.temp
execute store result storage evercraft:housing temp.z1 int 1 run scoreboard players get #hs_fl_z hs.temp
scoreboard players add #hs_fl_x hs.temp 47
scoreboard players add #hs_fl_z hs.temp 47
execute store result storage evercraft:housing temp.x2 int 1 run scoreboard players get #hs_fl_x hs.temp
execute store result storage evercraft:housing temp.z2 int 1 run scoreboard players get #hs_fl_z hs.temp
function evercraft:housing/forceload_remove with storage evercraft:housing temp

# Notify nearby players
tellraw @a[distance=..16] [{text:"[Forevercraft] ",color:"gold"},{text:"A Hearthstone was destroyed.",color:"gray"}]
playsound minecraft:block.amethyst_block.break master @a[distance=..16] ~ ~ ~ 1 0.5
particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.03 20

# Kill this marker
kill @s
