# Spirit Raids — Process Vote Results
# Called when timer expires OR all players have voted
# #rd_vote_context: 1=entry vote (from dungeon), 2=floor vote, 3=boss vote

# Disable vote state
scoreboard players set #rd_vote_active ec.var 0
scoreboard players set #rd_vote_timer ec.var 0
tag @a remove rd.voted

# === ENTRY VOTE (context 1): dungeon floor 10 → raid entry ===
execute if score #rd_vote_context ec.var matches 1 if score #rd_votes_yes ec.var >= #rd_votes_no ec.var run function evercraft:raids/enter
execute if score #rd_vote_context ec.var matches 1 if score #rd_votes_yes ec.var >= #rd_votes_no ec.var run return 0
# Evacuate — normal dungeon completion
execute if score #rd_vote_context ec.var matches 1 run tellraw @a[tag=dg.player] [{text:"[Raid] ",color:"dark_red"},{text:"The party chose to turn back.","color":"gray"}]
execute if score #rd_vote_context ec.var matches 1 as @a[tag=dg.player] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.5 1.2
execute if score #rd_vote_context ec.var matches 1 run function evercraft:dungeon/reward
execute if score #rd_vote_context ec.var matches 1 run function evercraft:dungeon/cleanup
execute if score #rd_vote_context ec.var matches 1 run return 0

# === FLOOR VOTE (context 2): continue to next floor or evacuate ===
execute if score #rd_vote_context ec.var matches 2 if score #rd_votes_yes ec.var >= #rd_votes_no ec.var run function evercraft:raids/floor/advance
execute if score #rd_vote_context ec.var matches 2 if score #rd_votes_yes ec.var >= #rd_votes_no ec.var run return 0
# Evacuate with partial win
execute if score #rd_vote_context ec.var matches 2 run tellraw @a[tag=rd.player] [{text:"[Raid] ",color:"dark_red"},{text:"The party chose to evacuate.","color":"gray"}]
execute if score #rd_vote_context ec.var matches 2 run function evercraft:raids/exit_win
execute if score #rd_vote_context ec.var matches 2 run return 0

# === BOSS VOTE (context 3): face the boss or retreat ===
execute if score #rd_vote_context ec.var matches 3 if score #rd_votes_yes ec.var >= #rd_votes_no ec.var run function evercraft:raids/boss/spawn
execute if score #rd_vote_context ec.var matches 3 if score #rd_votes_yes ec.var >= #rd_votes_no ec.var run return 0
# Retreat with partial win
execute if score #rd_vote_context ec.var matches 3 run tellraw @a[tag=rd.player] [{text:"[Raid] ",color:"dark_red"},{text:"The party chose to retreat.","color":"gray"}]
execute if score #rd_vote_context ec.var matches 3 run function evercraft:raids/exit_win
