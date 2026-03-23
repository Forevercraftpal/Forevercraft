# Artisan Forge — Begin forging minigame (runs as player)

# Verify recipe matched
execute unless score @s ec.cf_state matches 2 run return run tellraw @s [{text:"No recipe matched!",color:"red"}]

# Set state to minigame
scoreboard players set @s ec.cf_state 3
scoreboard players set @s ec.cf_quality 0
tag @s add CF.Forging

# Kill idle GUI elements (keep background + close)
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=CF.DepMatText,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=CF.DepMatBtn,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=text_display,tag=CF.DepCatText,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=CF.DepCatBtn,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=text_display,tag=CF.ForgeText,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=CF.ForgeBtn,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=text_display,tag=CF.MatLine,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=text_display,tag=CF.CatLine,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Begin Phase 1
function evercraft:craftforever/forging/minigame/begin
