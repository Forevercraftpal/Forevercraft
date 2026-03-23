# World Events — Per-player DR contribution
# Called as @a from compute_avg_dr
execute store result score @s ec.temp run attribute @s luck get 10
scoreboard players operation #we_avg_dr ec.var += @s ec.temp
