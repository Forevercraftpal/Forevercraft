# ============================================================
# Quick Stash — Remote Entry Point (via House Key)
# Run as: player, at player position
# Routes items to labeled containers at hearthstone (cross-dimension)
# ============================================================

# Must have a home
execute unless score @s hs.tier matches 1.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need a Hearthstone to use this.",color:"red"}]

# Find player's hearthstone marker using gs_id (check all dimensions)
scoreboard players operation #hs_search hs.temp = @s hs.gs_id
execute in minecraft:overworld as @e[type=marker,tag=HS.Marker] if score @s ec.gs_id = #hs_search hs.temp run tag @s add HS.StashTarget
execute in minecraft:the_nether as @e[type=marker,tag=HS.Marker] if score @s ec.gs_id = #hs_search hs.temp run tag @s add HS.StashTarget
execute in minecraft:the_end as @e[type=marker,tag=HS.Marker] if score @s ec.gs_id = #hs_search hs.temp run tag @s add HS.StashTarget

# Check if marker found
execute unless entity @e[type=marker,tag=HS.StashTarget] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Could not find your Hearthstone.",color:"red"}]

# Check if stash containers exist near hearthstone (any dimension)
scoreboard players set #hs_has_barrels hs.temp 0
execute in minecraft:overworld at @e[type=marker,tag=HS.StashTarget,limit=1] if entity @e[type=marker,tag=HS.Stash,distance=..64] run scoreboard players set #hs_has_barrels hs.temp 1
execute in minecraft:the_nether at @e[type=marker,tag=HS.StashTarget,limit=1] if entity @e[type=marker,tag=HS.Stash,distance=..64] run scoreboard players set #hs_has_barrels hs.temp 1
execute in minecraft:the_end at @e[type=marker,tag=HS.StashTarget,limit=1] if entity @e[type=marker,tag=HS.Stash,distance=..64] run scoreboard players set #hs_has_barrels hs.temp 1
execute if score #hs_has_barrels hs.temp matches 0 run tag @e[type=marker,tag=HS.StashTarget] remove HS.StashTarget
execute if score #hs_has_barrels hs.temp matches 0 run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"No labeled containers found near your Hearthstone.",color:"gray"}]

# Initialize
tag @s add hs.stashing
tag @s add hs.remote_stash
scoreboard players set @s hs.stashed 0
scoreboard players set @s hs.failed 0

# Reuse existing slot iteration (find_barrel detects hs.remote_stash tag)
function evercraft:housing/stash/iterate_slots

# Cleanup
tag @s remove hs.stashing
tag @s remove hs.remote_stash
tag @e[type=marker,tag=HS.StashTarget] remove HS.StashTarget
function evercraft:housing/stash/report
