# Chrono Shard — Reset Gacha Pity
# Zeros pity counters + pull history

scoreboard players set @s ec.wish_soft 0
scoreboard players set @s ec.wish_pity 0
scoreboard players set @s ec.wish_10 0
scoreboard players set @s ec.wish_spark 0

tellraw @s [{"text":"\u2726 ","color":"dark_aqua"},{"text":"Gacha Pity","color":"light_purple"},{"text":" counters have been reset to zero.","color":"white"}]
