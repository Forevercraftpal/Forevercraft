# Guild Menu — Tick handler for Warp page
# @s = player, at their position

# Check page nav clicks
scoreboard players set #guild_btn ec.temp 0
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute store success score #guild_btn ec.temp as @e[type=interaction,tag=ec.guild_warp_prev,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #guild_btn ec.temp matches 1 if score @s ec.guild_warp_pg matches 2.. run scoreboard players remove @s ec.guild_warp_pg 1
execute if score #guild_btn ec.temp matches 1 if score @s ec.guild_warp_pg matches 1.. run function evercraft:guild/gui/menu/refresh_warp

scoreboard players set #guild_btn ec.temp 0
execute store success score #guild_btn ec.temp as @e[type=interaction,tag=ec.guild_warp_next,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #guild_btn ec.temp matches 1 run scoreboard players add @s ec.guild_warp_pg 1
execute if score #guild_btn ec.temp matches 1 run function evercraft:guild/gui/menu/refresh_warp

# Check destination slot clicks (0-5)
execute as @e[type=interaction,tag=ec.guild_warp_slot0,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/warp/click_slot {slot:0}
execute as @e[type=interaction,tag=ec.guild_warp_slot1,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/warp/click_slot {slot:1}
execute as @e[type=interaction,tag=ec.guild_warp_slot2,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/warp/click_slot {slot:2}
execute as @e[type=interaction,tag=ec.guild_warp_slot3,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/warp/click_slot {slot:3}
execute as @e[type=interaction,tag=ec.guild_warp_slot4,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/warp/click_slot {slot:4}
execute as @e[type=interaction,tag=ec.guild_warp_slot5,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/warp/click_slot {slot:5}
