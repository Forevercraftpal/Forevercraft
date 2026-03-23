# ============================================================
# Black Market — Rebuild GUI at Anchor Position
# Called by refresh at the BM.Anchor entity's position/rotation
# Ensures GUI elements always spawn at the original open position
# ============================================================

# Respawn shell (background, title, tabs, netherite, close)
function evercraft:black_market/gui/spawn_shell

# Update tab button colors (active = gold+bold, inactive = gray)
execute if score @s ec.bm_tab matches 1 as @e[type=text_display,tag=BM.TabBuyTxt,distance=..5,limit=1] run data modify entity @s text set value {text:"[ Buy ]",color:"gold",bold:true}
execute if score @s ec.bm_tab matches 2 as @e[type=text_display,tag=BM.TabSellTxt,distance=..5,limit=1] run data modify entity @s text set value {text:"[ Sell ]",color:"gold",bold:true}
execute if score @s ec.bm_tab matches 3 as @e[type=text_display,tag=BM.TabListTxt,distance=..5,limit=1] run data modify entity @s text set value {text:"[ Listings ]",color:"gold",bold:true}

# Dispatch to tab-specific refresh
execute if score @s ec.bm_tab matches 1 run function evercraft:black_market/gui/refresh_buy
execute if score @s ec.bm_tab matches 2 run function evercraft:black_market/gui/refresh_sell
execute if score @s ec.bm_tab matches 3 run function evercraft:black_market/gui/refresh_listings

# Update netherite count display
function evercraft:black_market/gui/update_netherite

# Update deal rotation timer
function evercraft:black_market/gui/update_timer
