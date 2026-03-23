# ============================================================
# Black Market — Check If Index Already Used (Macro)
# Sets #bm_dup ec.bm_temp to 1 if index was already rolled
# Called with: function ... with storage eden:database black_market.temp
# ============================================================
$execute if data storage eden:database black_market.used{i$(index):1b} run scoreboard players set #bm_dup ec.bm_temp 1
