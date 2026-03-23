# Guild Menu — Tick handler for Donate page buttons
# @s = player, at their position

# Check donate button click
scoreboard players set #guild_donate ec.temp 0
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute store success score #guild_donate ec.temp as @e[type=interaction,tag=ec.guild_donate_btn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #guild_donate ec.temp matches 1 at @s run function evercraft:guild/contribution/donate
