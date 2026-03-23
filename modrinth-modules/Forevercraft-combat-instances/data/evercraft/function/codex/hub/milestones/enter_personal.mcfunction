# Milestones — Enter Personal Milestones
# Run as interaction entity

# Clear interaction
data remove entity @s interaction

# Run as nearest menu player (same pattern as back_to_overview_click)
execute as @p[tag=Adv.InMenu,distance=..5] at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/milestones/open_personal
