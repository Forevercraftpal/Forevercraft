# Guild Stone — Right-click interaction handler
# @s = interaction entity (ec.guildstone_interact), at stone position
# Find nearest player and open guild GUI panel

# Clear interaction data
data remove entity @s interaction

# Find the clicking player (nearest within 3 blocks, not already in a menu)
execute as @p[distance=..3,tag=!Adv.InMenu,tag=!ec.guild_in_menu] at @s run function evercraft:guild/gui/menu/open
