# Trial Anvil — Set mining tier descriptions based on ec.tt_tier
# Updates TT.TierDesc, TT.TierDetails, and TT.TierReward text_display entities

# T1: Mine stone
execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Mine 64 stone blocks","color":"white"}
execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 60 seconds","color":"dark_gray"}
execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"50 Artisan XP + 16 Iron","color":"yellow"}]

# T2: Mine iron ore
execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Mine 32 iron ore","color":"white"}
execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 75 seconds","color":"dark_gray"}
execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"100 Artisan XP + 8 Gold","color":"yellow"}]

# T3: Mine gold ore
execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Mine 16 gold ore","color":"white"}
execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 60 seconds","color":"dark_gray"}
execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"150 Artisan XP + 4 Diamond","color":"yellow"}]

# T4: Mine varied ores
execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Mine 10 each of 4 ore types","color":"white"}
execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds","color":"dark_gray"}
execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"250 Artisan XP + Crude Materials","color":"yellow"}]

# T5: Mine diamond ore
execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Mine 16 diamond ore","color":"white"}
execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds","color":"dark_gray"}
execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"400 Artisan XP + Refined Materials","color":"yellow"}]

# T6: Speed mine
execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Mine 256 blocks total","color":"white"}
execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 60 seconds | Speed Mining","color":"dark_gray"}
execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"600 Artisan XP + Quality Materials","color":"yellow"}]

# T7: Deep dive
execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Find and mine 8 hidden ore pockets","color":"white"}
execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Deep Dive","color":"dark_gray"}
execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"800 Artisan XP + Masterwork Material","color":"yellow"}]

# T8: Precision mine
execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Mine ONLY gold ore — leave all else","color":"white"}
execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds | Precision","color":"dark_gray"}
execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"1000 Artisan XP + Node Map Fragment","color":"yellow"}]

# T9: Master miner
execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Mine one of each overworld ore","color":"white"}
execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Master Miner","color":"dark_gray"}
execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"1500 Artisan XP + Legendary Material","color":"yellow"}]

# T10: The Deep Vein (master trial)
execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value [{"text":"THE DEEP VEIN","color":"gold","bold":true},{"text":" — Master Trial","color":"dark_gray"}]
execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Score 500 ore value in collapsing cave | 5 min","color":"dark_gray"}
execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"5% ","color":"light_purple"},{"text":"Earthsong","color":"gold","bold":true},{"text":" + Trophy + Title","color":"yellow"}]
