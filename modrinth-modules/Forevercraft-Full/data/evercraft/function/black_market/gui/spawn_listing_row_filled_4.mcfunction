# Black Market — Listing Row 4 (Filled)
data modify storage eden:database black_market.temp.row_y set value "2.18"
data modify storage eden:database black_market.temp.row_tag set value "BM.Reclaim4"
execute store result storage eden:database black_market.temp.row_price int 1 run data get storage eden:database black_market.temp.listings[4].price
function evercraft:black_market/gui/spawn_listing_filled with storage eden:database black_market.temp
