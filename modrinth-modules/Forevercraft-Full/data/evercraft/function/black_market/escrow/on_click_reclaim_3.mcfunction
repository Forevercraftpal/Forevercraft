# Black Market — Reclaim Click Slot 3
data remove entity @s interaction
execute as @a[tag=BM.InMenu,distance=..8,limit=1] run scoreboard players set @s ec.bm_select 3
execute as @a[tag=BM.InMenu,distance=..8,limit=1] at @s run function evercraft:black_market/escrow/reclaim
