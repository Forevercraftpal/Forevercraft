# Guild Menu — Nav click: Warp
# @s = interaction entity that was clicked
data remove entity @s interaction
execute as @p[tag=ec.guild_in_menu,distance=..5] run function evercraft:guild/gui/menu/switch_warp
