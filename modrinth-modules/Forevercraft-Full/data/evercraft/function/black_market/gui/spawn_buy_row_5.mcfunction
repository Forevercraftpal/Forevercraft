# Black Market — Spawn Buy Row 5
data modify storage eden:database black_market.temp.deal.y_offset set value "2.1"
data modify storage eden:database black_market.temp.deal.row_tag set value "BM.BuyRow5"
function evercraft:black_market/gui/spawn_buy_row with storage eden:database black_market.temp.deal
