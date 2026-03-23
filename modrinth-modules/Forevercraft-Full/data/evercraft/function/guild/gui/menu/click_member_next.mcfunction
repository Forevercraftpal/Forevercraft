# Guild Menu — Members page next click
# @s = interaction entity

data remove entity @s interaction
execute as @p[tag=ec.guild_in_menu,distance=..5] run function evercraft:guild/gui/menu/do_member_next
