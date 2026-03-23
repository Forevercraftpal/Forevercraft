# Dreamer's Trial — Toggle Platforms (every 10 seconds)
# Alternates which set of floating platforms is solid/air
# Set A (odd platforms): 1,3,5,7 | Set B (even platforms): 2,4,6,8

# Bail if trial ended
execute unless entity @a[tag=dr.trial_active] run return 0

# Save current state before flipping
scoreboard players operation #dr_temp ec.var = #dr_plat_toggle ec.var

# State 0: Remove Set A, restore Set B
execute if score #dr_temp ec.var matches 0 at @e[type=marker,tag=dr.center,limit=1] run fill ~10 302 ~10 ~12 302 ~12 air
execute if score #dr_temp ec.var matches 0 at @e[type=marker,tag=dr.center,limit=1] run fill ~10 304 ~15 ~12 304 ~17 air
execute if score #dr_temp ec.var matches 0 at @e[type=marker,tag=dr.center,limit=1] run fill ~11 306 ~13 ~13 306 ~15 air
execute if score #dr_temp ec.var matches 0 at @e[type=marker,tag=dr.center,limit=1] run fill ~12 308 ~10 ~14 308 ~12 air
execute if score #dr_temp ec.var matches 0 at @e[type=marker,tag=dr.center,limit=1] run fill ~15 303 ~10 ~17 303 ~12 end_stone_bricks
execute if score #dr_temp ec.var matches 0 at @e[type=marker,tag=dr.center,limit=1] run fill ~16 305 ~14 ~18 305 ~16 amethyst_block
execute if score #dr_temp ec.var matches 0 at @e[type=marker,tag=dr.center,limit=1] run fill ~15 307 ~16 ~17 307 ~18 purpur_block
execute if score #dr_temp ec.var matches 0 at @e[type=marker,tag=dr.center,limit=1] run fill ~16 309 ~12 ~18 309 ~14 end_stone_bricks

# State 1: Restore Set A, remove Set B
execute if score #dr_temp ec.var matches 1 at @e[type=marker,tag=dr.center,limit=1] run fill ~10 302 ~10 ~12 302 ~12 amethyst_block
execute if score #dr_temp ec.var matches 1 at @e[type=marker,tag=dr.center,limit=1] run fill ~10 304 ~15 ~12 304 ~17 purpur_block
execute if score #dr_temp ec.var matches 1 at @e[type=marker,tag=dr.center,limit=1] run fill ~11 306 ~13 ~13 306 ~15 end_stone_bricks
execute if score #dr_temp ec.var matches 1 at @e[type=marker,tag=dr.center,limit=1] run fill ~12 308 ~10 ~14 308 ~12 amethyst_block
execute if score #dr_temp ec.var matches 1 at @e[type=marker,tag=dr.center,limit=1] run fill ~15 303 ~10 ~17 303 ~12 air
execute if score #dr_temp ec.var matches 1 at @e[type=marker,tag=dr.center,limit=1] run fill ~16 305 ~14 ~18 305 ~16 air
execute if score #dr_temp ec.var matches 1 at @e[type=marker,tag=dr.center,limit=1] run fill ~15 307 ~16 ~17 307 ~18 air
execute if score #dr_temp ec.var matches 1 at @e[type=marker,tag=dr.center,limit=1] run fill ~16 309 ~12 ~18 309 ~14 air

# Flip toggle state (0→1, 1→0)
execute if score #dr_temp ec.var matches 0 run scoreboard players set #dr_plat_toggle ec.var 1
execute if score #dr_temp ec.var matches 1 run scoreboard players set #dr_plat_toggle ec.var 0

# Warning chime for player
execute as @a[tag=dr.trial_active] at @s run playsound block.note_block.chime master @s ~ ~ ~ 0.5 0.5

# Reschedule next toggle
schedule function evercraft:dreaming_realm/challenges/trial/toggle_platforms 10s
