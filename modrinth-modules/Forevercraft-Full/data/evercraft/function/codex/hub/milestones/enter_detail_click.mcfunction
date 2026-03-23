# Milestones — Enter Detail Click Bridge (Macro)
# Run as interaction entity — bridges to player context with facing
data remove entity @s interaction
$execute as @p[tag=Adv.InMenu,distance=..5] at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/milestones/enter_detail {page:$(page)}
