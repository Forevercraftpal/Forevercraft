# Trial Anvil GUI — Check Clicks
# Routes category button clicks to the appropriate handler

scoreboard players operation #gui_check ec.temp = @s adv.gui_session

# Close button
execute as @e[type=interaction,tag=TT.CloseBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/trial_anvil/gui/click_close

# Category buttons — set trial type and show tier selection
# Mining = type 1
execute as @e[type=interaction,tag=TT.CatMining,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/trial_anvil/gui/click_mining
# Farming = type 2
execute as @e[type=interaction,tag=TT.CatFarming,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/trial_anvil/gui/click_farming
# Fishing = type 3
execute as @e[type=interaction,tag=TT.CatFishing,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/trial_anvil/gui/click_fishing
# Building = type 4
execute as @e[type=interaction,tag=TT.CatBuilding,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/trial_anvil/gui/click_building
# Lumber = type 5
execute as @e[type=interaction,tag=TT.CatLumber,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/trial_anvil/gui/click_lumber
# Artisan = type 6
execute as @e[type=interaction,tag=TT.CatArtisan,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/trial_anvil/gui/click_artisan

# Tier start button (only present in tier view)
execute as @e[type=interaction,tag=TT.StartBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/trial_anvil/gui/click_start

# Back button (return to category list)
execute as @e[type=interaction,tag=TT.BackBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/trial_anvil/gui/click_back

# Hard mode toggle (present in tier view)
execute as @e[type=interaction,tag=TT.HardBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/trial_anvil/gui/click_hard_mode

# Daily challenge button (present in category view)
execute as @e[type=interaction,tag=TT.DailyBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/trial_anvil/gui/click_daily
