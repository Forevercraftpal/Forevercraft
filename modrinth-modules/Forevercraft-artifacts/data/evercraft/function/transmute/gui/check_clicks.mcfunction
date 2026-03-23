# Artifact Transmutation GUI — Check Clicks
# Run as: player with TX.InMenu

# Close button
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=TX.CloseBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:transmute/gui/click_close

# Deposit button
execute as @e[type=interaction,tag=TX.DepositBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:transmute/gui/click_deposit

# Transmute button
execute as @e[type=interaction,tag=TX.TransmuteBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:transmute/gui/click_transmute
