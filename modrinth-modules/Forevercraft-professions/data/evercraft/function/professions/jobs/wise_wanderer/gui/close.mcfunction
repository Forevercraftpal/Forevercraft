# Wise Wanderer — Close Floating GUI
# Kill all WW.MenuElement entities and remove player tag
# Runs as the player (from tick distance check) — @s is always the player

# Kill all GUI entities near the anchor (if anchor still exists)
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[tag=WW.MenuElement,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Remove player tag — @s is the player from tick context
tag @s remove WW.InMenu

# Sound
playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 0.5 0.8
