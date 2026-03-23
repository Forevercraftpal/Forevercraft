# Guild Menu — Tick handler for Info page (Start Expedition button)
# @s = player, at their position

scoreboard players set #guild_gexp ec.temp 0
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute store success score #guild_gexp ec.temp as @e[type=interaction,tag=ec.guild_gexp_btn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #guild_gexp ec.temp matches 1 run function evercraft:guild/expedition/start
