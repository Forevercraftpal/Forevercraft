# Quest System — Per-player tick (runs as @s = player, at @s)
# OPT: Consolidates 4 @a scans into 1 function call

# Track active quest progress (every 2s — halves clear @s inventory scans)
# OPT: #q_alt toggles 0/1 each second in quests/tick; track_progress only runs on 0
execute if score #q_alt ec.var matches 0 run function evercraft:quests/active/track_progress

# Party quest sharing: nearby party members share kill quest progress
function evercraft:party/quest/broadcast

# Apply reputation benefits
function evercraft:quests/reputation/apply_benefits

# Update current village for each player
# OPT: Only check when player has moved — village markers don't move (skips entity scan when stationary)
execute if score @s ec.moving matches 1.. run function evercraft:quests/reputation/check_village

# Decrement cancel cooldowns (1s tick = 20 game ticks, clamp to 0)
execute if score @s ec.qc_cd_1 matches 1.. run scoreboard players remove @s ec.qc_cd_1 20
execute if score @s ec.qc_cd_1 matches ..-1 run scoreboard players set @s ec.qc_cd_1 0
execute if score @s ec.qc_cd_2 matches 1.. run scoreboard players remove @s ec.qc_cd_2 20
execute if score @s ec.qc_cd_2 matches ..-1 run scoreboard players set @s ec.qc_cd_2 0
execute if score @s ec.qc_cd_3 matches 1.. run scoreboard players remove @s ec.qc_cd_3 20
execute if score @s ec.qc_cd_3 matches ..-1 run scoreboard players set @s ec.qc_cd_3 0
execute if score @s ec.qc_cd_4 matches 1.. run scoreboard players remove @s ec.qc_cd_4 20
execute if score @s ec.qc_cd_4 matches ..-1 run scoreboard players set @s ec.qc_cd_4 0
execute if score @s ec.qc_cd_5 matches 1.. run scoreboard players remove @s ec.qc_cd_5 20
execute if score @s ec.qc_cd_5 matches ..-1 run scoreboard players set @s ec.qc_cd_5 0
execute if score @s ec.qc_cd_6 matches 1.. run scoreboard players remove @s ec.qc_cd_6 20
execute if score @s ec.qc_cd_6 matches ..-1 run scoreboard players set @s ec.qc_cd_6 0
