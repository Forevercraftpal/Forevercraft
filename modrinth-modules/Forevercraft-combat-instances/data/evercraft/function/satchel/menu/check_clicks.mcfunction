# Satchel Menu — Check Clicks
# Run as the player with menu open, at their position

# Close button
scoreboard players set #satchel_click ec.temp 0
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute store success score #satchel_click ec.temp at @s as @e[type=interaction,tag=ec.satchel_close_btn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #satchel_click ec.temp matches 1 run function evercraft:satchel/menu/close
execute unless entity @s[tag=ec.satchel_in_menu] run return 0

# Slot 0
scoreboard players set #satchel_click ec.temp 0
execute store success score #satchel_click ec.temp at @s as @e[type=interaction,tag=ec.satchel_s0,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #satchel_click ec.temp matches 1 run function evercraft:satchel/menu/on_slot_click {slot:"s0",num:1}

# Slot 1
scoreboard players set #satchel_click ec.temp 0
execute store success score #satchel_click ec.temp at @s as @e[type=interaction,tag=ec.satchel_s1,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #satchel_click ec.temp matches 1 run function evercraft:satchel/menu/on_slot_click {slot:"s1",num:1}

# Slot 2
scoreboard players set #satchel_click ec.temp 0
execute store success score #satchel_click ec.temp at @s as @e[type=interaction,tag=ec.satchel_s2,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #satchel_click ec.temp matches 1 run function evercraft:satchel/menu/on_slot_click {slot:"s2",num:1}

# Slot 3
scoreboard players set #satchel_click ec.temp 0
execute store success score #satchel_click ec.temp at @s as @e[type=interaction,tag=ec.satchel_s3,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #satchel_click ec.temp matches 1 run function evercraft:satchel/menu/on_slot_click {slot:"s3",num:1}

# Slot 4
scoreboard players set #satchel_click ec.temp 0
execute store success score #satchel_click ec.temp at @s as @e[type=interaction,tag=ec.satchel_s4,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #satchel_click ec.temp matches 1 run function evercraft:satchel/menu/on_slot_click {slot:"s4",num:1}

# Slot 5
scoreboard players set #satchel_click ec.temp 0
execute store success score #satchel_click ec.temp at @s as @e[type=interaction,tag=ec.satchel_s5,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #satchel_click ec.temp matches 1 run function evercraft:satchel/menu/on_slot_click {slot:"s5",num:1}

# Slot 6
scoreboard players set #satchel_click ec.temp 0
execute store success score #satchel_click ec.temp at @s as @e[type=interaction,tag=ec.satchel_s6,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #satchel_click ec.temp matches 1 run function evercraft:satchel/menu/on_slot_click {slot:"s6",num:1}
