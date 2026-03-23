# Dungeon Difficulty Menu — Close (Cancel)
# Run as: player with DG.InMenu OR interaction entity

# Return the dungeon key to the player
execute as @a[tag=DG.InMenu,distance=..5,limit=1] run loot give @s loot evercraft:dungeon/key
execute as @a[tag=DG.InMenu,distance=..5,limit=1] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Cancelled. Key returned.",color:"gray"}]

# Remove tag
tag @s remove DG.InMenu
execute as @a[tag=DG.InMenu,distance=..5,limit=1] run tag @s remove DG.InMenu

# Kill menu elements
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=DG.MenuEl,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=DG.MenuEl,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=item_display,tag=DG.MenuEl,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Sound
execute as @a[distance=..5,limit=1] run playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 0.3 0.8
