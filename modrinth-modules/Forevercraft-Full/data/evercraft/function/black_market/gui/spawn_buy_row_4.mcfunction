# Black Market — Spawn Buy Row 4
data modify storage eden:database black_market.temp.deal.y_offset set value "2.26"
data modify storage eden:database black_market.temp.deal.row_tag set value "BM.BuyRow4"
function evercraft:black_market/gui/spawn_buy_row with storage eden:database black_market.temp.deal
