# ============================================================
# Black Market — Roll Deal (Macro)
# Copies one pool entry at $(index) into the daily deals array
# Called with: function ... with storage eden:database black_market.temp
# ============================================================
$data modify storage eden:database black_market.deals append from storage eden:database black_market.pool[$(index)]
