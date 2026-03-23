# Guild Menu — Back from member detail to roster
# @s = the interaction entity that was clicked

data remove entity @s interaction

# Return to roster view
execute as @p[tag=ec.guild_in_menu,distance=..5] run tag @s remove ec.gm_detail_view
execute as @p[tag=ec.guild_in_menu,distance=..5] run function evercraft:guild/gui/menu/refresh_members
