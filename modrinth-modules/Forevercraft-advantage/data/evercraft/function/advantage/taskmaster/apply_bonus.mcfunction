# Taskmaster — Apply bonus XP and rep to quest completion
# Caller must set #base_quest_xp and #base_quest_rep in adv.temp before calling
# Run as the player who completed the quest

# Calculate bonus percentage: level * 4
scoreboard players operation #bonus_pct adv.temp = @s adv.taskmaster
scoreboard players operation #bonus_pct adv.temp *= #4 adv.temp

# Prestige P1: Quest Mastery — flat +25% on top of level bonus
execute if score @s adv.pa_task1 matches 1 run scoreboard players add #bonus_pct adv.temp 25

# XP bonus: base_xp * bonus_pct / 100
scoreboard players operation #xp_bonus adv.temp = #base_quest_xp adv.temp
scoreboard players operation #xp_bonus adv.temp *= #bonus_pct adv.temp
scoreboard players operation #xp_bonus adv.temp /= #100 adv.temp

# Grant bonus XP via macro (vanilla XP points)
execute store result storage evercraft:advantage bonus_xp int 1 run scoreboard players get #xp_bonus adv.temp
function evercraft:advantage/taskmaster/grant_xp with storage evercraft:advantage

# Rep bonus: base_rep * bonus_pct / 100
scoreboard players operation #rep_bonus adv.temp = #base_quest_rep adv.temp
scoreboard players operation #rep_bonus adv.temp *= #bonus_pct adv.temp
scoreboard players operation #rep_bonus adv.temp /= #100 adv.temp
scoreboard players operation @s ec.village_rep += #rep_bonus adv.temp

# Save updated rep
function evercraft:quests/reputation/save_village_rep

# Tell player
tellraw @s [{text:"  [Taskmaster] ",color:"dark_purple"},{text:"+",color:"green"},{score:{name:"#xp_bonus",objective:"adv.temp"},color:"green"},{text:" bonus XP, ",color:"green"},{text:"+",color:"aqua"},{score:{name:"#rep_bonus",objective:"adv.temp"},color:"aqua"},{text:" bonus rep",color:"aqua"}]

# Prestige P3: Veteran's Instinct — Haste II + Speed I for 60s on quest complete
execute if score @s adv.pa_task3 matches 1 run effect give @s minecraft:haste 60 1 false
execute if score @s adv.pa_task3 matches 1 run effect give @s minecraft:speed 60 0 false
execute if score @s adv.pa_task3 matches 1 run tellraw @s [{text:"  [Veteran's Instinct] ",color:"gold"},{text:"Haste II + Speed I for 60s!",color:"yellow"}]
