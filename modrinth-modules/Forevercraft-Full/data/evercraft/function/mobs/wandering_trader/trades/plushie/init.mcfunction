data modify storage eden:temp trader.plushie.price set from storage eden:settings bestiary.wandering_trader_settings.plushiepayamount
data modify storage eden:temp trader.plushie.payitem set from storage eden:settings bestiary.wandering_trader_settings.plushiepayitem

execute store result storage eden:temp trader.plushie.id int 1 run random value 100..239

function evercraft:mobs/wandering_trader/trades/plushie/get with storage eden:temp trader.plushie
function evercraft:mobs/wandering_trader/trades/plushie/add with storage eden:temp trader.plushie