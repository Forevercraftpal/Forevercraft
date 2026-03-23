# Trial Anvil — Set lumber tier descriptions based on ec.tt_tier

execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Chop 32 logs","color":"white"}
execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 60 seconds","color":"dark_gray"}
execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"50 Artisan XP + Saplings","color":"yellow"}]

execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Chop 48 logs","color":"white"}
execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 75 seconds","color":"dark_gray"}
execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"100 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Chop 3 different wood types","color":"white"}
execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds | Variety Chop","color":"dark_gray"}
execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"150 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Chop 64 logs total","color":"white"}
execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds | Plank Production","color":"dark_gray"}
execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"250 Artisan XP + Crude Materials","color":"yellow"}]

execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Chop one of each log type","color":"white"}
execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Full Lumber","color":"dark_gray"}
execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"400 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Chop 128 logs total","color":"white"}
execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 75 seconds | Speed Chop","color":"dark_gray"}
execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"600 Artisan XP + Quality Materials","color":"yellow"}]

execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Chop 64 logs and replant saplings","color":"white"}
execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Replant Cycle","color":"dark_gray"}
execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"800 Artisan XP + Masterwork Material","color":"yellow"}]

execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Chop 96 jungle logs","color":"white"}
execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Tall Timber","color":"dark_gray"}
execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"1000 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Chop 192 logs of any type","color":"white"}
execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 150 seconds | Master Lumberjack","color":"dark_gray"}
execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"1500 Artisan XP + Legendary Material","color":"yellow"}]

execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value [{"text":"THE LIVING FOREST","color":"dark_green","bold":true},{"text":" — Master Trial","color":"dark_gray"}]
execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Harvest 500 logs from ancient trees | 5 min","color":"dark_gray"}
execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"5% ","color":"light_purple"},{"text":"Heartwood","color":"dark_green","bold":true},{"text":" + Trophy + Title","color":"yellow"}]
