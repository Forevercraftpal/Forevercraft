# Guild Menu — Nav click: Allies
# @s = interaction entity that was clicked
data remove entity @s interaction
execute as @p[tag=ec.guild_in_menu,distance=..5] run function evercraft:guild/gui/menu/switch_allies
