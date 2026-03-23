# Pantry Menu — Check Clicks
# Run as the player with menu open, at their position

# Close button
scoreboard players set #pantry_click ec.temp 0
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute store success score #pantry_click ec.temp at @s as @e[type=interaction,tag=ec.pantry_close_btn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #pantry_click ec.temp matches 1 run function evercraft:pantry/menu/close
execute unless entity @s[tag=ec.pantry_in_menu] run return 0

# Prev page [<]
scoreboard players set #pantry_click ec.temp 0
execute store success score #pantry_click ec.temp at @s as @e[type=interaction,tag=ec.pantry_prev_btn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #pantry_click ec.temp matches 1 run function evercraft:pantry/menu/prev_page

# Next page [>]
scoreboard players set #pantry_click ec.temp 0
execute store success score #pantry_click ec.temp at @s as @e[type=interaction,tag=ec.pantry_next_btn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #pantry_click ec.temp matches 1 run function evercraft:pantry/menu/next_page

# Slot 0
scoreboard players set #pantry_click ec.temp 0
execute store success score #pantry_click ec.temp at @s as @e[type=interaction,tag=ec.pantry_s0,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #pantry_click ec.temp matches 1 run function evercraft:pantry/menu/on_slot_click {local_slot:0}

# Slot 1
scoreboard players set #pantry_click ec.temp 0
execute store success score #pantry_click ec.temp at @s as @e[type=interaction,tag=ec.pantry_s1,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #pantry_click ec.temp matches 1 run function evercraft:pantry/menu/on_slot_click {local_slot:1}

# Slot 2
scoreboard players set #pantry_click ec.temp 0
execute store success score #pantry_click ec.temp at @s as @e[type=interaction,tag=ec.pantry_s2,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #pantry_click ec.temp matches 1 run function evercraft:pantry/menu/on_slot_click {local_slot:2}

# Slot 3
scoreboard players set #pantry_click ec.temp 0
execute store success score #pantry_click ec.temp at @s as @e[type=interaction,tag=ec.pantry_s3,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #pantry_click ec.temp matches 1 run function evercraft:pantry/menu/on_slot_click {local_slot:3}

# Slot 4
scoreboard players set #pantry_click ec.temp 0
execute store success score #pantry_click ec.temp at @s as @e[type=interaction,tag=ec.pantry_s4,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #pantry_click ec.temp matches 1 run function evercraft:pantry/menu/on_slot_click {local_slot:4}

# Slot 5
scoreboard players set #pantry_click ec.temp 0
execute store success score #pantry_click ec.temp at @s as @e[type=interaction,tag=ec.pantry_s5,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #pantry_click ec.temp matches 1 run function evercraft:pantry/menu/on_slot_click {local_slot:5}

# Slot 6
scoreboard players set #pantry_click ec.temp 0
execute store success score #pantry_click ec.temp at @s as @e[type=interaction,tag=ec.pantry_s6,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #pantry_click ec.temp matches 1 run function evercraft:pantry/menu/on_slot_click {local_slot:6}

# Slot 7
scoreboard players set #pantry_click ec.temp 0
execute store success score #pantry_click ec.temp at @s as @e[type=interaction,tag=ec.pantry_s7,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #pantry_click ec.temp matches 1 run function evercraft:pantry/menu/on_slot_click {local_slot:7}

# Slot 8
scoreboard players set #pantry_click ec.temp 0
execute store success score #pantry_click ec.temp at @s as @e[type=interaction,tag=ec.pantry_s8,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #pantry_click ec.temp matches 1 run function evercraft:pantry/menu/on_slot_click {local_slot:8}
