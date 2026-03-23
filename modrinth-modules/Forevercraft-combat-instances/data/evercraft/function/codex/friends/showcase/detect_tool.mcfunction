# Showcase — Detect first pickaxe in hotbar
# Run as the target player (self or other)
# Copies item to nearest ec.sc_eq_new item_display
execute if items entity @s hotbar.0 #minecraft:pickaxes run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:0b}]
execute if items entity @s hotbar.1 #minecraft:pickaxes run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:1b}]
execute if items entity @s hotbar.2 #minecraft:pickaxes run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:2b}]
execute if items entity @s hotbar.3 #minecraft:pickaxes run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:3b}]
execute if items entity @s hotbar.4 #minecraft:pickaxes run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:4b}]
execute if items entity @s hotbar.5 #minecraft:pickaxes run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:5b}]
execute if items entity @s hotbar.6 #minecraft:pickaxes run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:6b}]
execute if items entity @s hotbar.7 #minecraft:pickaxes run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:7b}]
execute if items entity @s hotbar.8 #minecraft:pickaxes run return run data modify entity @e[type=item_display,tag=ec.sc_eq_new,limit=1,sort=nearest] item set from entity @s Inventory[{Slot:8b}]
