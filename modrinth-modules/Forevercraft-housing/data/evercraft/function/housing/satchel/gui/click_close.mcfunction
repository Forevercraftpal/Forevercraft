# ============================================================
# House Key GUI — Close button clicked
# Run as: the interaction entity, at its position
# ============================================================
data remove entity @s interaction
execute as @p[tag=HS.InSatchel,distance=..5] run function evercraft:housing/satchel/gui/close
