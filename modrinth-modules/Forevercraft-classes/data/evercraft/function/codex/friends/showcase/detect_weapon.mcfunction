# Showcase — Detect first weapon in hotbar
# Run as the target player (self or other)
# Copies item to nearest ec.sc_eq_new item_display
execute if items entity @s hotbar.0 #evercraft:weapons run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:0b}]
execute if items entity @s hotbar.1 #evercraft:weapons run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:1b}]
execute if items entity @s hotbar.2 #evercraft:weapons run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:2b}]
execute if items entity @s hotbar.3 #evercraft:weapons run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:3b}]
execute if items entity @s hotbar.4 #evercraft:weapons run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:4b}]
execute if items entity @s hotbar.5 #evercraft:weapons run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:5b}]
execute if items entity @s hotbar.6 #evercraft:weapons run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:6b}]
execute if items entity @s hotbar.7 #evercraft:weapons run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:7b}]
execute if items entity @s hotbar.8 #evercraft:weapons run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:8b}]
