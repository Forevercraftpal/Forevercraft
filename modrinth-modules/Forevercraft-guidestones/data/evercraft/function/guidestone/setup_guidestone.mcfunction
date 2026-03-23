# Guidestone — Setup at placed block position
# Run at: the lodestone block position, as: the player who placed it
# Position is at the block (from raycast hit)

# Stop raycast / fallback scan
scoreboard players set @s ec.gs_temp 99
tag @s remove ec.searching

# Spawn marker entity at the block position
summon marker ~ ~ ~ {Tags:["ec.gs_marker","ec.gs_new","ec.lodestone_registered","smithed.entity"]}

# Store the color in marker data
data modify entity @e[type=marker,tag=ec.gs_new,limit=1] data.color set from storage evercraft:guidestone temp_color

# Spawn item_display over the lodestone for visual texture
# Uses the color-appropriate model via macro
function evercraft:guidestone/spawn_display with storage evercraft:guidestone

# Spawn interaction entity for right-click detection
# Positioned above the block (Y+1) so it doesn't block block selection/breaking
# Height 0.6 covers the display area above the lodestone for easy right-clicking
summon interaction ~0.5 ~1 ~0.5 {width:1.2f,height:0.6f,response:1b,Tags:["ec.gs_interact","smithed.entity"]}

# Mark as registered and run registration
tag @e[type=marker,tag=ec.gs_new,limit=1] add ec.gs_registered

# Run registration logic as the marker entity
execute as @e[type=marker,tag=ec.gs_new,limit=1] run function evercraft:guidestone/register

# Cleanup
tag @e[type=marker,tag=ec.gs_new] remove ec.gs_new

# Effects (centered on top of lodestone block)
particle minecraft:reverse_portal ~0.5 ~1.2 ~0.5 0.3 0.5 0.3 0.02 30
particle minecraft:enchant ~0.5 ~1.5 ~0.5 0.5 0.5 0.5 0.5 50
playsound minecraft:block.amethyst_block.place master @s ~ ~ ~ 1 0.7
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 0.5 1.2
