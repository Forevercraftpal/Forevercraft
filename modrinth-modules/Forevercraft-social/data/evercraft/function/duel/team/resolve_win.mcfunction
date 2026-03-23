$# Team Duel — Resolve Win (winning_team=$(winning_team))
# Tag winners and losers based on team number

$execute as @a[tag=ec.duel_active_tag] if score @s ec.duel_team_num matches $(winning_team) run tag @s add duel.winner
$execute as @a[tag=ec.duel_active_tag] unless score @s ec.duel_team_num matches $(winning_team) run tag @s add duel.loser

# Restore eliminated players from spectator
execute as @a[tag=duel.eliminated] run gamemode survival @s

# Winner rewards (same as regular duel — +5 Victorian each)
execute as @a[tag=duel.winner] run function evercraft:duel/end/winner

# Loser penalties (lighter for team duel — just darkness + nausea)
execute as @a[tag=duel.loser] run effect give @s minecraft:darkness 7 0 false
execute as @a[tag=duel.loser] run effect give @s minecraft:nausea 7 0 false
execute as @a[tag=duel.loser] run title @s times 5 40 15
execute as @a[tag=duel.loser] run title @s title {text:"DEFEATED",color:"red",bold:true}
execute as @a[tag=duel.loser] run title @s subtitle {text:"Your team was eliminated!",color:"gray"}
execute as @a[tag=duel.loser] run scoreboard players add @s ec.duel_today 1

# Realm News
scoreboard players add #news_duels ec.var 1

# Announce (show winner names)
tellraw @a [{"text":"[Forevercraft] ","color":"gold"},{"selector":"@a[tag=duel.winner]","color":"green","bold":true},{"text":" win the team duel!","color":"yellow"}]

# Milestone
function evercraft:milestones/increment/duel_complete

# Cleanup
function evercraft:duel/team/full_cleanup
