# Black Market — Listing Row 3 (Filled)
data modify storage eden:database black_market.temp.row_y set value "2.36"
data modify storage eden:database black_market.temp.row_tag set value "BM.Reclaim3"
execute store result storage eden:database black_market.temp.row_price int 1 run data get storage eden:database black_market.temp.listings[3].price
function evercraft:black_market/gui/spawn_listing_filled with storage eden:database black_market.temp
