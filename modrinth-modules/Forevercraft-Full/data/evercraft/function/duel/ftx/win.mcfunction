# First-to-X — Win (runs as the winner)
# Tag roles
tag @s add duel.winner
execute as @a[tag=ec.duel_active_tag,tag=!duel.winner] run tag @s add duel.loser

# Winner rewards (same as regular duel)
function evercraft:duel/end/winner

# Loser penalties
execute as @a[tag=duel.loser] run effect give @s minecraft:darkness 7 0 false
execute as @a[tag=duel.loser] run effect give @s minecraft:nausea 7 0 false
execute as @a[tag=duel.loser] run effect give @s minecraft:mining_fatigue 3600 0 false
execute as @a[tag=duel.loser] run effect give @s minecraft:weakness 3600 0 false
execute as @a[tag=duel.loser] run scoreboard players add @s ec.duel_today 1
execute as @a[tag=duel.loser] run title @s times 5 40 15
execute as @a[tag=duel.loser] run title @s title {text:"DEFEATED",color:"red",bold:true}
execute as @a[tag=duel.loser] run title @s subtitle {text:"Better luck next time!",color:"gray"}

# Announce final score
tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"First-to-X Duel over! ",color:"yellow"},{selector:"@s",color:"green",bold:true},{text:" wins ",color:"yellow"},{score:{name:"@s",objective:"ec.duel_kills"},color:"white",bold:true},{text:" - ",color:"gray"},{score:{name:"@a[tag=duel.loser]",objective:"ec.duel_kills"},color:"white"},{text:"!",color:"yellow"}]

# Realm News
scoreboard players add #news_duels ec.var 1

# Milestone
function evercraft:milestones/increment/duel_complete

# Cleanup
function evercraft:duel/ftx/cleanup
