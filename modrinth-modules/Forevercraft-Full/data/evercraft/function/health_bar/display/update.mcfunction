# RPG Health Bar — Update Display
# Context: @s = player, storage evercraft:health_bar has name/hp/max_hp

# Set boss bar value and color based on player's assigned slot
execute if score @s hb.slot matches 1 run function evercraft:health_bar/display/set_bar {slot:"1"}
execute if score @s hb.slot matches 2 run function evercraft:health_bar/display/set_bar {slot:"2"}
execute if score @s hb.slot matches 3 run function evercraft:health_bar/display/set_bar {slot:"3"}
execute if score @s hb.slot matches 4 run function evercraft:health_bar/display/set_bar {slot:"4"}
execute if score @s hb.slot matches 5 run function evercraft:health_bar/display/set_bar {slot:"5"}
execute if score @s hb.slot matches 6 run function evercraft:health_bar/display/set_bar {slot:"6"}
execute if score @s hb.slot matches 7 run function evercraft:health_bar/display/set_bar {slot:"7"}
execute if score @s hb.slot matches 8 run function evercraft:health_bar/display/set_bar {slot:"8"}
execute if score @s hb.slot matches 9 run function evercraft:health_bar/display/set_bar {slot:"9"}
execute if score @s hb.slot matches 10 run function evercraft:health_bar/display/set_bar {slot:"10"}
