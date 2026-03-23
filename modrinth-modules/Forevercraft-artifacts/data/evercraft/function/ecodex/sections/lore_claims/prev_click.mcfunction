# Nav Click Bridge — Previous Page (Lore)
# Run as: interaction entity
data remove entity @s interaction
execute as @p[tag=Adv.InMenu,distance=..15] at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..15,limit=1,sort=nearest] feet run function evercraft:ecodex/sections/lore_claims/prev_page
