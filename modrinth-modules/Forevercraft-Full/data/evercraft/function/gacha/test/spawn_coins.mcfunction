# Test: Spawn Forever Coins
# Gives player 30 Forever Coins for testing

tellraw @s [{text:"[Test] ",color:"gold"},{text:"Spawning Forever Coins...",color:"gray"}]

# Give 30 coins (5x 6-coin loot tables)
loot give @s loot evercraft:gacha/forever_coin_6
loot give @s loot evercraft:gacha/forever_coin_6
loot give @s loot evercraft:gacha/forever_coin_6
loot give @s loot evercraft:gacha/forever_coin_6
loot give @s loot evercraft:gacha/forever_coin_6

tellraw @s [{text:"[Test] ",color:"gold"},{text:"30 Forever Coins ",color:"light_purple"},{text:"given!",color:"green"}]
