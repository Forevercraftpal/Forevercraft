# ============================================================
# Black Market — Mark Index As Used (Macro)
# Marks an index so it won't be rolled again this cycle
# Called with: function ... with storage eden:database black_market.temp
# ============================================================
$data modify storage eden:database black_market.used.i$(index) set value 1b
