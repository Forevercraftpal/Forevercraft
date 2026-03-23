# Pantry Menu — Tick (runs every 2t for players with menu open)
# Called from menu_tick, run as each player with ec.pantry_in_menu tag

# Close if player walked too far from menu entities
execute unless entity @e[type=item_display,tag=ec.pantry_bg,distance=..5] run function evercraft:pantry/menu/close
execute unless entity @s[tag=ec.pantry_in_menu] run return 0

# Close if pantry no longer anywhere on player (inventory, hotbar, or bundle)
execute unless items entity @s inventory.* *[custom_data~{pantry:true}] unless items entity @s hotbar.* *[custom_data~{pantry:true}] unless data entity @s Inventory[{components:{"minecraft:bundle_contents":[{components:{"minecraft:custom_data":{pantry:1b}}}]}}] run function evercraft:pantry/menu/close
execute unless entity @s[tag=ec.pantry_in_menu] run return 0

# Check for clicks
function evercraft:pantry/menu/check_clicks
