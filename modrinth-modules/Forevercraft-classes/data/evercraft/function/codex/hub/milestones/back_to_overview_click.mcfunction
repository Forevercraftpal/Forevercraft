# Milestones — Back to Overview Click
# Run as interaction entity, context = player nearby

# Clear interaction
data remove entity @s interaction

# Run as nearest menu player
execute as @p[tag=Adv.InMenu,distance=..5] at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/milestones/back_to_overview
