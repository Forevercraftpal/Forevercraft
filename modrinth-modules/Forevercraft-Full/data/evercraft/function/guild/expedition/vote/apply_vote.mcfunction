# Guild Expedition — Apply Vote to Marker
# @s = guild marker
# Input: evercraft:expedition temp.vote_choice (1/2/3)

execute store result score #gexp_vote_choice ec.temp run data get storage evercraft:expedition temp.vote_choice

# Increment the chosen option's vote count
execute if score #gexp_vote_choice ec.temp matches 1 store result score #gexp_v ec.temp run data get entity @s data.expedition.votes_1
execute if score #gexp_vote_choice ec.temp matches 1 run scoreboard players add #gexp_v ec.temp 1
execute if score #gexp_vote_choice ec.temp matches 1 store result entity @s data.expedition.votes_1 int 1 run scoreboard players get #gexp_v ec.temp

execute if score #gexp_vote_choice ec.temp matches 2 store result score #gexp_v ec.temp run data get entity @s data.expedition.votes_2
execute if score #gexp_vote_choice ec.temp matches 2 run scoreboard players add #gexp_v ec.temp 1
execute if score #gexp_vote_choice ec.temp matches 2 store result entity @s data.expedition.votes_2 int 1 run scoreboard players get #gexp_v ec.temp

execute if score #gexp_vote_choice ec.temp matches 3 store result score #gexp_v ec.temp run data get entity @s data.expedition.votes_3
execute if score #gexp_vote_choice ec.temp matches 3 run scoreboard players add #gexp_v ec.temp 1
execute if score #gexp_vote_choice ec.temp matches 3 store result entity @s data.expedition.votes_3 int 1 run scoreboard players get #gexp_v ec.temp
