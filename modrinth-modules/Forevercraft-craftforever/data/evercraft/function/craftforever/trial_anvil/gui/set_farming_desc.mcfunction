# Trial Anvil — Set farming tier descriptions based on ec.tt_tier

execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Harvest 64 wheat from a field","color":"white"}
execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 60 seconds","color":"dark_gray"}
execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"50 Artisan XP + Seeds","color":"yellow"}]

execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Grow 16 crops to maturity","color":"white"}
execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds | Bone meal provided","color":"dark_gray"}
execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"100 Artisan XP + Bone Meal","color":"yellow"}]

execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Harvest 3 different crop types","color":"white"}
execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds | Mixed Harvest","color":"dark_gray"}
execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"150 Artisan XP + Mixed Seeds","color":"yellow"}]

execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Grow 32 crops with limited bone meal","color":"white"}
execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds | Bone Meal Master","color":"dark_gray"}
execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"250 Artisan XP + Crude Materials","color":"yellow"}]

execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Grow all 6 crop types to maturity","color":"white"}
execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Full Garden","color":"dark_gray"}
execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"400 Artisan XP + Refined Materials","color":"yellow"}]

execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Harvest 128 crop items total","color":"white"}
execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds | Speed Farm","color":"dark_gray"}
execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"600 Artisan XP + Quality Materials","color":"yellow"}]

execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Grow 32 nether wart on soul sand","color":"white"}
execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Nether Farming","color":"dark_gray"}
execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"800 Artisan XP + Masterwork Material","color":"yellow"}]

execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Irrigate dry field and grow 48 crops","color":"white"}
execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Water Management","color":"dark_gray"}
execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"1000 Artisan XP + Node Map Fragment","color":"yellow"}]

execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Harvest 256 crop items total","color":"white"}
execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 180 seconds | Master Farmer","color":"dark_gray"}
execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"1500 Artisan XP + Legendary Material","color":"yellow"}]

execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value [{"text":"ETERNAL GARDEN","color":"green","bold":true},{"text":" — Master Trial","color":"dark_gray"}]
execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Harvest 500 crops in a growing field | 5 min","color":"dark_gray"}
execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"5% ","color":"light_purple"},{"text":"Bloomweaver","color":"green","bold":true},{"text":" + Trophy + Title","color":"yellow"}]
