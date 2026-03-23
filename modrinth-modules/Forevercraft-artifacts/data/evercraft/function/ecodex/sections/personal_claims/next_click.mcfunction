# Nav Click Bridge — Next Page
# Run as: interaction entity
data remove entity @s interaction
execute as @p[tag=Adv.InMenu,distance=..15] at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..15,limit=1,sort=nearest] feet run function evercraft:ecodex/sections/personal_claims/next_page
