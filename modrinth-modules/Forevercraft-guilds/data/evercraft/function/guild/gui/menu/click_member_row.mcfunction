# Guild Menu — Handle member row click
# @s = the interaction entity that was clicked

data remove entity @s interaction

# Store clicked member's companion.id for target resolution
scoreboard players operation #gm_target_cid ec.temp = @s companion.id

# Transfer to the player viewing the menu
execute as @p[tag=ec.guild_in_menu,distance=..5] run function evercraft:guild/gui/menu/show_member_detail
