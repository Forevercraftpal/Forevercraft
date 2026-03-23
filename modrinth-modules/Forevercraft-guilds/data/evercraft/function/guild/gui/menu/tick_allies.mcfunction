# Guild Menu — Allies page tick
# @s = player on allies page (page 7)

# Check supply button clicks for each slot
scoreboard players set #supply_click ec.temp 0
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute at @s store success score #supply_click ec.temp as @e[type=interaction,tag=ec.guild_supply_0,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #supply_click ec.temp matches 1 run scoreboard players operation @s ec.gd_supply_tgt = #ally_slot_0 ec.temp
execute if score #supply_click ec.temp matches 1 run function evercraft:guild/gui/menu/click_supply

execute if score #supply_click ec.temp matches 0 at @s store success score #supply_click ec.temp as @e[type=interaction,tag=ec.guild_supply_1,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #supply_click ec.temp matches 1 run scoreboard players operation @s ec.gd_supply_tgt = #ally_slot_1 ec.temp
execute if score #supply_click ec.temp matches 1 run function evercraft:guild/gui/menu/click_supply

execute if score #supply_click ec.temp matches 0 at @s store success score #supply_click ec.temp as @e[type=interaction,tag=ec.guild_supply_2,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #supply_click ec.temp matches 1 run scoreboard players operation @s ec.gd_supply_tgt = #ally_slot_2 ec.temp
execute if score #supply_click ec.temp matches 1 run function evercraft:guild/gui/menu/click_supply

execute if score #supply_click ec.temp matches 0 at @s store success score #supply_click ec.temp as @e[type=interaction,tag=ec.guild_supply_3,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #supply_click ec.temp matches 1 run scoreboard players operation @s ec.gd_supply_tgt = #ally_slot_3 ec.temp
execute if score #supply_click ec.temp matches 1 run function evercraft:guild/gui/menu/click_supply

# Check [X] remove alliance button clicks (rank 5+ only)
scoreboard players set #remove_click ec.temp 0
execute if score @s ec.guild_rank matches 5.. at @s store success score #remove_click ec.temp as @e[type=interaction,tag=ec.guild_remove_ally_0,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #remove_click ec.temp matches 1 run scoreboard players operation @s ec.gd_vote_tgt = #ally_slot_0 ec.temp
execute if score #remove_click ec.temp matches 1 run scoreboard players set @s ec.gd_diplo 6

execute if score #remove_click ec.temp matches 0 if score @s ec.guild_rank matches 5.. at @s store success score #remove_click ec.temp as @e[type=interaction,tag=ec.guild_remove_ally_1,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #remove_click ec.temp matches 1 run scoreboard players operation @s ec.gd_vote_tgt = #ally_slot_1 ec.temp
execute if score #remove_click ec.temp matches 1 run scoreboard players set @s ec.gd_diplo 6

execute if score #remove_click ec.temp matches 0 if score @s ec.guild_rank matches 5.. at @s store success score #remove_click ec.temp as @e[type=interaction,tag=ec.guild_remove_ally_2,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #remove_click ec.temp matches 1 run scoreboard players operation @s ec.gd_vote_tgt = #ally_slot_2 ec.temp
execute if score #remove_click ec.temp matches 1 run scoreboard players set @s ec.gd_diplo 6

execute if score #remove_click ec.temp matches 0 if score @s ec.guild_rank matches 5.. at @s store success score #remove_click ec.temp as @e[type=interaction,tag=ec.guild_remove_ally_3,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #remove_click ec.temp matches 1 run scoreboard players operation @s ec.gd_vote_tgt = #ally_slot_3 ec.temp
execute if score #remove_click ec.temp matches 1 run scoreboard players set @s ec.gd_diplo 6

# Rank too low feedback
execute unless score @s ec.guild_rank matches 5.. at @s if entity @e[type=interaction,tag=ec.guild_remove_ally_0,distance=..5,nbt={interaction:{}}] run tellraw @s [{text:"[Guild] ",color:"green"},{text:"Administrator rank required to remove alliances.",color:"red"}]

# Check supply tier selection buttons (if in supply selection mode)
execute if entity @s[tag=ec.guild_supply_select] run function evercraft:guild/gui/menu/tick_supply_select
