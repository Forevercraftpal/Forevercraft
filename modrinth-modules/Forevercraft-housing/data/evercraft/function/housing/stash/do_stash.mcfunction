# ============================================================
# Quick Stash — Main Entry Point
# Run as: player, at player position
# Routes all non-hotbar inventory items to labeled containers
# ============================================================

# Check if any stash containers exist nearby
execute unless entity @e[type=marker,tag=HS.Stash,distance=..32] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"No labeled containers found. Use a Stash Label on containers first.",color:"gray"}]

# Initialize
tag @s add hs.stashing
scoreboard players set @s hs.stashed 0
scoreboard players set @s hs.failed 0

# Iterate over main inventory (slots 9-35, skipping hotbar 0-8)
function evercraft:housing/stash/iterate_slots

# Cleanup + report
tag @s remove hs.stashing
function evercraft:housing/stash/report
