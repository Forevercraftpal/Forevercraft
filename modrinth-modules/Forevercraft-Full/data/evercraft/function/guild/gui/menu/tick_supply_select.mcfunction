# Guild Menu — Supply tier selection tick
# @s = player with ec.guild_supply_select tag

# Check tier 1 click (Rations - 5 coins)
scoreboard players set #supply_sel ec.temp 0
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute at @s store success score #supply_sel ec.temp as @e[type=interaction,tag=ec.guild_supply_t1,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #supply_sel ec.temp matches 1 run scoreboard players set #supply_tier ec.temp 1
execute if score #supply_sel ec.temp matches 1 run scoreboard players set #supply_cost ec.temp 5
execute if score #supply_sel ec.temp matches 1 run function evercraft:guild/gui/menu/supply_send

# Check tier 2 click (Armaments - 15 coins)
execute if score #supply_sel ec.temp matches 0 at @s store success score #supply_sel ec.temp as @e[type=interaction,tag=ec.guild_supply_t2,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #supply_sel ec.temp matches 1 run scoreboard players set #supply_tier ec.temp 2
execute if score #supply_sel ec.temp matches 1 run scoreboard players set #supply_cost ec.temp 15
execute if score #supply_sel ec.temp matches 1 run function evercraft:guild/gui/menu/supply_send

# Check tier 3 click (War Chest - 30 coins)
execute if score #supply_sel ec.temp matches 0 at @s store success score #supply_sel ec.temp as @e[type=interaction,tag=ec.guild_supply_t3,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #supply_sel ec.temp matches 1 run scoreboard players set #supply_tier ec.temp 3
execute if score #supply_sel ec.temp matches 1 run scoreboard players set #supply_cost ec.temp 30
execute if score #supply_sel ec.temp matches 1 run function evercraft:guild/gui/menu/supply_send

# Check cancel click
execute if score #supply_sel ec.temp matches 0 at @s store success score #supply_sel ec.temp as @e[type=interaction,tag=ec.guild_supply_cancel,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score #supply_sel ec.temp matches 1 run tag @s remove ec.guild_supply_select
execute if score #supply_sel ec.temp matches 1 run function evercraft:guild/gui/menu/refresh_allies
