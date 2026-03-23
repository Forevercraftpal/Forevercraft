# ============================================================
# Set up a newly placed Hearthstone
# Run at: the block-aligned position of the lodestone
# Run as: the player who placed it
# ============================================================

# Stop raycast / fallback scan
scoreboard players set @s hs.temp 99
tag @s remove ec.searching

# Spawn marker at block center
summon marker ~0.5 ~ ~0.5 {Tags:["HS.Marker","HS.New","ec.lodestone_registered","smithed.entity"]}

# Spawn interaction entity on top (clickable)
summon interaction ~0.5 ~1.0 ~0.5 {Tags:["HS.Interact","smithed.entity"],width:0.9f,height:0.5f,response:1b}

# Spawn visual overlay (player_head texture on item_display, guidestone pattern)
function evercraft:housing/spawn_display with storage evercraft:housing

# Set player home data — Tier 1 (Settler)
scoreboard players set @s hs.tier 1

# Store home coordinates from the block position
execute store result score @s hs.home_x run data get entity @e[type=marker,tag=HS.New,limit=1] Pos[0]
execute store result score @s hs.home_y run data get entity @e[type=marker,tag=HS.New,limit=1] Pos[1]
execute store result score @s hs.home_z run data get entity @e[type=marker,tag=HS.New,limit=1] Pos[2]

# Store dimension
scoreboard players set @s hs.home_dim 0
execute if dimension minecraft:the_nether run scoreboard players set @s hs.home_dim 1
execute if dimension minecraft:the_end run scoreboard players set @s hs.home_dim 2

# Prepare owner data in temp storage (we ARE the player right now)
data modify storage evercraft:housing temp.owner_uuid set from entity @s UUID
execute store result storage evercraft:housing temp.uuid0 int 1 run data get entity @s UUID[0]
execute store result storage evercraft:housing temp.uuid1 int 1 run data get entity @s UUID[1]
execute store result storage evercraft:housing temp.uuid2 int 1 run data get entity @s UUID[2]
execute store result storage evercraft:housing temp.uuid3 int 1 run data get entity @s UUID[3]
data modify storage evercraft:housing temp.owner_name set value "Unknown"

# Copy owner UUID and tier to the marker entity
execute as @e[type=marker,tag=HS.New,limit=1] run data modify entity @s data.owner_uuid set from storage evercraft:housing temp.owner_uuid
execute as @e[type=marker,tag=HS.New,limit=1] run data modify entity @s data.owner_tier set value 1

# Register in the guidestone network (adds to guidestone registry for teleportation)
# Runs as the marker so it can read its own position
execute as @e[type=marker,tag=HS.New,limit=1] at @s run function evercraft:housing/register_guidestone

# Store the assigned guidestone ID on the player for later removal
execute store result score @s hs.gs_id run scoreboard players get @e[type=marker,tag=HS.New,limit=1] ec.gs_id

# 3x3 chunk loading — forceload area centered on hearthstone
# Calculate chunk-aligned forceload coordinates via scoreboard math
execute store result score #hs_fl_x hs.temp run data get entity @e[type=marker,tag=HS.New,limit=1] Pos[0]
execute store result score #hs_fl_z hs.temp run data get entity @e[type=marker,tag=HS.New,limit=1] Pos[2]
# Offset to avoid negative division issues, divide by 16 to get chunk, multiply back
scoreboard players add #hs_fl_x hs.temp 480000
scoreboard players add #hs_fl_z hs.temp 480000
scoreboard players set #16 hs.temp 16
scoreboard players operation #hs_fl_x hs.temp /= #16 hs.temp
scoreboard players operation #hs_fl_z hs.temp /= #16 hs.temp
scoreboard players operation #hs_fl_x hs.temp *= #16 hs.temp
scoreboard players operation #hs_fl_z hs.temp *= #16 hs.temp
scoreboard players remove #hs_fl_x hs.temp 480000
scoreboard players remove #hs_fl_z hs.temp 480000
# Now #hs_fl_x/z = chunk origin. Expand to 3x3: from origin-16 to origin+47
scoreboard players remove #hs_fl_x hs.temp 16
scoreboard players remove #hs_fl_z hs.temp 16
execute store result storage evercraft:housing temp.x1 int 1 run scoreboard players get #hs_fl_x hs.temp
execute store result storage evercraft:housing temp.z1 int 1 run scoreboard players get #hs_fl_z hs.temp
scoreboard players add #hs_fl_x hs.temp 47
scoreboard players add #hs_fl_z hs.temp 47
execute store result storage evercraft:housing temp.x2 int 1 run scoreboard players get #hs_fl_x hs.temp
execute store result storage evercraft:housing temp.z2 int 1 run scoreboard players get #hs_fl_z hs.temp
function evercraft:housing/forceload_add with storage evercraft:housing temp

# Cleanup
tag @e[type=marker,tag=HS.New] remove HS.New

# Effects
particle minecraft:flame ~0.5 ~1.2 ~0.5 0.3 0.3 0.3 0.02 30
particle minecraft:enchant ~0.5 ~1.5 ~0.5 0.5 0.5 0.5 0.5 50
playsound minecraft:block.amethyst_block.place master @s ~ ~ ~ 1 0.7
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 0.5 1.2

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Hearthstone placed! Your home is now claimed.",color:"green"}]
tellraw @s [{text:"  ",color:"gray"},{text:"Tier 1: Settler",color:"yellow"},{text:" — Regeneration I while in your 64x64 zone.",color:"gray"}]
tellraw @s [{text:"  3x3 chunks around your Hearthstone are now permanently loaded.",color:"dark_gray"}]
tellraw @s [{text:"  Right-click the Hearthstone to upgrade with Netherite Ingots.",color:"dark_gray"}]

# Give the player a Stash Label for barrel labeling
function evercraft:housing/stash/label/give
tellraw @s [{text:"  You received a ",color:"dark_gray"},{text:"Stash Label",color:"gold"},{text:" — sneak+use on barrels to organize your storage!",color:"dark_gray"}]
