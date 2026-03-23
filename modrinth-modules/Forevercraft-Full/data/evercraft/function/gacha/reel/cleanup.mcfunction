# Clean up reel animation entities and restore fountain menu
# Runs as @s = player, at @s

# Kill all reel entities nearby
kill @e[tag=ec.ReelElement,distance=..20]

# Reset reel scores
scoreboard players reset @s ec.reel_tick
scoreboard players reset @s ec.reel_tier
scoreboard players reset @s ec.reel_count
scoreboard players reset @s ec.reel_pull

# Re-open the fountain menu (player still has ec.InFountain tag)
# Remove the tag first so open.mcfunction doesn't toggle-close
tag @s remove ec.InFountain

# Re-enable fountain interaction
execute as @e[type=interaction,tag=ec.fountain_click,distance=..20] run data modify entity @s height set value 1.5f

# Restore fountain label
execute as @e[type=text_display,tag=ec.fountain_label,distance=..20] run data modify entity @s text set value {text:"\u2726 Fountain of Eternal Dreams \u2726",color:"#E0B0FF",bold:true}

# Reopen the menu
execute at @s run function evercraft:gacha/fountain/menu/open
