loot spawn ~ ~ ~ loot evercraft:mobs/gameplay/treasure_book
data modify storage eden:temp trader.treasurebook.treasure_book set from entity @n[type=item,distance=..2,predicate=evercraft:mobs/entity/is_enchanted_book] Item.components
kill @n[type=item,distance=..2,predicate=evercraft:mobs/entity/is_enchanted_book]

data modify storage eden:temp trader.treasurebook.price set from storage eden:settings bestiary.wandering_trader_settings.treasurebookpayamount
data modify storage eden:temp trader.treasurebook.payitem set from storage eden:settings bestiary.wandering_trader_settings.treasurebookpayitem

function evercraft:mobs/wandering_trader/trades/treasure_book/add with storage eden:temp trader.treasurebook