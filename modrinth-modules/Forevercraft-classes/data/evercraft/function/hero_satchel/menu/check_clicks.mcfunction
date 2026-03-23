# Hero's Satchel Menu — Check Clicks
# Run as the player with menu open, at their position

# Close button
scoreboard players set #hsatch_click ec.temp 0
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute store success score #hsatch_click ec.temp at @s as @e[type=interaction,tag=ec.hsatch_close_btn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #hsatch_click ec.temp matches 1 run function evercraft:hero_satchel/menu/close
execute unless entity @s[tag=ec.hsatch_in_menu] run return 0

# Slot 0 — Thunderstrike Core
scoreboard players set #hsatch_click ec.temp 0
execute store success score #hsatch_click ec.temp at @s as @e[type=interaction,tag=ec.hsatch_s0,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #hsatch_click ec.temp matches 1 run function evercraft:hero_satchel/menu/on_slot_click {slot:"s0",num:1}

# Slot 1 — Soul Reaver
scoreboard players set #hsatch_click ec.temp 0
execute store success score #hsatch_click ec.temp at @s as @e[type=interaction,tag=ec.hsatch_s1,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #hsatch_click ec.temp matches 1 run function evercraft:hero_satchel/menu/on_slot_click {slot:"s1",num:2}

# Slot 2 — Earthshaker Core
scoreboard players set #hsatch_click ec.temp 0
execute store success score #hsatch_click ec.temp at @s as @e[type=interaction,tag=ec.hsatch_s2,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #hsatch_click ec.temp matches 1 run function evercraft:hero_satchel/menu/on_slot_click {slot:"s2",num:3}

# Slot 3 — Infernal Heart
scoreboard players set #hsatch_click ec.temp 0
execute store success score #hsatch_click ec.temp at @s as @e[type=interaction,tag=ec.hsatch_s3,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #hsatch_click ec.temp matches 1 run function evercraft:hero_satchel/menu/on_slot_click {slot:"s3",num:4}

# Slot 4 — Architect's Design
scoreboard players set #hsatch_click ec.temp 0
execute store success score #hsatch_click ec.temp at @s as @e[type=interaction,tag=ec.hsatch_s4,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #hsatch_click ec.temp matches 1 run function evercraft:hero_satchel/menu/on_slot_click {slot:"s4",num:5}

# Slot 5 — Void Sovereign's Eye
scoreboard players set #hsatch_click ec.temp 0
execute store success score #hsatch_click ec.temp at @s as @e[type=interaction,tag=ec.hsatch_s5,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #hsatch_click ec.temp matches 1 run function evercraft:hero_satchel/menu/on_slot_click {slot:"s5",num:6}

# Slot 6 — Soulkeeper's Ember
scoreboard players set #hsatch_click ec.temp 0
execute store success score #hsatch_click ec.temp at @s as @e[type=interaction,tag=ec.hsatch_s6,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #hsatch_click ec.temp matches 1 run function evercraft:hero_satchel/menu/on_slot_click {slot:"s6",num:7}

# Slot 7 — Behemoth's Heart
scoreboard players set #hsatch_click ec.temp 0
execute store success score #hsatch_click ec.temp at @s as @e[type=interaction,tag=ec.hsatch_s7,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #hsatch_click ec.temp matches 1 run function evercraft:hero_satchel/menu/on_slot_click {slot:"s7",num:8}

# Slot 8 — Thornheart Bloom
scoreboard players set #hsatch_click ec.temp 0
execute store success score #hsatch_click ec.temp at @s as @e[type=interaction,tag=ec.hsatch_s8,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #hsatch_click ec.temp matches 1 run function evercraft:hero_satchel/menu/on_slot_click {slot:"s8",num:9}

# Slot 9 — Abyssal Pearl
scoreboard players set #hsatch_click ec.temp 0
execute store success score #hsatch_click ec.temp at @s as @e[type=interaction,tag=ec.hsatch_s9,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #hsatch_click ec.temp matches 1 run function evercraft:hero_satchel/menu/on_slot_click {slot:"s9",num:10}

# Slot 10 — Nightmare Fragment
scoreboard players set #hsatch_click ec.temp 0
execute store success score #hsatch_click ec.temp at @s as @e[type=interaction,tag=ec.hsatch_s10,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #hsatch_click ec.temp matches 1 run function evercraft:hero_satchel/menu/on_slot_click {slot:"s10",num:11}
