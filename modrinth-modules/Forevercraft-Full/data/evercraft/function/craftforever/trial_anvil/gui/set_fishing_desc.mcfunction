# Trial Anvil — Set fishing tier descriptions based on ec.tt_tier

execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Catch 10 fish","color":"white"}
execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds","color":"dark_gray"}
execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"50 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Catch 15 fish of any type","color":"white"}
execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds | Variety","color":"dark_gray"}
execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"100 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Catch 20 fish","color":"white"}
execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Big Game","color":"dark_gray"}
execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"150 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Catch 20 fish rapidly","color":"white"}
execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds | Speed Fisher","color":"dark_gray"}
execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"250 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Catch 25 fish","color":"white"}
execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Full Net","color":"dark_gray"}
execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"400 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Catch 25 fish from deeper water","color":"white"}
execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 180 seconds | Treasure Hunter","color":"dark_gray"}
execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"600 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Catch 15 fish in the dark","color":"white"}
execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Night Fishing","color":"dark_gray"}
execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"800 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Catch 20 fish during a storm","color":"white"}
execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Storm Fishing","color":"dark_gray"}
execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"1000 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Catch 30 fish from the deep","color":"white"}
execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 150 seconds | Deep Sea","color":"dark_gray"}
execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"1500 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value [{"text":"LEVIATHAN'S POOL","color":"aqua","bold":true},{"text":" — Master Trial","color":"dark_gray"}]
execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Catch 20 fish in a shrinking pool | 5 min","color":"dark_gray"}
execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"5% ","color":"light_purple"},{"text":"Tidecaller's Line","color":"aqua","bold":true},{"text":" + Trophy","color":"yellow"}]
