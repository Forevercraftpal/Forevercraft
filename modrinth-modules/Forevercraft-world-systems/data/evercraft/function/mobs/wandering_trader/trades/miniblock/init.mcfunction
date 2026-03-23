data modify storage eden:temp trader.miniblock.price set from storage eden:settings bestiary.wandering_trader_settings.miniblockpayamount
data modify storage eden:temp trader.miniblock.payitem set from storage eden:settings bestiary.wandering_trader_settings.miniblockpayitem

execute store result storage eden:temp trader.miniblock.id int 1 run random value 100..289

function evercraft:mobs/wandering_trader/trades/miniblock/get with storage eden:temp trader.miniblock
function evercraft:mobs/wandering_trader/trades/miniblock/add with storage eden:temp trader.miniblock