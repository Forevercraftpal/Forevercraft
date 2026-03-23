# ============================================================
# Black Market — Sell Tab Tick
# Detects appraise and sell button clicks
# ============================================================

# [Appraise] button click
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=BM.AppraiseBtn,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:black_market/sell/on_click_appraise

# [Sell Item] button click
execute as @e[type=interaction,tag=BM.SellBtn,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:black_market/sell/on_click_sell
