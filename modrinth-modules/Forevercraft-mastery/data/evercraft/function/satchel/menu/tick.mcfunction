# Satchel Menu — Tick (runs every 2t for players with menu open)
# Called from menu_tick, run as each player with ec.satchel_in_menu tag

# Clean up any unstamped duplicates restored by the consumable use-item system
clear @s minecraft:leather[custom_data~{satchel:true,bag_id:0}]

# Close if player walked too far from menu entities
execute unless entity @e[type=item_display,tag=ec.satchel_bg,distance=..5] run function evercraft:satchel/menu/close
execute unless entity @s[tag=ec.satchel_in_menu] run return 0

# Close if satchel no longer anywhere on player (inventory, hotbar, or bundle)
execute unless items entity @s inventory.* *[custom_data~{satchel:true}] unless items entity @s hotbar.* *[custom_data~{satchel:true}] unless data entity @s Inventory[{components:{"minecraft:bundle_contents":[{components:{"minecraft:custom_data":{satchel:1b}}}]}}] run function evercraft:satchel/menu/close
execute unless entity @s[tag=ec.satchel_in_menu] run return 0

# Check for clicks
function evercraft:satchel/menu/check_clicks
