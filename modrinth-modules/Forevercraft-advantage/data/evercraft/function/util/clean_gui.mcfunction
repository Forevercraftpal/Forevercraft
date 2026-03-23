# Utility — Nuclear cleanup of ALL display + interaction entities
# Run as: /function evercraft:util/clean_gui
# WARNING: Kills ALL text_display, interaction, and item_display entities.
# Permanent ones (fountains, guildstones, forage, etc.) will respawn on next tick/load.

kill @e[type=text_display]
kill @e[type=interaction]
kill @e[type=item_display]
kill @e[type=marker,tag=companion.menuanchor]

# Clear all InMenu tags from players
tag @a remove Adv.InMenu
tag @a remove TX.InMenu
tag @a remove RF.InMenu
tag @a remove HS.InMenu
tag @a remove HS.InSatchel
tag @a remove DG.InMenu
tag @a remove CK.InMenu
tag @a remove WW.InMenu
tag @a remove ec.guild_in_menu
tag @a remove companion.inmenuv2

tellraw @s [{text:"[",color:"dark_gray"},{text:"Debug",color:"yellow"},{text:"] ",color:"dark_gray"},{text:"All display & interaction entities nuked.",color:"green"}]
