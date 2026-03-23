# Competition — End & Leaderboard

# === Find Top 3 ===

# Step 1: Find highest score
scoreboard players set #comp_1st ec.temp 0
execute as @a[scores={ec.comp_score=1..}] run execute if score @s ec.comp_score > #comp_1st ec.temp run scoreboard players operation #comp_1st ec.temp = @s ec.comp_score

# No participants — skip leaderboard
execute if score #comp_1st ec.temp matches 0 run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Competition ended — no participants scored!",color:"gray",italic:true}]
execute if score #comp_1st ec.temp matches 0 run function evercraft:competition/cleanup
execute if score #comp_1st ec.temp matches 0 run return 0

# Mark 1st place player(s)
execute as @a if score @s ec.comp_score = #comp_1st ec.temp if score #comp_1st ec.temp matches 1.. run scoreboard players set @s ec.comp_place 1

# Step 2: Find second highest (excluding 1st)
scoreboard players set #comp_2nd ec.temp 0
execute as @a[scores={ec.comp_place=0,ec.comp_score=1..}] run execute if score @s ec.comp_score > #comp_2nd ec.temp run scoreboard players operation #comp_2nd ec.temp = @s ec.comp_score
execute as @a[scores={ec.comp_place=0}] if score @s ec.comp_score = #comp_2nd ec.temp if score #comp_2nd ec.temp matches 1.. run scoreboard players set @s ec.comp_place 2

# Step 3: Find third highest
scoreboard players set #comp_3rd ec.temp 0
execute as @a[scores={ec.comp_place=0,ec.comp_score=1..}] run execute if score @s ec.comp_score > #comp_3rd ec.temp run scoreboard players operation #comp_3rd ec.temp = @s ec.comp_score
execute as @a[scores={ec.comp_place=0}] if score @s ec.comp_score = #comp_3rd ec.temp if score #comp_3rd ec.temp matches 1.. run scoreboard players set @s ec.comp_place 3

# === Announce Results ===
tellraw @a [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]
tellraw @a [{text:"  COMPETITION RESULTS",color:"gold",bold:true}]
tellraw @a [{text:""}]
execute as @a[scores={ec.comp_place=1}] run tellraw @a [{text:"  1st: ",color:"gold"},{selector:"@s",color:"gold",bold:true},{text:" — ",color:"gray"},{score:{name:"@s",objective:"ec.comp_score"},color:"yellow"},{text:" pts",color:"yellow"}]
execute as @a[scores={ec.comp_place=2}] run tellraw @a [{text:"  2nd: ",color:"white"},{selector:"@s",color:"white"},{text:" — ",color:"gray"},{score:{name:"@s",objective:"ec.comp_score"},color:"yellow"},{text:" pts",color:"yellow"}]
execute as @a[scores={ec.comp_place=3}] run tellraw @a [{text:"  3rd: ",color:"#CD7F32"},{selector:"@s",color:"#CD7F32"},{text:" — ",color:"gray"},{score:{name:"@s",objective:"ec.comp_score"},color:"yellow"},{text:" pts",color:"yellow"}]
tellraw @a [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]

# === Distribute Rewards ===
execute as @a[scores={ec.comp_place=1}] at @s run function evercraft:competition/reward/first
execute as @a[scores={ec.comp_place=2}] at @s run function evercraft:competition/reward/second
execute as @a[scores={ec.comp_place=3}] at @s run function evercraft:competition/reward/third
execute as @a[scores={ec.comp_today=1,ec.comp_place=0}] at @s run function evercraft:competition/reward/participant

# === Update Lifetime Stats ===
execute as @a[scores={ec.comp_place=1}] run scoreboard players add @s ec.comp_wins 1
execute as @a[scores={ec.comp_place=1..3}] run scoreboard players add @s ec.comp_top3 1

# Sound
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.2

# Title
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle {text:"Competition Ended!",color:"gold"}

# === Cleanup ===
function evercraft:competition/cleanup
