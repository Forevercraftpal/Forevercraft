# Black Market — Load Deal by Index (Macro)
$data modify storage eden:database black_market.temp.buy_deal set from storage eden:database black_market.deals[$(select)]
