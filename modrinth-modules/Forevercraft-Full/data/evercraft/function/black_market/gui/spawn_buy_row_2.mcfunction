# Black Market — Spawn Buy Row 2
data modify storage eden:database black_market.temp.deal.y_offset set value "2.58"
data modify storage eden:database black_market.temp.deal.row_tag set value "BM.BuyRow2"
function evercraft:black_market/gui/spawn_buy_row with storage eden:database black_market.temp.deal
