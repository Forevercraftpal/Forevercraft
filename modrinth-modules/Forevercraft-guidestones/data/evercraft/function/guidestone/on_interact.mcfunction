# Guidestone — Interaction detected (right-click on guidestone)
# Run as: the interaction entity, at its position
# The interaction data contains the player who clicked

# Clear the interaction data so it can fire again
data remove entity @s interaction

# Find the nearest registered guidestone marker (should be within 2 blocks)
execute unless entity @e[type=marker,tag=ec.gs_registered,distance=..2] run return 0

# If the nearest player is already in a menu, ignore the click entirely
execute if entity @p[distance=..6,tag=ec.gs_in_menu] run return 0

# --- Portal Dial binding intercept ---
# If the nearest player holds a Portal Dial, bind it to this guidestone instead of opening the menu
execute as @p[distance=..6,tag=!ec.gs_in_menu] if items entity @s weapon.mainhand compass[custom_data~{portal_dial:true}] at @s run return run function evercraft:portal_dial/bind_guidestone {hand:"mainhand"}
execute as @p[distance=..6,tag=!ec.gs_in_menu] if items entity @s weapon.offhand compass[custom_data~{portal_dial:true}] at @s run return run function evercraft:portal_dial/bind_guidestone {hand:"offhand"}

# --- Normal menu open ---

# Open the menu for the nearest player (who clicked — up to 6 blocks, tick delay can cause movement)
execute as @p[distance=..6,tag=!ec.gs_in_menu] at @s run function evercraft:guidestone/menu/open
