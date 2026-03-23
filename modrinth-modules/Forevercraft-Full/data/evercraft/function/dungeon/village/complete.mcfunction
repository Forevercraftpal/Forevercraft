# Village Defense — Complete!
# All 5 waves of raiders defeated. Grant reputation + Hero of the Village.

# Victory title
title @a[tag=dg.player] times 10 60 20
title @a[tag=dg.player] title {text:"VILLAGE SAVED!",color:"green",bold:true}
title @a[tag=dg.player] subtitle {text:"The raiders have been defeated!",color:"dark_green"}

# Chat announcement
tellraw @a [{text:"[Forevercraft] ",color:"gold"},{selector:"@a[tag=dg.player]"},{text:" has defended the village from raiders!",color:"green",bold:true}]

# Victory sounds
execute as @a[tag=dg.player] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute as @a[tag=dg.player] at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1
execute as @a[tag=dg.player] at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 1

# Victory particles
execute at @e[type=marker,tag=dg.center,limit=1] run particle minecraft:firework ~ ~2 ~ 3 2 3 0.1 200 force
execute at @e[type=marker,tag=dg.center,limit=1] run particle minecraft:happy_villager ~ ~1 ~ 5 2 5 0.1 100 force

# === REPUTATION REWARD ===
# Grant 200 reputation (between Tier 3 Contract +150 and Tier 4 Commission +250)
scoreboard players add @a[tag=dg.player] ec.village_rep 200
function evercraft:quests/reputation/save_village_rep
function evercraft:quests/reputation/check_rank
tellraw @a[tag=dg.player] [{text:"[Forevercraft] ",color:"gold"},{text:"+200 Village Reputation!",color:"gold"}]

# === HERO OF THE VILLAGE (7 minutes = 8400 ticks) ===
effect give @a[tag=dg.player] hero_of_the_village 420 0 false
tellraw @a[tag=dg.player] [{text:"[Forevercraft] ",color:"gold"},{text:"Hero of the Village for 7 minutes!",color:"light_purple"}]

# === LOOT REWARD (DR-scaled like structure dungeons) ===
function evercraft:dungeon/reward

# Set village defense 7-day lockout
execute store result score @a[tag=dg.player] dg.lo_v run time query gametime
scoreboard players set @a[tag=dg.player] dg.lo_any 1

# Leaderboard: compute completion time and check personal best
execute as @a[tag=dg.player] run function evercraft:dungeon/leaderboard/check_time

# Cleanup
function evercraft:dungeon/cleanup
