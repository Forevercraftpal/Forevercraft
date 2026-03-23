# H2H Competition — End (timer expired, compare scores)

# Find winner: compare scores of both participants
# Tag the participant with the higher score
scoreboard players set #h2h_high ec.temp 0
execute as @a[tag=h2h.participant] if score @s ec.h2h_score > #h2h_high ec.temp run scoreboard players operation #h2h_high ec.temp = @s ec.h2h_score

# Check for tie
scoreboard players set #h2h_tied ec.temp 0
execute as @a[tag=h2h.participant] if score @s ec.h2h_score = #h2h_high ec.temp run scoreboard players add #h2h_tied ec.temp 1

# Tie (both have same score or both have 0)
execute if score #h2h_tied ec.temp matches 2.. run tellraw @a[tag=h2h.participant] [{text:"[Forevercraft] ",color:"gold"},{text:"It's a tie! ",color:"yellow",bold:true},{text:"Both scored ",color:"gray"},{score:{name:"#h2h_high",objective:"ec.temp"},color:"white",bold:true},{text:" points.",color:"gray"}]
execute if score #h2h_tied ec.temp matches 2.. run title @a[tag=h2h.participant] times 5 30 10
execute if score #h2h_tied ec.temp matches 2.. run title @a[tag=h2h.participant] title {text:"TIE!",color:"yellow",bold:true}
execute if score #h2h_tied ec.temp matches 2.. run function evercraft:competition/h2h/cleanup
execute if score #h2h_tied ec.temp matches 2.. run return 0

# Winner found — tag them
execute as @a[tag=h2h.participant] if score @s ec.h2h_score = #h2h_high ec.temp run tag @s add h2h.winner
execute as @a[tag=h2h.participant,tag=!h2h.winner] run tag @s add h2h.loser

# Announce
tellraw @a [{text:"[Forevercraft] ",color:"gold"},{selector:"@a[tag=h2h.winner]",color:"green",bold:true},{text:" wins the head-to-head! ",color:"yellow"},{score:{name:"@a[tag=h2h.winner]",objective:"ec.h2h_score"},color:"white",bold:true},{text:" - ",color:"gray"},{score:{name:"@a[tag=h2h.loser]",objective:"ec.h2h_score"},color:"white"},{text:"!",color:"yellow"}]

# Winner reward: coins + XP
execute as @a[tag=h2h.winner] run scoreboard players add @s ec.coins 15
execute as @a[tag=h2h.winner] at @s run experience add @s 50
execute as @a[tag=h2h.winner] run title @s times 5 30 10
execute as @a[tag=h2h.winner] run title @s title {text:"VICTORY!",color:"gold",bold:true}
execute as @a[tag=h2h.winner] run title @s subtitle {text:"+15 Victorian, +50 XP",color:"yellow"}

# Loser gets participation XP
execute as @a[tag=h2h.loser] at @s run experience add @s 20
execute as @a[tag=h2h.loser] run title @s times 5 30 10
execute as @a[tag=h2h.loser] run title @s title {text:"DEFEATED",color:"red",bold:true}
execute as @a[tag=h2h.loser] run title @s subtitle {text:"Better luck next time!",color:"gray"}

# Sound
execute as @a[tag=h2h.participant] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.2

# Realm News
scoreboard players add #news_competitions ec.var 1

# Cleanup
function evercraft:competition/h2h/cleanup
