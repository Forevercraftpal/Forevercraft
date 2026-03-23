# Black Market — Sell Button Click
data remove entity @s interaction
execute as @a[tag=BM.InMenu,distance=..8,limit=1] at @s run function evercraft:black_market/sell/try_sell
