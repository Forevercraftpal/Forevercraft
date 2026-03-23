# Black Market — Buy Click Row 6
data remove entity @s interaction
# Load deal data based on current page
execute as @a[tag=BM.InMenu,distance=..8,limit=1] store result score @s ec.bm_select run scoreboard players get @s ec.bm_page
# Page 1: index = 6, Page 2: index = 13
execute as @a[tag=BM.InMenu,distance=..8,limit=1] if score @s ec.bm_page matches 1 run scoreboard players set @s ec.bm_select 6
execute as @a[tag=BM.InMenu,distance=..8,limit=1] if score @s ec.bm_page matches 2 run scoreboard players set @s ec.bm_select 13
execute as @a[tag=BM.InMenu,distance=..8,limit=1] at @s run function evercraft:black_market/buy/confirm_buy
