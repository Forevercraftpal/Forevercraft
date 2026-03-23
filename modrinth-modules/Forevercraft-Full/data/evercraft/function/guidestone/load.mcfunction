# ============================================================
# GUIDESTONE SYSTEM — Load
# ============================================================
# A collaborative fast-travel network using lodestone blocks.
# Players craft Guidestones, place them, and right-click to interact.
#
# Flow:
#   1. Player crafts Guidestone item (custom lodestone with galaxy texture)
#   2. Player places it → advancement detects → spawns marker + item_display
#   3. Auto-registers on placement (no /trigger needed)
#   4. Player right-clicks → advancement detects → opens network GUI
#   5. Browse destinations, click to teleport

# Scoreboards
scoreboard objectives add ec.gs_page dummy "Guidestone Page"
scoreboard objectives add ec.gs_temp dummy "Guidestone Temp"
scoreboard objectives add ec.gs_id dummy "Guidestone ID"
scoreboard objectives add ec.gs_view dummy "Guidestone View"
scoreboard objectives add ec.gs_menu_time dummy "Guidestone Menu Timer"
scoreboard objectives add ec.gs_placer dummy "Guildstone Placer UUID3"

# Initialize storage registry if missing
# Registry format: [{id:1,name:"Home Base",owner:"Steve",x:100,y:64,z:-200,dim:"minecraft:overworld"},...]
execute unless data storage evercraft:guidestone registry run data modify storage evercraft:guidestone registry set value []
execute unless data storage evercraft:guidestone next_id run data modify storage evercraft:guidestone next_id set value 1

# Start scheduled tick
schedule function evercraft:guidestone/tick 1s replace
