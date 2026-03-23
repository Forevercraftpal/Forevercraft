# ============================================================
# Hearthstone GUI — Comfort [?] clicked
# Run as: the interaction entity
# ============================================================
data remove entity @s interaction

execute as @p[distance=..6,tag=HS.InMenu] run function evercraft:housing/gui/show_comfort_info

playsound minecraft:ui.button.click master @p[distance=..6] ~ ~ ~ 0.3 1.0
