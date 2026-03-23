# Lore Discovery: Attempt to spawn a sparkle near the player
# Run as player, at player position

# Cap: max 3 active sparkles within 60 blocks
execute store result score #lore_count ec.temp if entity @e[type=marker,tag=ec.lore_sparkle,distance=..60]
execute if score #lore_count ec.temp matches 3.. run return run function evercraft:lore/reset_timer

# Summon temp marker at player position
summon marker ~ ~ ~ {Tags:["ec.lore_temp","ec.spawn_temp"]}

# Spread to random ground position within 50 blocks
# Nether: cap at Y=128 to avoid bedrock roof placement
execute if predicate evercraft:in_nether store success score #lore_spread ec.temp run spreadplayers ~ ~ 2 50 under 128 false @e[type=marker,tag=ec.lore_temp,limit=1]
execute unless predicate evercraft:in_nether store success score #lore_spread ec.temp run spreadplayers ~ ~ 2 50 false @e[type=marker,tag=ec.lore_temp,limit=1]

# If spread failed (no valid position), clean up and skip
execute if score #lore_spread ec.temp matches 0 run kill @e[type=marker,tag=ec.lore_temp]
execute if score #lore_spread ec.temp matches 0 run return run function evercraft:lore/reset_timer

# Y-level adjustment: spawn near player's depth when underground
execute store result score #surface_y ec.temp run data get entity @e[type=marker,tag=ec.lore_temp,limit=1] Pos[1]
execute store result score #player_y ec.temp run data get entity @s Pos[1]
scoreboard players operation #player_y ec.temp -= #surface_y ec.temp
execute if score #player_y ec.temp matches ..-5 run function evercraft:common/try_adjust_y
execute if score #player_y ec.temp matches ..-5 if score #scan_ok ec.temp matches 0 run kill @e[type=marker,tag=ec.lore_temp]
execute if score #player_y ec.temp matches ..-5 if score #scan_ok ec.temp matches 0 run return run function evercraft:lore/reset_timer
tag @e[type=marker,tag=ec.lore_temp] remove ec.spawn_temp

# Place sparkle at the spread position
execute at @e[type=marker,tag=ec.lore_temp,limit=1] run function evercraft:lore/place_sparkle

# Clean up temp marker
kill @e[type=marker,tag=ec.lore_temp]

# Reset timer
function evercraft:lore/reset_timer
