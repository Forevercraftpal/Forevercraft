# Artifact Transmutation GUI — Close
# Run as: player

execute unless entity @s[tag=TX.InMenu] run return 0

# Kill all menu elements near the player
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=item_display,tag=TX.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=text_display,tag=TX.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=TX.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Save deposit state to memory (if player has deposits)
execute if score @s tx.count matches 1.. run function evercraft:transmute/memory/get_player_key
execute if score @s tx.count matches 1.. as @e[type=marker,tag=TX.Marker,distance=..5,limit=1] run function evercraft:transmute/memory/get_table_key
execute if score @s tx.count matches 1.. run function evercraft:transmute/memory/save with storage evercraft:transmute temp

# If no deposits, clear any prior save (player withdrew everything)
execute if score @s tx.count matches ..0 run function evercraft:transmute/memory/get_player_key
execute if score @s tx.count matches ..0 as @e[type=marker,tag=TX.Marker,distance=..5,limit=1] run function evercraft:transmute/memory/get_table_key
execute if score @s tx.count matches ..0 run function evercraft:transmute/memory/clear with storage evercraft:transmute temp

# Remove tag
tag @s remove TX.InMenu

# Sound
playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.3 0.8
