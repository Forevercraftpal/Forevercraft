# Codex Friends — Click on a friend entry
# @s = interaction entity with ec.fr_target score = friend's uuid3

data remove entity @s interaction

# Copy the friend's uuid3 from the interaction entity to temp
scoreboard players operation #fr_clicked_uuid3 ec.temp = @s ec.fr_target

# Find the owning player and open friend detail view
# Must set position at player facing the menu anchor so ^ coordinates are correct
execute as @p[tag=Adv.InMenu,distance=..5] if score @s adv.gui_section matches 12 at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/friends/open_detail
