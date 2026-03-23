# ============================================================
# Black Market — GUI Tick
# Run as: player with BM.InMenu tag, at their position
# Checks clicks on shared elements + dispatches to tab tick
# ============================================================

# Distance check — close if too far from any BM barrel
execute unless entity @e[type=marker,tag=BM.Barrel,distance=..5] run function evercraft:black_market/gui/close
execute unless entity @s[tag=BM.InMenu] run return 0

# Auto-close after 20 seconds of inactivity (ticks every 1s)
scoreboard players add @s ec.bm_idle 1
execute if score @s ec.bm_idle matches 20.. run function evercraft:black_market/gui/close
execute unless entity @s[tag=BM.InMenu] run return 0

# Reset inactivity timer if any menu button was clicked this tick
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=BM.El,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run scoreboard players set @p[tag=BM.InMenu,distance=..5] ec.bm_idle 0

# === CLOSE BUTTON ===
execute as @e[type=interaction,tag=BM.CloseBtn,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:black_market/gui/close
execute unless entity @s[tag=BM.InMenu] run return 0

# === TAB BUTTONS ===
# Buy tab click
execute as @e[type=interaction,tag=BM.TabBuyBtn,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:black_market/gui/on_click_tab_buy
# Sell tab click
execute as @e[type=interaction,tag=BM.TabSellBtn,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:black_market/gui/on_click_tab_sell
# Listings tab click
execute as @e[type=interaction,tag=BM.TabListBtn,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:black_market/gui/on_click_tab_list

# === DISPATCH TO TAB-SPECIFIC TICK ===
execute if score @s ec.bm_tab matches 1 run function evercraft:black_market/gui/tick_buy
execute if score @s ec.bm_tab matches 2 run function evercraft:black_market/gui/tick_sell
execute if score @s ec.bm_tab matches 3 run function evercraft:black_market/gui/tick_listings
