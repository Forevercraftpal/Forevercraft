# Buddy Points — Death Penalty (-100 when best buddy dies)
# @s = player whose best buddy died

scoreboard players remove @s ec.bd_points 100
execute if score @s ec.bd_points matches ..-1 run scoreboard players set @s ec.bd_points 0

# Recheck tier (may drop)
function evercraft:buddy/points/check_tier

tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Your best buddy has fallen... ",color:"red"},{text:"-100 Friendship",color:"dark_red"}]
