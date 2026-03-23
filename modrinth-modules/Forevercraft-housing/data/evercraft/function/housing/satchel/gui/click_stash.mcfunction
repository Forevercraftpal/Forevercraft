# ============================================================
# House Key GUI — Quick Stash button clicked
# Run as: the interaction entity, at its position
# ============================================================
data remove entity @s interaction

# Run remote stash as the nearest player with satchel open, close menu after
execute as @p[tag=HS.InSatchel,distance=..5] at @s run function evercraft:housing/stash/do_stash_remote
execute as @p[tag=HS.InSatchel,distance=..5] run function evercraft:housing/satchel/gui/close
