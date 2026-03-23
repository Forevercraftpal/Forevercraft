# Glyphforge GUI — Check Clicks (state-aware)

# Close button (always available)
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=RF.CloseBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:glyphforge/gui/click_close

# Deposit button (state 0 only)
execute as @e[type=interaction,tag=RF.DepositBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:glyphforge/gui/click_deposit

# Forge button — routes based on state
# State 0: no rune, show error
# State 1: start forging
# State 3: collect finished rune
execute as @e[type=interaction,tag=RF.ForgeBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:glyphforge/gui/click_forge
