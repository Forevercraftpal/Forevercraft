# Spirit Raids — Vote Trigger Handler
# Called per player when they vote (ec.rd_vote = 1 or 2)

# Vote 1 = continue/enter, Vote 2 = evacuate/turn back
# Tellraw targets both dg.player (entry vote) and rd.player (floor/boss vote)
# Only one tag is active at a time, so no double-send
execute if score @s ec.rd_vote matches 1 run scoreboard players add #rd_votes_yes ec.var 1
execute if score @s ec.rd_vote matches 1 run tellraw @a[tag=dg.player] [{text:"[Raid] ",color:"dark_red"},{"selector":"@s"},{"text":" votes to ","color":"gray"},{"text":"continue","color":"green","bold":true}]
execute if score @s ec.rd_vote matches 1 run tellraw @a[tag=rd.player] [{text:"[Raid] ",color:"dark_red"},{"selector":"@s"},{"text":" votes to ","color":"gray"},{"text":"continue","color":"green","bold":true}]

execute if score @s ec.rd_vote matches 2 run scoreboard players add #rd_votes_no ec.var 1
execute if score @s ec.rd_vote matches 2 run tellraw @a[tag=dg.player] [{text:"[Raid] ",color:"dark_red"},{"selector":"@s"},{"text":" votes to ","color":"gray"},{"text":"evacuate","color":"red","bold":true}]
execute if score @s ec.rd_vote matches 2 run tellraw @a[tag=rd.player] [{text:"[Raid] ",color:"dark_red"},{"selector":"@s"},{"text":" votes to ","color":"gray"},{"text":"evacuate","color":"red","bold":true}]

# Reset trigger and disable for this player (can't vote again)
scoreboard players set @s ec.rd_vote 0
tag @s add rd.voted

# Check if all players have voted — process immediately if so
execute store result score #rd_votes_cast ec.var if entity @a[tag=rd.voted]
execute if score #rd_votes_cast ec.var >= #rd_players ec.var run function evercraft:raids/vote/process_vote
