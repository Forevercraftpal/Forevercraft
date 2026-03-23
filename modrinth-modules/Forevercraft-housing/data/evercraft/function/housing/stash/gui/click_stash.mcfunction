# ============================================================
# Hearthstone GUI — Quick Stash button clicked
# Run as: the interaction entity, at its position
# ============================================================

# Clear interaction data so it can fire again
data remove entity @s interaction

# Run stash as the nearest player with menu open, close menu after
execute as @p[tag=HS.InMenu,distance=..5] at @s run function evercraft:housing/stash/do_stash
execute as @p[tag=HS.InMenu,distance=..5] run function evercraft:housing/gui/close
