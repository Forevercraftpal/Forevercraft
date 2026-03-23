# Wise Wanderer — Check Buy Clicks
# Poll each buy interaction entity + close button for click data

# Guard: if menu was closed (e.g. distance check), skip everything
execute unless entity @s[tag=WW.InMenu] run return 0

scoreboard players operation #gui_check ec.temp = @s adv.gui_session

# Common Crate (15 levels)
execute as @e[type=minecraft:interaction,tag=WW.BuyCommon,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:professions/jobs/wise_wanderer/gui/buy/common
execute as @e[type=minecraft:interaction,tag=WW.BuyCommon,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data remove entity @s interaction

# Uncommon Crate (30 levels)
execute as @e[type=minecraft:interaction,tag=WW.BuyUncommon,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:professions/jobs/wise_wanderer/gui/buy/uncommon
execute as @e[type=minecraft:interaction,tag=WW.BuyUncommon,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data remove entity @s interaction

# Rare Crate (50 levels)
execute as @e[type=minecraft:interaction,tag=WW.BuyRare,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:professions/jobs/wise_wanderer/gui/buy/rare
execute as @e[type=minecraft:interaction,tag=WW.BuyRare,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data remove entity @s interaction

# Ornate Crate (75 levels)
execute as @e[type=minecraft:interaction,tag=WW.BuyOrnate,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:professions/jobs/wise_wanderer/gui/buy/ornate
execute as @e[type=minecraft:interaction,tag=WW.BuyOrnate,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data remove entity @s interaction

# Exquisite Crate (125 levels)
execute as @e[type=minecraft:interaction,tag=WW.BuyExquisite,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:professions/jobs/wise_wanderer/gui/buy/exquisite
execute as @e[type=minecraft:interaction,tag=WW.BuyExquisite,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data remove entity @s interaction

# Mythical Crate (250 levels)
execute as @e[type=minecraft:interaction,tag=WW.BuyMythical,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:professions/jobs/wise_wanderer/gui/buy/mythical
execute as @e[type=minecraft:interaction,tag=WW.BuyMythical,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data remove entity @s interaction

# Close button — check click on interaction entity, but run close as the player (@s)
execute store success score #ww_close adv.temp as @e[type=minecraft:interaction,tag=WW.CloseClick,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction
execute as @e[type=minecraft:interaction,tag=WW.CloseClick,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data remove entity @s interaction
execute if score #ww_close adv.temp matches 1 run function evercraft:professions/jobs/wise_wanderer/gui/close
