# ============================================================
# Black Market — Daily Reset
# Called from quests/reset/daily.mcfunction each morning
# ============================================================

# Generate new deals for today
function evercraft:black_market/generate_deals

# Roll 4% sale chance for each online player who has listings
execute as @a run function evercraft:black_market/escrow/roll_sale
