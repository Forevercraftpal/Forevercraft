# Fishing Derby — Leaderboard
# Announce the winner(s) and give prize

# Find the highest score
scoreboard players set #cal_top_score ec.var 0
execute as @a if score @s cal.derby_score > #cal_top_score ec.var run scoreboard players operation #cal_top_score ec.var = @s cal.derby_score

# No catches = no winner
execute if score #cal_top_score ec.var matches 0 run tellraw @a [{text:"  "},{text:"No fish were caught today!",color:"gray",italic:true}]
execute if score #cal_top_score ec.var matches 0 run return 0

# Announce winner(s) — any player matching top score
execute as @a if score @s cal.derby_score = #cal_top_score ec.var run tellraw @a [{text:"  "},{text:"Winner: ",color:"gold"},{selector:"@s",color:"gold",bold:true},{text:" with ",color:"white"},{score:{name:"@s",objective:"cal.derby_score"},color:"gold",bold:true},{text:" catches!",color:"white"}]

# Give prize to winner(s) — a rare artifact
execute as @a if score @s cal.derby_score = #cal_top_score ec.var at @s run loot give @s loot evercraft:artifacts/rare/main
execute as @a if score @s cal.derby_score = #cal_top_score ec.var run tellraw @s [{text:"  "},{text:"You received a rare artifact as your prize!",color:"gold"}]

# Announce everyone else's scores
execute as @a unless score @s cal.derby_score = #cal_top_score ec.var if score @s cal.derby_score matches 1.. run tellraw @a [{text:"  "},{selector:"@s",color:"gray"},{text:": ",color:"gray"},{score:{name:"@s",objective:"cal.derby_score"},color:"white"},{text:" catches",color:"gray"}]
