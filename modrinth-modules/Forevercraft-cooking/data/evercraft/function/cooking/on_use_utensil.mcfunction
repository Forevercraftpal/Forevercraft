# ============================================================
# Cooking Utensil — Right-Click Handler
# Triggered by consume_item advancement (consume_seconds:0)
# Runs as the player who used it
# ============================================================

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:cooking/use_utensil

# Delay restore by 1 tick — consume_item fires BEFORE the game removes the item,
# so an immediate loot replace gets overwritten. Tag for next-tick restore instead.
tag @s add CK.Restore

# If already in menu, toggle close
execute if entity @s[tag=CK.InMenu] run function evercraft:cooking/gui/close
execute if entity @s[tag=CK.InMenu] run return 0

# Scan for nearby campfire
function evercraft:cooking/check_campfire

# If no campfire found, notify player
execute if score #ck_campfire ec.temp matches 0 run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need to be near a campfire to cook.",color:"red"}]

# Campfire found — open the GUI
function evercraft:cooking/gui/open
