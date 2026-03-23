# The Venomweaver — Colored Vine Puzzle Tick
# 3 colored vine pillars: red (1), blue (2), green (3)
# Boss glows a color every 200 ticks — must hit matching vine within 100 ticks

# Vine pillar particles (always visible)
execute as @e[tag=ec.rd_vw_perch1] at @s run particle minecraft:dust{color:[1.0,0.2,0.2],scale:1.0} ~ ~-1 ~ 0.3 0.5 0.3 0 3
execute as @e[tag=ec.rd_vw_perch2] at @s run particle minecraft:dust{color:[0.2,0.4,1.0],scale:1.0} ~ ~-1 ~ 0.3 0.5 0.3 0 3
execute as @e[tag=ec.rd_vw_perch3] at @s run particle minecraft:dust{color:[0.2,1.0,0.2],scale:1.0} ~ ~-1 ~ 0.3 0.5 0.3 0 3

# ── Color Glow Cycle (every 200 ticks) ──
execute if score #rd_vw_color_cd ec.var matches 0 run function evercraft:raids/boss/venomweaver/puzzle/vine_glow
execute if score #rd_vw_color_cd ec.var matches 0 run scoreboard players set #rd_vw_color_cd ec.var 200

# ── Check for vine clicks during active window (color_cd between 100-200 = window active) ──
# Window = first 100 ticks after glow (color_cd counts down from 200, so window is 200→101)
execute if score #rd_vw_color_cd ec.var matches 101..199 if score #rd_vw_glow_color ec.var matches 1.. run function evercraft:raids/boss/venomweaver/puzzle/vine_check

# ── Window expired without correct hit ──
execute if score #rd_vw_color_cd ec.var matches 100 if score #rd_vw_glow_color ec.var matches 1.. run function evercraft:raids/boss/venomweaver/puzzle/vine_miss
