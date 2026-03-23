# ============================================================
# Check Legend Upgrade
# Called when a player reaches Legend rank in a village
# Checks if village is already upgraded; if not, upgrades it
# Run as the player, at the player
# ============================================================

# Get current village ID
execute unless score @s ec.current_village matches 1.. run return fail

# Check if village already has VS.Upgraded tag on its marker
execute if entity @e[type=armor_stand,tag=bestiary.village.name,tag=VS.Upgraded,distance=..80,limit=1] run return fail

# Village not yet upgraded — do it now
# Find the village marker and tag it
tag @e[type=armor_stand,tag=bestiary.village.name,distance=..80,limit=1,sort=nearest] add VS.Upgraded

# Store upgrade status in eden:database for persistence across entity reloads
execute store result storage eden:temp vs.vid int 1 run scoreboard players get @s ec.current_village
function evercraft:village/upgrades/upgrade_village_macro with storage eden:temp vs

# Spawn guards and announce
execute at @e[type=armor_stand,tag=bestiary.village.name,tag=VS.Upgraded,distance=..80,limit=1,sort=nearest] run function evercraft:village/upgrades/upgrade_village
