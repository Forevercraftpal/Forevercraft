# Trade Trial — Daily Challenge Completed!
# Run as/at: the player who matched the daily challenge

scoreboard players set @s ec.tt_daily_done 1

tellraw @s [{"text":"\n"},{"text":"  \u2726 ","color":"gold"},{"text":"DAILY CHALLENGE COMPLETE!","color":"yellow","bold":true},{"text":"\n"}]

# Bonus rewards: 5 crate coins + bonus XP
scoreboard players add @s ic.coins 5
tellraw @s [{"text":"  \u2726 ","color":"gold"},{"text":"+5 Bonus Crate Coins","color":"yellow"},{"text":" (Daily Reward)","color":"gray"}]

scoreboard players add @s ec.cf_xp 500
tellraw @s [{"text":"  \u2726 ","color":"gold"},{"text":"+500 Bonus Artisan XP","color":"green"},{"text":" (Daily Reward)","color":"gray"}]

# Bonus artifact
loot give @s loot evercraft:artifacts/ornate/main
tellraw @s [{"text":"  \u2605 ","color":"dark_purple"},{"text":"Ornate Artifact","color":"dark_purple","bold":true},{"text":" \u2014 Daily Challenge Bonus!","color":"gray"}]

playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.2
particle minecraft:firework ~ ~1 ~ 1 1 1 0.5 50
