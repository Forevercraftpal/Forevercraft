# Artisan Forge GUI — Check Clicks

scoreboard players operation #gui_check ec.temp = @s adv.gui_session

# Close button (always)
execute as @e[type=interaction,tag=CF.CloseBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/forging/gui/click_close

# Deposit Material
execute as @e[type=interaction,tag=CF.DepMatBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/forging/gui/deposit_material

# Deposit Catalyst
execute as @e[type=interaction,tag=CF.DepCatBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/forging/gui/deposit_catalyst

# Begin Forging (only if recipe matched, state=2)
execute if score @s ec.cf_state matches 2 as @e[type=interaction,tag=CF.ForgeBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/forging/gui/start_forge
