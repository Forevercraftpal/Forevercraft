# Codex Hub — Help Guide — GUI Clear Confirm
# Run as the player who triggered (at @s via tick)
# Kills ALL floating GUI entities (text_display + interaction) in the area

# Kill ALL text_display entities nearby (except village name signs)
execute at @s run kill @e[type=text_display,tag=!bestiary.village.name,distance=..5]

# Kill ALL interaction entities nearby
execute at @s run kill @e[type=interaction,distance=..5]

# Kill ALL block_display entities nearby (GUI backgrounds)
execute at @s run kill @e[type=block_display,distance=..5]

# Kill ALL item_display entities nearby (GUI icons)
execute at @s run kill @e[type=item_display,distance=..5]

# Kill GUI marker entities (anchors from codex, pet menu, etc.)
execute at @s run kill @e[type=marker,tag=Adv.MenuAnchor,distance=..5]
execute at @s run kill @e[type=marker,tag=companion.menuanchor,distance=..5]

# Reset player GUI state
tag @s remove Adv.InMenu
tag @s remove companion.inmenuv2
scoreboard players set @s adv.gui_cd 0
scoreboard players set @s adv.gui_page 0
scoreboard players set @s adv.gui_section 0

# Confirm
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
tellraw @s [{"text":"\u2699 ","color":"gray"},{"text":"All floating GUIs cleared!","color":"green"}]
