# Initialize loot container trades for wandering trader
# 33% chance to sell ONE loot crate
# Weighted rarity: Rare (60%), Ornate (30%), Exquisite (10%)
# Prices (netherite ingots): Rare = 4, Ornate = 8, Exquisite = 16
# Hero of Village effect will halve these prices

# Roll for 33% chance (1-3, where 1 = add trade)
execute store result storage eden:temp trader.loot_container.roll int 1 run random value 1..3

# If roll is 1 (33% chance), select a weighted random rarity
# 1..10: 1-6 = Rare (60%), 7-9 = Ornate (30%), 10 = Exquisite (10%)
execute if data storage eden:temp trader.loot_container{roll:1} store result storage eden:temp trader.loot_container.rarity_roll int 1 run random value 1..10

# Check if any nearby player has Hero of the Village effect
execute if data storage eden:temp trader.loot_container{roll:1} store success storage eden:temp trader.loot_container.hero_discount byte 1 if entity @a[distance=..48,predicate=evercraft:mobs/has_hero_of_village]

# Rare Crate (rarity_roll 1-6) - 4 netherite ingots
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:0b,rarity_roll:1} run function evercraft:mobs/wandering_trader/trades/loot_container/add_rare
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:0b,rarity_roll:2} run function evercraft:mobs/wandering_trader/trades/loot_container/add_rare
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:0b,rarity_roll:3} run function evercraft:mobs/wandering_trader/trades/loot_container/add_rare
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:0b,rarity_roll:4} run function evercraft:mobs/wandering_trader/trades/loot_container/add_rare
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:0b,rarity_roll:5} run function evercraft:mobs/wandering_trader/trades/loot_container/add_rare
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:0b,rarity_roll:6} run function evercraft:mobs/wandering_trader/trades/loot_container/add_rare
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:1b,rarity_roll:1} run function evercraft:mobs/wandering_trader/trades/loot_container/add_rare_discount
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:1b,rarity_roll:2} run function evercraft:mobs/wandering_trader/trades/loot_container/add_rare_discount
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:1b,rarity_roll:3} run function evercraft:mobs/wandering_trader/trades/loot_container/add_rare_discount
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:1b,rarity_roll:4} run function evercraft:mobs/wandering_trader/trades/loot_container/add_rare_discount
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:1b,rarity_roll:5} run function evercraft:mobs/wandering_trader/trades/loot_container/add_rare_discount
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:1b,rarity_roll:6} run function evercraft:mobs/wandering_trader/trades/loot_container/add_rare_discount

# Ornate Crate (rarity_roll 7-9) - 8 netherite ingots
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:0b,rarity_roll:7} run function evercraft:mobs/wandering_trader/trades/loot_container/add_ornate
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:0b,rarity_roll:8} run function evercraft:mobs/wandering_trader/trades/loot_container/add_ornate
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:0b,rarity_roll:9} run function evercraft:mobs/wandering_trader/trades/loot_container/add_ornate
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:1b,rarity_roll:7} run function evercraft:mobs/wandering_trader/trades/loot_container/add_ornate_discount
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:1b,rarity_roll:8} run function evercraft:mobs/wandering_trader/trades/loot_container/add_ornate_discount
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:1b,rarity_roll:9} run function evercraft:mobs/wandering_trader/trades/loot_container/add_ornate_discount

# Exquisite Crate (rarity_roll 10) - 16 netherite ingots
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:0b,rarity_roll:10} run function evercraft:mobs/wandering_trader/trades/loot_container/add_exquisite
execute if data storage eden:temp trader.loot_container{roll:1,hero_discount:1b,rarity_roll:10} run function evercraft:mobs/wandering_trader/trades/loot_container/add_exquisite_discount
