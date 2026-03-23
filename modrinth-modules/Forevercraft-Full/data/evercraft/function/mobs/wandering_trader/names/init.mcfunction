execute store result storage eden:temp wandering_trader.id.first_name int 1 run random value 1..350
execute store result storage eden:temp wandering_trader.id.last_name int 1 run random value 1..350
function evercraft:mobs/wandering_trader/names/copy_to_temp with storage eden:temp wandering_trader.id

data modify storage eden:temp wandering_trader.color set from storage eden:database color.wandering_trader

function evercraft:mobs/wandering_trader/names/set_name with storage eden:temp wandering_trader