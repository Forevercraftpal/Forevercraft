# ============================================================
# Stash Label — Process (1 tick after consume)
# Run as: player, at player
# Restores label item + raycasts to find a container
# ============================================================
tag @s remove HS.Labeling

# Restore the consumed label item
function evercraft:housing/stash/label/give

# Refresh zone check (housing tick is 2s — score can be stale)
function evercraft:housing/zone/check

# Must be in hearthstone zone
execute unless score @s hs.in_zone matches 1 run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Must be near your Hearthstone.",color:"red"}]

# Raycast from eyes to find a container (max 5 blocks = 25 steps at 0.2)
scoreboard players set @s hs.temp 0
execute anchored eyes positioned ^ ^ ^0.2 run function evercraft:housing/stash/label/raycast

# If no container found, give feedback
execute unless entity @s[tag=HS.BarrelFound] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"No container found. Look at a barrel or chest and try again.",color:"gray"}]
tag @s remove HS.BarrelFound
scoreboard players set @s hs.temp 0
