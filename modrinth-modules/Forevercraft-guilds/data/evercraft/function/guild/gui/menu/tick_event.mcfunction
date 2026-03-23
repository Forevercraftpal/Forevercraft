# Guild Menu — Event page tick
# @s = player on event page (page 6)

# Check [?] info button click
scoreboard players set #ev_info ec.temp 0
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute at @s store success score #ev_info ec.temp as @e[type=interaction,tag=ec.guild_ev_info_btn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #ev_info ec.temp matches 1 run function evercraft:guild/gui/menu/event_info_click

# Live score update every 20 ticks (1s) if competition active
execute if score #gd_event_active ec.var matches 1 if score @s ec.guild_menu_time matches 0 run function evercraft:guild/gui/menu/update_event_scores
scoreboard players set #ev_mod ec.temp 0
execute store result score #ev_mod ec.temp run scoreboard players get @s ec.guild_menu_time
scoreboard players operation #ev_mod ec.temp %= #20 ec.const
execute if score #gd_event_active ec.var matches 1 if score #ev_mod ec.temp matches 0 run function evercraft:guild/gui/menu/update_event_scores

# Auto-refresh entire Events page every 100 ticks (5s) to pick up new events / update expedition
scoreboard players set #ev_refresh ec.temp 0
execute store result score #ev_refresh ec.temp run scoreboard players get @s ec.guild_menu_time
scoreboard players operation #ev_refresh ec.temp %= #100 ec.const
execute if score #ev_refresh ec.temp matches 0 if score @s ec.guild_menu_time matches 1.. run function evercraft:guild/gui/menu/refresh_event
