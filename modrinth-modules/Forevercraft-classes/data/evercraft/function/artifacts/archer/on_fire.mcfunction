# Archer Bow — On Fire (draw stopped, arrow released or cancelled)
# Called from main tick when stale counter >= 3 (player stopped drawing)

# If overcharged, start hit detection window (60 ticks = 3 seconds)
execute if score @s ec.ar_charged matches 1 run scoreboard players set @s ec.ar_hit_timer 60

# If overcharged, tag the nearest fresh arrow as the overcharge projectile
execute if score @s ec.ar_charged matches 1 at @s run tag @e[type=arrow,distance=..5,sort=nearest,limit=1] add ec.ar_oc_arrow

# Reset draw state
scoreboard players set @s ec.ar_draw 0
scoreboard players set @s ec.ar_stale 0
