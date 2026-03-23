# Adaptive periodic challenge progress reminder
# Called every 1s for players with adv.chal_id=1..
# Computes progress, adapts reminder interval based on activity

# Increment reminder timer (counts seconds)
scoreboard players add @s adv.chal_remind 1

# Compute current progress into #progress and #goal
function evercraft:advantage/challenges/show_progress_calc

# Check if progress changed since last snapshot
scoreboard players operation #remind_check adv.temp = #progress adv.temp
scoreboard players operation #remind_check adv.temp -= @s adv.chal_lprog

# Determine interval: progress changed = 60s (active), no change = 600s (inactive)
scoreboard players set #remind_interval adv.temp 600
execute unless score #remind_check adv.temp matches 0 run scoreboard players set #remind_interval adv.temp 60

# Check if timer >= interval
scoreboard players operation #remind_ready adv.temp = @s adv.chal_remind
scoreboard players operation #remind_ready adv.temp -= #remind_interval adv.temp

# If ready (>= 0), show reminder and reset
execute if score #remind_ready adv.temp matches 0.. run tellraw @s [{text:"✦ ",color:"gold"},{text:"Challenge: ",color:"dark_purple"},{score:{name:"#progress",objective:"adv.temp"},color:"gold"},{text:"/",color:"gray"},{score:{name:"#goal",objective:"adv.temp"},color:"gold"},{text:" — ",color:"gray"},{text:"[View]",color:"aqua",click_event:{action:"run_command",command:"/trigger adv.challenge set 0"}},{text:" ",color:"gray"},{text:"[Cancel]",color:"red",click_event:{action:"run_command",command:"/trigger adv.challenge set -1"}}]
execute if score #remind_ready adv.temp matches 0.. run scoreboard players set @s adv.chal_remind 0
execute if score #remind_ready adv.temp matches 0.. run scoreboard players operation @s adv.chal_lprog = #progress adv.temp
