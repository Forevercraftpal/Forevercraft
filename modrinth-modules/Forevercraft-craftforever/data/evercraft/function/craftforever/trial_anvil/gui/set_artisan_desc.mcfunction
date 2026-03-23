# Trial Anvil — Set artisan tier descriptions based on ec.tt_tier

execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Shear 10 sheep (collect wool)","color":"white"}
execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 60 seconds","color":"dark_gray"}
execute if score @s ec.tt_tier matches 1 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"50 Artisan XP + Wool","color":"yellow"}]

execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Collect 20 wool from sheep","color":"white"}
execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds | Wool Colors","color":"dark_gray"}
execute if score @s ec.tt_tier matches 2 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"100 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Mine 16 cobwebs from the arena","color":"white"}
execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 90 seconds | Web Harvest","color":"dark_gray"}
execute if score @s ec.tt_tier matches 3 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"150 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Collect 32 flowers","color":"white"}
execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 75 seconds | Flower Garden","color":"dark_gray"}
execute if score @s ec.tt_tier matches 4 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"250 Artisan XP + Crude Materials","color":"yellow"}]

execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Collect 40 wool from mixed mobs","color":"white"}
execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Mixed Shearing","color":"dark_gray"}
execute if score @s ec.tt_tier matches 5 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"400 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Collect 48 wool and string","color":"white"}
execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Mob Textures","color":"dark_gray"}
execute if score @s ec.tt_tier matches 6 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"600 Artisan XP + Quality Materials","color":"yellow"}]

execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Collect 64 crafting materials","color":"white"}
execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Reverse Craft","color":"dark_gray"}
execute if score @s ec.tt_tier matches 7 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"800 Artisan XP + Masterwork Material","color":"yellow"}]

execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Collect 80 materials from all sources","color":"white"}
execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 120 seconds | Decoration Master","color":"dark_gray"}
execute if score @s ec.tt_tier matches 8 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"1000 Artisan XP","color":"yellow"}]

execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value {"text":"Collect 128 materials total","color":"white"}
execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Time: 150 seconds | Full Catalog","color":"dark_gray"}
execute if score @s ec.tt_tier matches 9 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"1500 Artisan XP + Legendary Material","color":"yellow"}]

execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierDesc,distance=..7,limit=1] run data modify entity @s text set value [{"text":"MASTER'S WORKSHOP","color":"light_purple","bold":true},{"text":" — Master Trial","color":"dark_gray"}]
execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierDetails,distance=..7,limit=1] run data modify entity @s text set value {"text":"Collect 500 materials in the workshop | 5 min","color":"dark_gray"}
execute if score @s ec.tt_tier matches 10 as @e[type=text_display,tag=TT.TierReward,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Reward: ","color":"gray"},{"text":"5% ","color":"light_purple"},{"text":"Silkgrasp","color":"light_purple","bold":true},{"text":" + Trophy + Title","color":"yellow"}]
