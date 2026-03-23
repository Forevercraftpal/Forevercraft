# Guidestone — Determine the name for the registry entry
# Run as the registrant player
# Checks if the guidestone item had a custom anvil rename

# Check if temp_custom_name_text has actual content (player renamed in anvil)
# The default custom_name text is "Guidestone" — if they changed it, use theirs
# temp_custom_name_text is a plain string extracted from .text subfield
execute unless data storage evercraft:guidestone {temp_custom_name_text:""} unless data storage evercraft:guidestone {temp_custom_name_text:"Guidestone"} run data modify storage evercraft:guidestone temp.name set from storage evercraft:guidestone temp_custom_name_text

# If no custom name was set (still "Unnamed Waypoint"), use "Waypoint #ID" default
execute if data storage evercraft:guidestone {temp:{name:"Unnamed Waypoint"}} run function evercraft:guidestone/store_name_id with storage evercraft:guidestone temp
