# ============================================================
# Black Market — Load / Init
# ============================================================

# --- Scoreboards ---
scoreboard objectives add ec.bm_tab dummy
scoreboard objectives add ec.bm_page dummy
scoreboard objectives add ec.bm_select dummy
scoreboard objectives add ec.bm_temp dummy
scoreboard objectives add ec.bm_price dummy
scoreboard objectives add ec.bm_listings dummy
scoreboard objectives add ec.bm_balance dummy
scoreboard objectives add ec.bm_confirm dummy
scoreboard objectives add ec.bm_idle dummy "Black Market Menu Inactivity"

# --- Initialize storage namespaces (only if missing) ---
execute unless data storage eden:database black_market run data modify storage eden:database black_market set value {}
execute unless data storage eden:database black_market.deals run data modify storage eden:database black_market.deals set value []
execute unless data storage eden:database black_market.pool run data modify storage eden:database black_market.pool set value []
execute unless data storage eden:database black_market.deal_day run data modify storage eden:database black_market.deal_day set value -1

# --- Populate the deal pool ---
function evercraft:black_market/data/deal_pool

# --- Start self-scheduling tick ---
schedule function evercraft:black_market/tick 1s replace
