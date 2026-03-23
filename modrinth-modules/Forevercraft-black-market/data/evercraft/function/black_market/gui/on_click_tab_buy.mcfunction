# Black Market — Switch to Buy Tab
# Run as: interaction entity, need to clear interaction then switch tab on player
data remove entity @s interaction
execute as @a[tag=BM.InMenu,distance=..5,limit=1] run scoreboard players set @s ec.bm_tab 1
execute as @a[tag=BM.InMenu,distance=..5,limit=1] run scoreboard players set @s ec.bm_page 1
execute as @a[tag=BM.InMenu,distance=..5,limit=1] run scoreboard players set @s ec.bm_confirm -1
execute as @a[tag=BM.InMenu,distance=..5,limit=1] at @s run function evercraft:black_market/gui/refresh
