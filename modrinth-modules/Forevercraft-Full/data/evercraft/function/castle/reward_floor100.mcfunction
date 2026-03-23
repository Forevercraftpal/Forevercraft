# Infinite Castle — Floor 100 Mega Rewards
# The ultimate achievement. Per-player distribution.

# Massive announcement to entire server
tellraw @a [{text:""},{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"LEGENDARY ACHIEVEMENT ","color":"gold","bold":true},{"text":"\u2726\u2726\u2726","color":"gold"}]
tellraw @a [{text:""},{"text":"  "},{"selector":"@a[tag=ic.player]"},{"text":" has conquered Floor 100 of the Infinite Castle!","color":"red","bold":true}]
tellraw @a [{text:""},{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"ALL HAIL THE LORD ","color":"gold","bold":true},{"text":"\u2726\u2726\u2726","color":"gold"}]

# Per-player rewards
execute as @a[tag=ic.player] at @s run function evercraft:castle/reward_floor100_player
