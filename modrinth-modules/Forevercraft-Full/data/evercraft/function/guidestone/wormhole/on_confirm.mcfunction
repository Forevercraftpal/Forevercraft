# Guidestone Wormhole — Confirm button clicked
# Run as the interaction entity (ec.gs_wh_confirm)

# Clear interaction data
data remove entity @s interaction

# Execute wormhole for the nearest player in menu
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] at @s run function evercraft:guidestone/wormhole/execute
