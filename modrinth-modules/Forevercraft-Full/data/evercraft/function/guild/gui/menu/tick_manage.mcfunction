# Guild Menu — Tick handler for Manage page buttons
# @s = player, at their position

# Invite button
scoreboard players set #guild_btn ec.temp 0
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute store success score #guild_btn ec.temp as @e[type=interaction,tag=ec.guild_manage_invite,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #guild_btn ec.temp matches 1 run function evercraft:guild/gui/menu/close
execute if score #guild_btn ec.temp matches 1 at @s run function evercraft:guild/invite/sneak_send

# Kick button
scoreboard players set #guild_btn ec.temp 0
execute store success score #guild_btn ec.temp as @e[type=interaction,tag=ec.guild_manage_kick,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #guild_btn ec.temp matches 1 run tellraw @s [{text:"[Guild] ",color:"green"},{text:"Look at a player within 8 blocks and sneak to start a kick vote.",color:"yellow"}]
execute if score #guild_btn ec.temp matches 1 run function evercraft:guild/gui/menu/close

# Leave button
scoreboard players set #guild_btn ec.temp 0
execute store success score #guild_btn ec.temp as @e[type=interaction,tag=ec.guild_manage_leave,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #guild_btn ec.temp matches 1 run function evercraft:guild/leave
execute if score #guild_btn ec.temp matches 1 run function evercraft:guild/gui/menu/close

# Disband button
scoreboard players set #guild_btn ec.temp 0
execute store success score #guild_btn ec.temp as @e[type=interaction,tag=ec.guild_manage_disband,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #guild_btn ec.temp matches 1 run function evercraft:guild/disband
execute if score #guild_btn ec.temp matches 1 run function evercraft:guild/gui/menu/close
