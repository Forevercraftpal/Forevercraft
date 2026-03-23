# Seasonal System — Season transition detected
# Announce the new season to all players

# Only announce to players during real transitions (not on server load)
execute unless score #season_loading ec.var matches 1 if score #season_id ec.var matches 0 run function evercraft:seasons/announce/autumn
execute unless score #season_loading ec.var matches 1 if score #season_id ec.var matches 1 run function evercraft:seasons/announce/winter
execute unless score #season_loading ec.var matches 1 if score #season_id ec.var matches 2 run function evercraft:seasons/announce/spring
execute unless score #season_loading ec.var matches 1 if score #season_id ec.var matches 3 run function evercraft:seasons/announce/summer

# Start snow melt when transitioning OUT of winter (prev was winter, now isn't)
execute unless score #season_loading ec.var matches 1 if score #season_prev ec.var matches 1 unless score #season_id ec.var matches 1 run scoreboard players set #snow_melt_active ec.var 1
execute unless score #season_loading ec.var matches 1 if score #season_prev ec.var matches 1 unless score #season_id ec.var matches 1 run scoreboard players set #snow_melt_cd ec.var 0
execute unless score #season_loading ec.var matches 1 if score #season_prev ec.var matches 1 unless score #season_id ec.var matches 1 run scoreboard players set #snow_melt_cycles ec.var 0

# Signal resource pack swap (skipped during server load to prevent restart loop)
execute unless score #season_loading ec.var matches 1 run scoreboard players set #season_swap_pending ec.var 1
execute unless score #season_loading ec.var matches 1 run tellraw @a [{text:"",color:"gray"},{text:"  The world is transforming... server will restart momentarily.",color:"dark_aqua",italic:true}]
