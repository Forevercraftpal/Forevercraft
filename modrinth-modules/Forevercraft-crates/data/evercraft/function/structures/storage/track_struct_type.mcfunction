# Track unique structure types looted for Wanderer's Dream Map
# Run as player after cf.struct_id is set

# Mark this structure type as visited
execute if score @s cf.struct_id matches 1 run scoreboard players set @s ec.struct_1 1
execute if score @s cf.struct_id matches 2 run scoreboard players set @s ec.struct_2 1
execute if score @s cf.struct_id matches 3 run scoreboard players set @s ec.struct_3 1
execute if score @s cf.struct_id matches 4 run scoreboard players set @s ec.struct_4 1
execute if score @s cf.struct_id matches 5 run scoreboard players set @s ec.struct_5 1
execute if score @s cf.struct_id matches 6 run scoreboard players set @s ec.struct_6 1
execute if score @s cf.struct_id matches 7 run scoreboard players set @s ec.struct_7 1
execute if score @s cf.struct_id matches 8 run scoreboard players set @s ec.struct_8 1
execute if score @s cf.struct_id matches 9 run scoreboard players set @s ec.struct_9 1
execute if score @s cf.struct_id matches 10 run scoreboard players set @s ec.struct_10 1
execute if score @s cf.struct_id matches 11 run scoreboard players set @s ec.struct_11 1
execute if score @s cf.struct_id matches 12 run scoreboard players set @s ec.struct_12 1
execute if score @s cf.struct_id matches 13 run scoreboard players set @s ec.struct_13 1
execute if score @s cf.struct_id matches 14 run scoreboard players set @s ec.struct_14 1
execute if score @s cf.struct_id matches 15 run scoreboard players set @s ec.struct_15 1
execute if score @s cf.struct_id matches 16 run scoreboard players set @s ec.struct_16 1
execute if score @s cf.struct_id matches 17 run scoreboard players set @s ec.struct_17 1
execute if score @s cf.struct_id matches 18 run scoreboard players set @s ec.struct_18 1
execute if score @s cf.struct_id matches 19 run scoreboard players set @s ec.struct_19 1
execute if score @s cf.struct_id matches 20 run scoreboard players set @s ec.struct_20 1
execute if score @s cf.struct_id matches 21 run scoreboard players set @s ec.struct_21 1
execute if score @s cf.struct_id matches 22 run scoreboard players set @s ec.struct_22 1

# Count unique types
scoreboard players set @s ec.struct_unique 0
execute if score @s ec.struct_1 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_2 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_3 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_4 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_5 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_6 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_7 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_8 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_9 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_10 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_11 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_12 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_13 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_14 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_15 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_16 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_17 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_18 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_19 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_20 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_21 matches 1 run scoreboard players add @s ec.struct_unique 1
execute if score @s ec.struct_22 matches 1 run scoreboard players add @s ec.struct_unique 1

# Award Wanderer's Dream Map (+1 permanent DR) at 15+ unique structure types
execute if score @s ec.struct_unique matches 15.. unless score @s ec.map_count matches 1.. run loot give @s loot evercraft:items/wanderers_dream_map
execute if score @s ec.struct_unique matches 15.. unless score @s ec.map_count matches 1.. run tellraw @s [{text:"✦ ",color:"dark_aqua"},{text:"Wanderer's Dream Map",color:"dark_aqua",bold:true},{text:" received! Your exploration of ",color:"yellow"},{score:{name:"@s",objective:"ec.struct_unique"},color:"gold"},{text:" unique structures resonates with dream energy. (+1 Dream Rate)",color:"yellow"}]
